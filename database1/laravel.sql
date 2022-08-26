-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 02:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `logo`, `tags`, `coordinates`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Iusto vero culpa quasi sed.', NULL, 'laravel, api, backend', NULL, 'Kunde, Feeney and Weimann', 'East Albina', 'filiberto.flatley@schroeder.biz', 'http://www.denesik.net/', 'Consequatur quod qui consectetur aperiam laudantium blanditiis. Optio animi quis nostrum officiis similique veritatis voluptates. Vero quisquam ut iure dolorem quis. Eveniet autem ducimus labore molestias. Commodi explicabo ut quae. Et aut voluptatibus at provident exercitationem.', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(2, 'Necessitatibus quo harum omnis vel.', NULL, 'laravel, api, backend', NULL, 'Haley-Witting', 'Hamillhaven', 'kihn.kadin@davis.biz', 'http://kilback.info/nam-odit-aut-et-sed-inventore-adipisci', 'Mollitia doloribus qui ut quibusdam ducimus quo. Dignissimos iusto adipisci provident aspernatur quibusdam sequi. Autem perferendis architecto nam quo voluptatibus qui dolores. Voluptate aperiam tempora dicta ea doloribus molestiae. Optio distinctio atque rerum perspiciatis.', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(3, 'Debitis mollitia exercitationem consectetur numquam et voluptatem quasi.', NULL, 'laravel, api, backend', NULL, 'Mante, Willms and Turcotte', 'Beatriceshire', 'korey78@heller.com', 'http://www.kovacek.org/', 'Iusto amet architecto officiis quidem quam aut est. Non quidem ut quo ea voluptates provident. Tenetur omnis blanditiis exercitationem sequi repudiandae. Ex quos aut itaque aut error. Est est et ipsam labore iusto eligendi. Quia impedit itaque molestiae a facere sed. Soluta ut distinctio doloribus ut hic non magni.', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(4, 'Totam saepe dolore enim quas.', NULL, 'laravel, api, backend', NULL, 'Spencer, Pfannerstill and Gibson', 'Jerdeside', 'janice.bernier@green.com', 'http://www.carroll.com/recusandae-voluptas-mollitia-reiciendis-velit', 'Quis et aut sit tempore quo magni. Omnis labore laudantium et omnis. Est impedit id dolor veritatis sint nisi dolorem. Iste magnam rerum eligendi in soluta suscipit quidem.', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(5, 'Tempore sed recusandae consequatur nesciunt adipisci quia dolores fuga.', NULL, 'laravel, api, backend', NULL, 'Nolan, Hettinger and Rowe', 'Stokesport', 'mara.zemlak@jerde.com', 'http://www.kerluke.com/consectetur-ad-est-ipsum-quod-provident.html', 'Voluptatem accusantium numquam quasi est. Ducimus aut cupiditate rem explicabo adipisci. Doloribus officiis molestiae animi nam dolorem maiores quaerat. Itaque omnis cupiditate illo a repudiandae est suscipit. Alias amet cumque esse doloremque ut. Fugit tempora accusamus veritatis.', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(6, 'Et id totam sapiente.', NULL, 'laravel, api, backend', '41.434131, 22.644612', 'Reilly Inc', 'Port Matt', 'ebarton@macejkovic.com', 'http://reinger.net/incidunt-aut-omnis-omnis-ab-ut-similique', 'Non blanditiis consequuntur soluta vel neque hic. Et aliquam eos omnis qui id. Dicta vero cum quidem. Accusamus et non officiis vel aut ipsum iusto. Suscipit reprehenderit excepturi ut nihil fugiat molestias eaque repellendus.', '2022-08-26 08:38:01', '2022-08-26 08:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(71, '2014_10_12_000000_create_users_table', 1),
(72, '2014_10_12_100000_create_password_resets_table', 1),
(73, '2019_08_19_000000_create_failed_jobs_table', 1),
(74, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(75, '2022_08_22_104142_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Glenda Hagenes', 'estell49@example.org', '2022-08-26 08:38:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1jm6WXUmBo', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(2, 'Erna Bashirian MD', 'lupe04@example.net', '2022-08-26 08:38:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ocqYv0CJ3A', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(3, 'Dr. Marcellus Emmerich', 'mertz.valentina@example.org', '2022-08-26 08:38:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W99wod5CTi', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(4, 'Rhoda Carter', 'mcdermott.hunter@example.net', '2022-08-26 08:38:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RIcPdJGAaR', '2022-08-26 08:38:01', '2022-08-26 08:38:01'),
(5, 'Logan Daugherty', 'myron96@example.com', '2022-08-26 08:38:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zreAKoLGxd', '2022-08-26 08:38:01', '2022-08-26 08:38:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
