-- phpMyAdmin SQL Dump
-- version 5.1.0-dev
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 01 2020 г., 02:33
-- Версия сервера: 5.7.19
-- Версия PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `liveware`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `born_date` date NOT NULL,
  `height` int(11) NOT NULL,
  `avatar_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actors_first_name_index` (`first_name`),
  KEY `actors_last_name_index` (`last_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`id`, `first_name`, `last_name`, `born_date`, `height`, `avatar_path`, `created_at`, `updated_at`) VALUES
(1, 'Leonardo', 'DiCaprio', '1974-11-11', 183, '/actors/avatars/leonardo_dicaprio.jpg', '2020-09-29 21:00:00', '2020-09-29 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `actor_film`
--

DROP TABLE IF EXISTS `actor_film`;
CREATE TABLE IF NOT EXISTS `actor_film` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actor_film_film_id_foreign` (`film_id`),
  KEY `actor_film_actor_id_foreign` (`actor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `actor_film`
--

INSERT INTO `actor_film` (`id`, `film_id`, `actor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-09-29 21:00:00', '2020-09-29 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `avatars`
--

DROP TABLE IF EXISTS `avatars`;
CREATE TABLE IF NOT EXISTS `avatars` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `avatars_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `avatars`
--

INSERT INTO `avatars` (`id`, `path`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '/users/avatars/bzdykin_avatar.jpg', 1, '2020-09-30 23:31:17', '2020-09-30 23:31:20'),
(2, '/users/avatars/donald_avatar.jpg', 2, '2020-09-30 23:31:56', '2020-09-30 23:31:59'),
(3, '/users/avatars/george_avatar.jpg', 3, '2020-09-30 23:32:27', '2020-09-30 23:32:30');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_film_id_index` (`film_id`),
  KEY `comments_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `film_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'What is the most resilient parasite? An Idea! Yes, Nolan has created something with his unbelievably, incredibly and god- gifted mind which will blow the minds of the audience away. The world premiere of the movie, directed by Hollywood\'s most inventive dreamers, was shown in London and has already got top notch reviews worldwide and has scored maximum points! Now the question arises what the movie has that it deserve all this?', '2020-09-30 23:13:04', '2020-09-30 23:13:11'),
(2, 1, 2, 'I saw Memento very recently, something that turned out to be a great miss.I saw it again, just to make a couple of thins straight-and i\'ll definitely do the same with Inception.', '2020-09-30 23:23:11', '2020-09-30 23:23:15'),
(3, 1, 3, 'Inception is truly one of a kind. A concept which has long gestated in Christopher Nolan\'s mind, his eye for drama mixed with his large scale sensibilities ring true in Blockbuster season making Inception a true original in the sea of reboots, remakes and sequels.', '2020-09-30 23:23:44', '2020-09-30 23:23:47');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'USA', '2020-09-29 21:00:00', '2020-09-29 21:00:00'),
(2, 'UK', '2020-09-29 21:00:00', '2020-09-29 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `country_film`
--

DROP TABLE IF EXISTS `country_film`;
CREATE TABLE IF NOT EXISTS `country_film` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_film_film_id_foreign` (`film_id`),
  KEY `country_film_country_id_foreign` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `country_film`
--

INSERT INTO `country_film` (`id`, `film_id`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-09-29 21:00:00', '2020-09-29 21:00:00'),
(2, 1, 2, '2020-09-29 21:00:00', '2020-09-29 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `agerating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `films_title_index` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `title`, `description`, `agerating`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', '12+', 148, '2020-09-29 18:00:00', '2020-09-29 18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `film_genre`
--

DROP TABLE IF EXISTS `film_genre`;
CREATE TABLE IF NOT EXISTS `film_genre` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_genre_film_id_foreign` (`film_id`),
  KEY `film_genre_genre_id_foreign` (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `film_genre`
--

INSERT INTO `film_genre` (`id`, `film_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-09-29 21:00:00', '2020-09-29 21:00:00'),
(2, 1, 2, '2020-09-29 21:00:00', '2020-09-29 21:00:00'),
(3, 1, 3, '2020-09-29 21:00:00', '2020-09-29 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Action', '2020-09-29 21:00:00', '2020-09-29 21:00:00'),
(2, 'Adventure', '2020-09-29 21:00:00', '2020-09-29 21:00:00'),
(3, 'Sci-Fi', '2020-09-29 21:00:00', '2020-09-29 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `is_poster` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_film_id_foreign` (`film_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `path`, `film_id`, `is_poster`, `created_at`, `updated_at`) VALUES
(1, '/movies/inception/inception_poster.jpg', 1, 1, '2020-09-29 18:00:00', '2020-09-29 18:00:00'),
(2, '/movies/inception/inception_1.jpg', 1, 0, '2020-09-29 18:00:00', '2020-09-29 18:00:00'),
(3, '/movies/inception/inception_2.jpg', 1, 0, '2020-09-29 18:00:00', '2020-09-29 18:00:00'),
(4, '/movies/inception/inception_3.jpg', 1, 0, '2020-09-29 18:00:00', NULL),
(5, '/movies/inception/inception_4.jpg', 1, 0, '2020-09-29 18:00:00', '2020-09-29 18:00:00'),
(6, '/movies/inception/inception_5.jpg', 1, 0, '2020-09-29 18:00:00', '2020-09-29 18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2020_09_29_152405_create_films_table', 1),
(33, '2020_09_29_152433_create_actors_table', 1),
(34, '2020_09_29_152517_create_comments_table', 1),
(35, '2020_09_29_152601_create_genres_table', 1),
(36, '2020_09_29_152626_create_images_table', 1),
(37, '2020_09_29_152751_create_countries_table', 1),
(38, '2020_09_29_152950_create_actor_film_table', 1),
(39, '2020_09_29_153120_create_film_genre_table', 1),
(40, '2020_09_29_161751_create_profiles_table', 1),
(41, '2020_09_29_172449_create_country_film_table', 1),
(42, '2020_09_29_173113_create_avatars_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `born_date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_user_id_unique` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `born_date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Nick', 'Smirnov', '1984-05-24', 1, '2020-09-29 21:00:00', '2020-09-29 21:00:00'),
(2, 'Donald', 'Trump', '1946-06-14', 2, '2020-09-29 21:00:00', '2020-09-29 21:00:00'),
(3, 'George', 'Bush', '1946-07-06', 3, '2020-09-29 21:00:00', '2020-09-29 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bzdykin', 'foo@gmail.com', '2020-09-29 21:18:42', '$2y$10$tsY4S.Jx6x0Bd3SKXSrQWOjvJhKORvz04GiB1MXw1BdVZh1v98Z5G', NULL, '2020-09-29 21:18:42', '2020-09-29 21:18:42'),
(2, 'donald', 'donald@gmail.com', '2020-09-29 21:18:42', '$2y$10$stWVgLJAi8U4OWPo3zTUxeAZAxzUBVz2pU5dIKrY0YsNc1jDrGosu', NULL, '2020-09-29 21:18:43', '2020-09-29 21:18:43'),
(3, 'george', 'george@gmail.com', '2020-09-29 21:18:43', '$2y$10$50yjl1wM1Cam1hRuL4qj0uY5qwKh1f8.n1U7zCFqcUGsoZ79vNimG', NULL, '2020-09-29 21:18:43', '2020-09-29 21:18:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

