-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : alexandrgmsperso.mysql.db
-- Généré le :  ven. 10 août 2018 à 10:11
-- Version du serveur :  5.6.39-log
-- Version de PHP :  7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alexandrgmsperso`
--

-- --------------------------------------------------------

--
-- Structure de la table `jf_admins`
--

CREATE TABLE `jf_admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'modo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jf_admins`
--

INSERT INTO `jf_admins` (`id`, `name`, `email`, `password`, `token`, `role`) VALUES
(1, 'Administrateur', 'admin@localhost', '70ccd9007338d6d81dd3b6271621b9cf9a97ea00', 'FantZ2s6G4UXRRX9rvOl', 'admin'),
(4, 'Jean', 'jeanforteroche@alexandre-jacquin.fr', 'c203cb169dda26c525b8da1cf58cb3afab795ad0', 'SRAE2ml4IjZ6cxpZZOOHvL72bz0uoQ', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `jf_comments`
--

CREATE TABLE `jf_comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jf_comments`
--

INSERT INTO `jf_comments` (`id`, `name`, `email`, `comment`, `post_id`, `date`, `seen`) VALUES
(8, 'Alex', 'alex@alex.fr', 'Test commentaire.', 11, '2018-07-31 10:42:16', 1),
(9, 'Téo', 'teo@teo.fr', 'Test commentaire Téo.', 11, '2018-07-31 10:51:56', 1),
(10, 'Léa', 'lea@lea.fr', 'Test commentaire de Léa.', 11, '2018-07-31 10:53:24', 1),
(11, 'Abdel', 'abdeltest@test.com', 'Hey ! Salut Jean, quelle belle aventure !', 10, '2018-07-31 14:40:55', 1);

-- --------------------------------------------------------

--
-- Structure de la table `jf_posts`
--

CREATE TABLE `jf_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jf_posts`
--

INSERT INTO `jf_posts` (`id`, `title`, `content`, `writer`, `image`, `date`, `posted`) VALUES
(10, 'Épisode 02 - Le Froid', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed condimentum, dui sed luctus vulputate, sem purus tincidunt nunc, quis tempus risus quam quis turpis. Vivamus auctor libero risus, eu fringilla est condimentum in. Aenean porttitor a risus id faucibus. Suspendisse porttitor nisl vel justo imperdiet ultricies sed id ante. Duis eu diam at purus scelerisque euismod ut at sem. Morbi nec mauris quis enim scelerisque hendrerit. Cras ullamcorper libero eget orci tincidunt vulputate. Etiam iaculis vulputate faucibus. Phasellus augue nisi, suscipit sit amet mauris sed, laoreet egestas velit. Fusce ex sapien, viverra quis facilisis vel, sollicitudin at odio. Morbi hendrerit vitae ante ac placerat. Nam et purus maximus, scelerisque massa a, hendrerit lectus. Fusce facilisis leo a erat aliquam iaculis. Donec metus nulla, efficitur nec ornare id, placerat eu risus.&lt;br /&gt;&lt;br /&gt;Aliquam tempor ac tortor sit amet tincidunt. Integer vestibulum venenatis fringilla. Ut eget facilisis sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec placerat eleifend suscipit. Nulla dictum euismod leo id auctor. Sed tempus augue id ullamcorper tempor. Curabitur viverra accumsan hendrerit. In at turpis leo. Integer non ipsum tempor, sagittis augue eget, pretium nulla.&lt;br /&gt;&lt;br /&gt;Praesent ultricies a nulla et lobortis. Nunc fringilla massa purus, id malesuada diam euismod posuere. Integer eu laoreet orci, eget hendrerit libero. Sed eget consequat mauris. Praesent elementum velit quis elit feugiat, vel lacinia erat interdum. Curabitur fringilla est a enim aliquet aliquam. Ut efficitur ante eget nisi congue, et ultricies lacus condimentum. Proin lacinia ultrices sapien, vitae congue urna varius a. Sed vel leo suscipit, accumsan eros at, lacinia sem. Sed efficitur condimentum rhoncus.&lt;br /&gt;&lt;br /&gt;Nam turpis risus, gravida lacinia elit ac, viverra lobortis mauris. Vivamus vel elit nec nisi tempus sollicitudin. Phasellus pretium ultrices purus, at imperdiet dui cursus a. Fusce id arcu nec lectus ullamcorper semper id ac tortor. Duis sagittis, nunc vel porttitor luctus, lacus tellus consectetur arcu, eu mollis orci odio sit amet tellus. Nulla et commodo nibh, at sagittis nisi. Proin rhoncus est quis ipsum dapibus, et eleifend purus imperdiet.&lt;br /&gt;&lt;br /&gt;Suspendisse a nisl et risus posuere malesuada id id felis. Morbi semper augue turpis, id tincidunt nibh blandit ut. Sed turpis orci, tempor vel ornare vel, dignissim sit amet sapien. Maecenas imperdiet ex vel risus bibendum blandit. Duis vel diam velit. Phasellus non placerat massa, at interdum purus. Proin consequat sit amet metus et pretium. Sed ut orci diam. Maecenas quis turpis volutpat lacus accumsan condimentum in sit amet purus. Nullam varius condimentum mattis. Suspendisse venenatis eros sem, ac lacinia dolor semper ut. Suspendisse vel ligula quis sapien interdum egestas id eu augue. Donec facilisis finibus dolor id venenatis. Morbi mattis rutrum tortor ac porttitor. Duis id dapibus orci, in iaculis ante.&lt;br /&gt;&lt;br /&gt;In vel fringilla lectus. Vestibulum finibus finibus ligula quis tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla malesuada faucibus nunc. Nulla facilisi. Nulla eu enim a elit venenatis eleifend vel vel augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris egestas efficitur lacus at hendrerit.&lt;br /&gt;&lt;br /&gt;Mauris ac arcu eleifend, cursus erat non, elementum libero. Ut rhoncus aliquam dolor eget auctor. Suspendisse in massa euismod, pretium velit in, finibus mi. Vivamus sed lacus placerat, posuere velit eu, gravida purus. Pellentesque dictum egestas eros, in dictum nulla sollicitudin a. Mauris libero turpis, porta a imperdiet eu, tristique a dui. Vestibulum eleifend sem posuere, elementum dolor sed, ultrices eros. Quisque eu quam accumsan, faucibus ante sit amet, ultrices quam. Pellentesque sed pretium ante, eu dignissim erat. Suspendisse faucibus augue vel urna fermentum, vel scelerisque massa aliquet. In mi augue, aliquam id pharetra vitae, sagittis sit amet nibh. Pellentesque turpis sapien, euismod vel dictum gravida, mollis eu eros. Praesent ante lectus, rutrum a finibus eu, tempus vel justo. Ut vitae mi posuere, facilisis neque eu, pulvinar purus. Vivamus in rutrum est.&lt;br /&gt;&lt;br /&gt;Nunc a vulputate dolor. Duis scelerisque ultrices dui in ullamcorper. Sed tristique erat id interdum pulvinar. Quisque non hendrerit arcu. Fusce tempus tellus urna, ac aliquam tellus vestibulum id. Aenean vel mauris ornare, sagittis eros vel, malesuada purus. Ut id eros dictum, iaculis quam vitae, blandit metus. In et tempor arcu. Aliquam sit amet lectus vitae leo accumsan tincidunt luctus sit amet risus. Vivamus mollis, odio lobortis aliquam tempus, metus risus maximus dolor, ac scelerisque ligula sem at nibh. Nam ut mi quis elit ultrices dapibus. Duis scelerisque vitae ex quis iaculis. Sed ex libero, vulputate et quam ac, efficitur sodales nulla. Praesent laoreet metus id nisi dictum rhoncus. Nulla facilisi.&lt;br /&gt;&lt;br /&gt;Nunc ac dignissim ex, vitae finibus mauris. Sed pellentesque volutpat pulvinar. Curabitur sit amet blandit erat. Suspendisse auctor ante et augue pretium fringilla. Nunc commodo, enim ut lobortis mattis, turpis ligula maximus mauris, at accumsan eros ex id augue. Praesent eu est vitae lectus porttitor lobortis. Suspendisse potenti.&lt;br /&gt;&lt;br /&gt;Vivamus nec egestas diam. Proin vulputate arcu egestas lacus ultricies, vitae sodales nunc hendrerit. Donec sit amet risus non lacus consectetur sagittis. Sed consectetur sit amet leo id aliquet. Fusce sem quam, laoreet quis molestie quis, congue sit amet dui. Quisque ullamcorper vestibulum lorem, id suscipit neque facilisis nec. Pellentesque commodo vulputate elementum. Vestibulum varius, risus eget pulvinar varius, leo turpis luctus quam, sed maximus massa lorem eu felis. Integer maximus nisi non aliquam elementum. Etiam quam arcu, semper ac neque ac, imperdiet pulvinar velit. Duis porttitor tristique elit. Maecenas faucibus dolor ut nisl dapibus, in tincidunt lorem placerat. Nulla venenatis massa sit amet risus lobortis ultrices.&lt;/p&gt;', 'admin@localhost', '10.jpeg', '2018-07-26 18:47:59', 1),
(11, 'Épisode 03 - Traversée Périlleuse', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed condimentum, dui sed luctus vulputate, sem purus tincidunt nunc, quis tempus risus quam quis turpis. Vivamus auctor libero risus, eu fringilla est condimentum in. Aenean porttitor a risus id faucibus. Suspendisse porttitor nisl vel justo imperdiet ultricies sed id ante. Duis eu diam at purus scelerisque euismod ut at sem. Morbi nec mauris quis enim scelerisque hendrerit. Cras ullamcorper libero eget orci tincidunt vulputate. Etiam iaculis vulputate faucibus. Phasellus augue nisi, suscipit sit amet mauris sed, laoreet egestas velit. Fusce ex sapien, viverra quis facilisis vel, sollicitudin at odio. Morbi hendrerit vitae ante ac placerat. Nam et purus maximus, scelerisque massa a, hendrerit lectus. Fusce facilisis leo a erat aliquam iaculis. Donec metus nulla, efficitur nec ornare id, placerat eu risus.&lt;br /&gt;&lt;br /&gt;Aliquam tempor ac tortor sit amet tincidunt. Integer vestibulum venenatis fringilla. Ut eget facilisis sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec placerat eleifend suscipit. Nulla dictum euismod leo id auctor. Sed tempus augue id ullamcorper tempor. Curabitur viverra accumsan hendrerit. In at turpis leo. Integer non ipsum tempor, sagittis augue eget, pretium nulla.&lt;br /&gt;&lt;br /&gt;Praesent ultricies a nulla et lobortis. Nunc fringilla massa purus, id malesuada diam euismod posuere. Integer eu laoreet orci, eget hendrerit libero. Sed eget consequat mauris. Praesent elementum velit quis elit feugiat, vel lacinia erat interdum. Curabitur fringilla est a enim aliquet aliquam. Ut efficitur ante eget nisi congue, et ultricies lacus condimentum. Proin lacinia ultrices sapien, vitae congue urna varius a. Sed vel leo suscipit, accumsan eros at, lacinia sem. Sed efficitur condimentum rhoncus.&lt;br /&gt;&lt;br /&gt;Nam turpis risus, gravida lacinia elit ac, viverra lobortis mauris. Vivamus vel elit nec nisi tempus sollicitudin. Phasellus pretium ultrices purus, at imperdiet dui cursus a. Fusce id arcu nec lectus ullamcorper semper id ac tortor. Duis sagittis, nunc vel porttitor luctus, lacus tellus consectetur arcu, eu mollis orci odio sit amet tellus. Nulla et commodo nibh, at sagittis nisi. Proin rhoncus est quis ipsum dapibus, et eleifend purus imperdiet.&lt;br /&gt;&lt;br /&gt;Suspendisse a nisl et risus posuere malesuada id id felis. Morbi semper augue turpis, id tincidunt nibh blandit ut. Sed turpis orci, tempor vel ornare vel, dignissim sit amet sapien. Maecenas imperdiet ex vel risus bibendum blandit. Duis vel diam velit. Phasellus non placerat massa, at interdum purus. Proin consequat sit amet metus et pretium. Sed ut orci diam. Maecenas quis turpis volutpat lacus accumsan condimentum in sit amet purus. Nullam varius condimentum mattis. Suspendisse venenatis eros sem, ac lacinia dolor semper ut. Suspendisse vel ligula quis sapien interdum egestas id eu augue. Donec facilisis finibus dolor id venenatis. Morbi mattis rutrum tortor ac porttitor. Duis id dapibus orci, in iaculis ante.&lt;br /&gt;&lt;br /&gt;In vel fringilla lectus. Vestibulum finibus finibus ligula quis tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla malesuada faucibus nunc. Nulla facilisi. Nulla eu enim a elit venenatis eleifend vel vel augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris egestas efficitur lacus at hendrerit.&lt;br /&gt;&lt;br /&gt;Mauris ac arcu eleifend, cursus erat non, elementum libero. Ut rhoncus aliquam dolor eget auctor. Suspendisse in massa euismod, pretium velit in, finibus mi. Vivamus sed lacus placerat, posuere velit eu, gravida purus. Pellentesque dictum egestas eros, in dictum nulla sollicitudin a. Mauris libero turpis, porta a imperdiet eu, tristique a dui. Vestibulum eleifend sem posuere, elementum dolor sed, ultrices eros. Quisque eu quam accumsan, faucibus ante sit amet, ultrices quam. Pellentesque sed pretium ante, eu dignissim erat. Suspendisse faucibus augue vel urna fermentum, vel scelerisque massa aliquet. In mi augue, aliquam id pharetra vitae, sagittis sit amet nibh. Pellentesque turpis sapien, euismod vel dictum gravida, mollis eu eros. Praesent ante lectus, rutrum a finibus eu, tempus vel justo. Ut vitae mi posuere, facilisis neque eu, pulvinar purus. Vivamus in rutrum est.&lt;br /&gt;&lt;br /&gt;Nunc a vulputate dolor. Duis scelerisque ultrices dui in ullamcorper. Sed tristique erat id interdum pulvinar. Quisque non hendrerit arcu. Fusce tempus tellus urna, ac aliquam tellus vestibulum id. Aenean vel mauris ornare, sagittis eros vel, malesuada purus. Ut id eros dictum, iaculis quam vitae, blandit metus. In et tempor arcu. Aliquam sit amet lectus vitae leo accumsan tincidunt luctus sit amet risus. Vivamus mollis, odio lobortis aliquam tempus, metus risus maximus dolor, ac scelerisque ligula sem at nibh. Nam ut mi quis elit ultrices dapibus. Duis scelerisque vitae ex quis iaculis. Sed ex libero, vulputate et quam ac, efficitur sodales nulla. Praesent laoreet metus id nisi dictum rhoncus. Nulla facilisi.&lt;br /&gt;&lt;br /&gt;Nunc ac dignissim ex, vitae finibus mauris. Sed pellentesque volutpat pulvinar. Curabitur sit amet blandit erat. Suspendisse auctor ante et augue pretium fringilla. Nunc commodo, enim ut lobortis mattis, turpis ligula maximus mauris, at accumsan eros ex id augue. Praesent eu est vitae lectus porttitor lobortis. Suspendisse potenti.&lt;br /&gt;&lt;br /&gt;Vivamus nec egestas diam. Proin vulputate arcu egestas lacus ultricies, vitae sodales nunc hendrerit. Donec sit amet risus non lacus consectetur sagittis. Sed consectetur sit amet leo id aliquet. Fusce sem quam, laoreet quis molestie quis, congue sit amet dui. Quisque ullamcorper vestibulum lorem, id suscipit neque facilisis nec. Pellentesque commodo vulputate elementum. Vestibulum varius, risus eget pulvinar varius, leo turpis luctus quam, sed maximus massa lorem eu felis. Integer maximus nisi non aliquam elementum. Etiam quam arcu, semper ac neque ac, imperdiet pulvinar velit. Duis porttitor tristique elit. Maecenas faucibus dolor ut nisl dapibus, in tincidunt lorem placerat. Nulla venenatis massa sit amet risus lobortis ultrices.&lt;/p&gt;', 'admin@localhost', '11.jpeg', '2018-07-26 18:48:41', 1),
(13, 'Épisode 01 - Seul', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed condimentum, dui sed luctus vulputate, sem purus tincidunt nunc, quis tempus risus quam quis turpis. Vivamus auctor libero risus, eu fringilla est condimentum in. Aenean porttitor a risus id faucibus. Suspendisse porttitor nisl vel justo imperdiet ultricies sed id ante. Duis eu diam at purus scelerisque euismod ut at sem. Morbi nec mauris quis enim scelerisque hendrerit. Cras ullamcorper libero eget orci tincidunt vulputate. Etiam iaculis vulputate faucibus. Phasellus augue nisi, suscipit sit amet mauris sed, laoreet egestas velit. Fusce ex sapien, viverra quis facilisis vel, sollicitudin at odio. Morbi hendrerit vitae ante ac placerat. Nam et purus maximus, scelerisque massa a, hendrerit lectus. Fusce facilisis leo a erat aliquam iaculis. Donec metus nulla, efficitur nec ornare id, placerat eu risus.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Aliquam tempor ac tortor sit amet tincidunt. Integer vestibulum venenatis fringilla. Ut eget facilisis sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec placerat eleifend suscipit. Nulla dictum euismod leo id auctor. Sed tempus augue id ullamcorper tempor. Curabitur viverra accumsan hendrerit. In at turpis leo. Integer non ipsum tempor, sagittis augue eget, pretium nulla.&lt;/strong&gt;&lt;/p&gt;', 'admin@localhost', '13.jpeg', '2018-07-31 11:01:16', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `jf_admins`
--
ALTER TABLE `jf_admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jf_comments`
--
ALTER TABLE `jf_comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jf_posts`
--
ALTER TABLE `jf_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `jf_admins`
--
ALTER TABLE `jf_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `jf_comments`
--
ALTER TABLE `jf_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `jf_posts`
--
ALTER TABLE `jf_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
