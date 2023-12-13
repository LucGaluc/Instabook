-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 13 déc. 2023 à 09:11
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `instabook`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'J.K. Rowling', NULL, NULL),
(3, 'Stephen King', NULL, NULL),
(4, 'Dan Brown', NULL, NULL),
(5, 'Haruki Murakami', NULL, NULL),
(6, 'George Orwell', NULL, NULL),
(7, 'Jane Austen', NULL, NULL),
(8, 'Victor Hugo', NULL, NULL),
(9, 'Ernest Hemingway', NULL, NULL),
(10, 'Mark Twain', NULL, NULL),
(11, 'Agatha Christie', NULL, NULL),
(12, 'Gabriel Garcia Marquez', NULL, NULL),
(13, 'J.R.R. Tolkien', NULL, NULL),
(14, 'Leo Tolstoy', NULL, NULL),
(15, 'F. Scott Fitzgerald', NULL, NULL),
(16, 'Virginia Woolf', NULL, NULL),
(17, 'Charles Dickens', NULL, NULL),
(18, 'Jules Verne', NULL, NULL),
(19, 'Hermann Hesse', NULL, NULL),
(20, 'Miguel de Cervantes', NULL, NULL),
(21, 'Fyodor Dostoevsky', NULL, NULL),
(22, 'Arthur Conan Doyle', NULL, NULL),
(23, 'Emily Dickinson', NULL, NULL),
(24, 'Oscar Wilde', NULL, NULL),
(25, 'H.P. Lovecraft', NULL, NULL),
(26, 'Albert Camus', NULL, NULL),
(27, 'Edgar Allan Poe', NULL, NULL),
(28, 'Nathaniel Hawthorne', NULL, NULL),
(29, 'H.G. Wells', NULL, NULL),
(30, 'Markus Zusak', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Roman', NULL, NULL),
(2, 'Science-fiction', NULL, NULL),
(3, 'Fantaisie', NULL, NULL),
(4, 'Mystère', NULL, NULL),
(5, 'Thriller', NULL, NULL),
(6, 'Horreur', NULL, NULL),
(7, 'Policier', NULL, NULL),
(8, 'Jeunesse', NULL, NULL),
(9, 'Aventure', NULL, NULL),
(10, 'Romance', NULL, NULL),
(11, 'Biographie', NULL, NULL),
(12, 'Autobiographie', NULL, NULL),
(13, 'Dystopie', NULL, NULL),
(14, 'Historique', NULL, NULL),
(15, 'Contes', NULL, NULL),
(16, 'Essai', NULL, NULL),
(17, 'Poésie', NULL, NULL),
(18, 'Nouvelle', NULL, NULL),
(19, 'Classique', NULL, NULL),
(20, 'Science', NULL, NULL),
(21, 'Psychologie', NULL, NULL),
(22, 'Philosophie', NULL, NULL),
(23, 'Spiritualité', NULL, NULL),
(24, 'BD / Comics', NULL, NULL),
(25, 'Manga', NULL, NULL),
(26, 'Art et Design', NULL, NULL),
(27, 'Voyage', NULL, NULL),
(28, 'Cuisine', NULL, NULL),
(29, 'Développement personnel', NULL, NULL),
(30, 'Éducation', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_genre` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `created_at`, `updated_at`, `id_genre`, `author_id`, `title`, `year`, `image`) VALUES
(5, '2023-11-29 08:11:23', '2023-11-29 08:11:23', 7, 11, 'mort sur le nil', 1970, NULL),
(6, '2023-11-29 08:11:44', '2023-11-29 08:11:44', 7, 11, 'hercule poirot', 1954, NULL),
(7, '2023-11-29 08:12:17', '2023-11-29 08:12:17', 3, 13, 'seigneur des anneaux', 1954, NULL),
(8, '2023-11-29 08:12:57', '2023-11-29 08:12:57', 1, 18, 'vingt mille lieux sous les mers', 2000, NULL),
(9, '2023-11-29 08:13:31', '2023-11-29 08:13:31', 3, 2, 'Harry-Potter', 2000, NULL),
(10, '2023-11-29 08:13:44', '2023-11-29 08:13:44', 24, 23, 'titeuf', 2004, NULL),
(11, '2023-11-30 12:18:00', '2023-11-30 12:18:00', 7, 11, 'crime de l\'orient express', 1934, NULL),
(12, '2023-11-30 12:18:31', '2023-11-30 12:18:31', 7, 11, 'la fete du potiron', 1969, NULL),
(13, '2023-11-30 12:19:05', '2023-11-30 12:19:05', 7, 11, 'la maison biscornue', 1949, NULL),
(14, '2023-11-30 12:19:36', '2023-11-30 12:19:36', 7, 11, 'la nuit qui ne finit pas', 1967, NULL),
(15, '2023-11-30 12:20:28', '2023-11-30 12:20:28', 7, 11, 'cinq petit cochons', 1942, NULL),
(16, '2023-11-30 12:20:54', '2023-11-30 12:20:54', 7, 11, 'pourquoi pas evans?', 1934, NULL),
(17, '2023-12-01 07:58:00', '2023-12-01 07:58:00', 12, 13, 'super Zohrik', 2023, 'super Zhorik.jpeg'),
(18, '2023-12-01 07:59:51', '2023-12-01 07:59:51', 12, 13, 'super Zohrik', 2023, 'super Zhorik.jpeg'),
(19, '2023-12-02 09:07:32', '2023-12-02 09:07:32', 26, 11, 'Test', 2023, 'SZ2.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_27_091845_create_livres_table', 2),
(6, '2023_11_28_100324_create_genres_table', 3),
(7, '2023_11_28_102530_add_id_genre_to_livres_table', 4),
(8, '2023_11_28_112016_create_authors_table', 5),
(9, '2023_11_28_112123_add_author_id_to_livres_table', 5),
(10, '2023_11_29_081452_add_title_to_livres_table', 6),
(11, '2023_11_29_084634_add_year_to_livres_table', 6),
(12, '2023_11_30_085051_add_img_to_livres_tables', 7);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'famille', 'famille@gmail.com', NULL, '$2y$12$DjpnkCMF663JSTXSNCH3.eHfZJClpDX6jpNawI7xSnyIBImsPG2m2', NULL, '2023-11-27 09:18:24', '2023-11-27 09:18:24'),
(2, 'famille2', 'famtop@gmail.com', NULL, '$2y$12$HGursFx7Q0BdmgKfODOaA.uVmBCjs4yBAIJLUrnTw64D5mvYD6xbW', NULL, '2023-11-27 09:21:54', '2023-11-27 09:21:54'),
(3, 'famille3', 'test@gmail.com', NULL, '$2y$12$bafCMF3etSZw9y3PIXevcekTdeJRQhWD0jky/iIQ4UNn2KX86URYC', NULL, '2023-11-27 09:22:39', '2023-11-27 09:22:39'),
(4, 'famille4', 'famille4@gmail.com', NULL, '$2y$12$1vvzoFWgYfSvfg.Ww7LMVOKXMNGHsVvufyWNAUeHv/KH5Kmup1q/K', NULL, '2023-11-27 09:23:27', '2023-11-27 09:23:27'),
(5, 'famille5', 'famille5@gmail.com', NULL, '$2y$12$QEDTAKcUAxk3tNKVn0NqzO1YKUsvIyt1dFBll6ruyRKU8nH3glFEy', NULL, '2023-11-27 09:24:47', '2023-11-27 09:24:47'),
(6, 'famille6', 'famille6@gmail.com', NULL, '$2y$12$XET7I3HNpcIXQOy.CU9U7.K8b6n9rRtEaRtSoLS3ZTn0OKS78aTBu', NULL, '2023-11-27 09:25:25', '2023-11-27 09:25:25'),
(7, 'famille7', 'famille7@gmail.com', NULL, '$2y$12$2dQJb4r3Vo79l9wjJKyVt.Hig5b5fMLjWdzZETeG4gYelJjNUXEkK', NULL, '2023-11-27 09:37:40', '2023-11-27 09:37:40');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livres_id_genre_foreign` (`id_genre`),
  ADD KEY `livres_author_id_foreign` (`author_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `livres_id_genre_foreign` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
