-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 03:16 PM
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `small` int(11) DEFAULT NULL,
  `medium` int(11) DEFAULT NULL,
  `large` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `name`, `logo`, `tags`, `description`, `created_at`, `updated_at`, `small`, `medium`, `large`) VALUES
(14, 5, 'Greek Pizza', NULL, 'Parmesan,Ham,Olive', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2022-09-09 11:24:59', '2022-09-22 09:15:16', 2, 4, 6),
(15, 4, 'Margherita', 'logos/wubTQ8qqvV945Snn5lgqOYPFrvIEWNfTJCF6NeVC.jpg', 'Olive,Parmesan', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2022-09-09 11:41:56', '2022-09-28 07:37:26', 3, 5, 9),
(19, 4, 'Sicilian Pizza', 'logos/REtT85KeOMn0l5sisFkayvqBvRb7vpGCqKK2WUW9.jpg', 'Mozzarella,Fontina,Olives,Mushrooms', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-09-26 12:17:31', '2022-09-28 07:37:00', 4, 7, 10),
(20, 5, 'Pizza Galore', 'logos/ZcrNWrjaEy4opt3mg6RNQdINNXPh1FNHOX09Ot1l.jpg', 'Parmesan,Fontina,Mozzarella,Tomato', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2022-09-29 12:20:00', '2022-09-29 12:20:00', 5, 7, 11),
(21, 6, 'Test Pizza', NULL, 'Tomato,Mozzarella,Olives,Mushrooms,Parmesan', 'Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2022-10-03 08:53:05', '2022-10-03 13:30:15', 2, 6, 7),
(22, 7, 'Amino Pizza', 'logos/ZNq8bJCI9SsOfR1qeWOMEYKwsQ1wP2DSU48ciYnb.jpg', 'Mozzarella,Parmesan,Olives', 'Suspendisse potenti. Etiam id nulla pulvinar, sagittis mauris nec, dignissim metus. Suspendisse nisi est, volutpat vitae libero vel, accumsan pulvinar lacus. Cras non sodales enim. Etiam pulvinar commodo metus, a vehicula justo elementum ut. Nulla auctor dolor ac dignissim tincidunt. Maecenas euismod volutpat arcu vel porta. Sed non accumsan massa.\r\n\r\nMaecenas eu commodo elit. Fusce varius venenatis lectus eget porta. Sed eget malesuada nisl. Vivamus vel enim consectetur, lobortis urna et, tincidunt diam. Phasellus vulputate consectetur ultrices. Cras suscipit eu metus at euismod.', '2022-10-03 11:18:23', '2022-10-03 11:18:23', 4, 8, 12);

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
(86, '2014_10_12_000000_create_users_table', 1),
(87, '2014_10_12_100000_create_password_resets_table', 1),
(88, '2019_08_19_000000_create_failed_jobs_table', 1),
(89, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(90, '2022_08_22_104142_create_listings_table', 1),
(91, '2022_09_06_140649_remove_coord', 2),
(92, '2022_09_06_141403_remove_fields', 3),
(95, '2022_09_06_143116_add_columns', 4),
(96, '2022_09_13_111959_attr', 4),
(97, '2022_09_28_111145_create_orders_table', 5),
(98, '2022_09_28_120135_drop_userid', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `email`, `cart`, `created_at`, `updated_at`) VALUES
(49, 'Damjan', 'sirok dol 8787', 'mitko.sr@gmail.com', 'a:2:{i:22;a:1:{s:5:\"small\";a:4:{s:3:\"qty\";i:2;s:5:\"price\";i:496;s:7:\"currenc\";s:6:\"ден\";s:4:\"item\";O:18:\"App\\Models\\Listing\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"listings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:22;s:7:\"user_id\";i:7;s:4:\"name\";s:11:\"Amino Pizza\";s:4:\"logo\";s:50:\"logos/ZNq8bJCI9SsOfR1qeWOMEYKwsQ1wP2DSU48ciYnb.jpg\";s:4:\"tags\";s:26:\"Mozzarella,Parmesan,Olives\";s:11:\"description\";s:587:\"Suspendisse potenti. Etiam id nulla pulvinar, sagittis mauris nec, dignissim metus. Suspendisse nisi est, volutpat vitae libero vel, accumsan pulvinar lacus. Cras non sodales enim. Etiam pulvinar commodo metus, a vehicula justo elementum ut. Nulla auctor dolor ac dignissim tincidunt. Maecenas euismod volutpat arcu vel porta. Sed non accumsan massa.\r\n\r\nMaecenas eu commodo elit. Fusce varius venenatis lectus eget porta. Sed eget malesuada nisl. Vivamus vel enim consectetur, lobortis urna et, tincidunt diam. Phasellus vulputate consectetur ultrices. Cras suscipit eu metus at euismod.\";s:10:\"created_at\";s:19:\"2022-10-03 13:18:23\";s:10:\"updated_at\";s:19:\"2022-10-03 13:18:23\";s:5:\"small\";i:4;s:6:\"medium\";i:8;s:5:\"large\";i:12;s:5:\"email\";s:22:\"test_another@gmail.com\";s:11:\"coordinates\";s:20:\"41.435479, 22.649298\";s:7:\"company\";s:12:\"AnotherPizza\";s:8:\"location\";s:8:\"Strumica\";s:7:\"website\";s:10:\"google.com\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:22;s:7:\"user_id\";i:7;s:4:\"name\";s:11:\"Amino Pizza\";s:4:\"logo\";s:50:\"logos/ZNq8bJCI9SsOfR1qeWOMEYKwsQ1wP2DSU48ciYnb.jpg\";s:4:\"tags\";s:26:\"Mozzarella,Parmesan,Olives\";s:11:\"description\";s:587:\"Suspendisse potenti. Etiam id nulla pulvinar, sagittis mauris nec, dignissim metus. Suspendisse nisi est, volutpat vitae libero vel, accumsan pulvinar lacus. Cras non sodales enim. Etiam pulvinar commodo metus, a vehicula justo elementum ut. Nulla auctor dolor ac dignissim tincidunt. Maecenas euismod volutpat arcu vel porta. Sed non accumsan massa.\r\n\r\nMaecenas eu commodo elit. Fusce varius venenatis lectus eget porta. Sed eget malesuada nisl. Vivamus vel enim consectetur, lobortis urna et, tincidunt diam. Phasellus vulputate consectetur ultrices. Cras suscipit eu metus at euismod.\";s:10:\"created_at\";s:19:\"2022-10-03 13:18:23\";s:10:\"updated_at\";s:19:\"2022-10-03 13:18:23\";s:5:\"small\";i:4;s:6:\"medium\";i:8;s:5:\"large\";i:12;s:5:\"email\";s:22:\"test_another@gmail.com\";s:11:\"coordinates\";s:20:\"41.435479, 22.649298\";s:7:\"company\";s:12:\"AnotherPizza\";s:8:\"location\";s:8:\"Strumica\";s:7:\"website\";s:10:\"google.com\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}i:21;a:1:{s:6:\"medium\";a:4:{s:3:\"qty\";i:2;s:5:\"price\";i:744;s:7:\"currenc\";s:6:\"ден\";s:4:\"item\";O:18:\"App\\Models\\Listing\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"listings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:21;s:7:\"user_id\";i:6;s:4:\"name\";s:10:\"Test Pizza\";s:4:\"logo\";N;s:4:\"tags\";s:43:\"Tomato,Mozzarella,Olives,Mushrooms,Parmesan\";s:11:\"description\";s:469:\"Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-10-03 10:53:05\";s:10:\"updated_at\";s:19:\"2022-10-03 15:30:15\";s:5:\"small\";i:2;s:6:\"medium\";i:6;s:5:\"large\";i:7;s:5:\"email\";s:14:\"test@gmail.com\";s:11:\"coordinates\";s:20:\"41.433966, 22.644726\";s:7:\"company\";s:9:\"MikePizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:17:\"strumicadenes.mk/\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:21;s:7:\"user_id\";i:6;s:4:\"name\";s:10:\"Test Pizza\";s:4:\"logo\";N;s:4:\"tags\";s:43:\"Tomato,Mozzarella,Olives,Mushrooms,Parmesan\";s:11:\"description\";s:469:\"Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-10-03 10:53:05\";s:10:\"updated_at\";s:19:\"2022-10-03 15:30:15\";s:5:\"small\";i:2;s:6:\"medium\";i:6;s:5:\"large\";i:7;s:5:\"email\";s:14:\"test@gmail.com\";s:11:\"coordinates\";s:20:\"41.433966, 22.644726\";s:7:\"company\";s:9:\"MikePizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:17:\"strumicadenes.mk/\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}', '2022-10-06 07:01:50', '2022-10-06 07:01:50'),
(50, 'Damjan', 'sirok dol 8879', 'mitko.sr@gmail.com', 'a:1:{i:21;a:2:{s:6:\"medium\";a:4:{s:3:\"qty\";i:2;s:5:\"price\";i:12;s:7:\"currenc\";s:1:\"$\";s:4:\"item\";O:18:\"App\\Models\\Listing\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"listings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:21;s:7:\"user_id\";i:6;s:4:\"name\";s:10:\"Test Pizza\";s:4:\"logo\";N;s:4:\"tags\";s:43:\"Tomato,Mozzarella,Olives,Mushrooms,Parmesan\";s:11:\"description\";s:469:\"Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-10-03 10:53:05\";s:10:\"updated_at\";s:19:\"2022-10-03 15:30:15\";s:5:\"small\";i:2;s:6:\"medium\";i:6;s:5:\"large\";i:7;s:5:\"email\";s:14:\"test@gmail.com\";s:11:\"coordinates\";s:20:\"41.433966, 22.644726\";s:7:\"company\";s:9:\"MikePizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:17:\"strumicadenes.mk/\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:21;s:7:\"user_id\";i:6;s:4:\"name\";s:10:\"Test Pizza\";s:4:\"logo\";N;s:4:\"tags\";s:43:\"Tomato,Mozzarella,Olives,Mushrooms,Parmesan\";s:11:\"description\";s:469:\"Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-10-03 10:53:05\";s:10:\"updated_at\";s:19:\"2022-10-03 15:30:15\";s:5:\"small\";i:2;s:6:\"medium\";i:6;s:5:\"large\";i:7;s:5:\"email\";s:14:\"test@gmail.com\";s:11:\"coordinates\";s:20:\"41.433966, 22.644726\";s:7:\"company\";s:9:\"MikePizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:17:\"strumicadenes.mk/\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:5:\"large\";a:4:{s:3:\"qty\";i:2;s:5:\"price\";i:14;s:7:\"currenc\";s:1:\"$\";s:4:\"item\";O:18:\"App\\Models\\Listing\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"listings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:21;s:7:\"user_id\";i:6;s:4:\"name\";s:10:\"Test Pizza\";s:4:\"logo\";N;s:4:\"tags\";s:43:\"Tomato,Mozzarella,Olives,Mushrooms,Parmesan\";s:11:\"description\";s:469:\"Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-10-03 10:53:05\";s:10:\"updated_at\";s:19:\"2022-10-03 15:30:15\";s:5:\"small\";i:2;s:6:\"medium\";i:6;s:5:\"large\";i:7;s:5:\"email\";s:14:\"test@gmail.com\";s:11:\"coordinates\";s:20:\"41.433966, 22.644726\";s:7:\"company\";s:9:\"MikePizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:17:\"strumicadenes.mk/\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:21;s:7:\"user_id\";i:6;s:4:\"name\";s:10:\"Test Pizza\";s:4:\"logo\";N;s:4:\"tags\";s:43:\"Tomato,Mozzarella,Olives,Mushrooms,Parmesan\";s:11:\"description\";s:469:\"Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-10-03 10:53:05\";s:10:\"updated_at\";s:19:\"2022-10-03 15:30:15\";s:5:\"small\";i:2;s:6:\"medium\";i:6;s:5:\"large\";i:7;s:5:\"email\";s:14:\"test@gmail.com\";s:11:\"coordinates\";s:20:\"41.433966, 22.644726\";s:7:\"company\";s:9:\"MikePizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:17:\"strumicadenes.mk/\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}', '2022-10-06 07:03:21', '2022-10-06 07:03:21'),
(51, 'Damjan', 'sirok dol9898', 'mitko.sr@gmail.com', 'a:3:{i:22;a:1:{s:5:\"large\";a:4:{s:3:\"qty\";i:2;s:5:\"price\";i:24;s:7:\"currenc\";s:1:\"$\";s:4:\"item\";O:18:\"App\\Models\\Listing\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"listings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:22;s:7:\"user_id\";i:7;s:4:\"name\";s:11:\"Amino Pizza\";s:4:\"logo\";s:50:\"logos/ZNq8bJCI9SsOfR1qeWOMEYKwsQ1wP2DSU48ciYnb.jpg\";s:4:\"tags\";s:26:\"Mozzarella,Parmesan,Olives\";s:11:\"description\";s:587:\"Suspendisse potenti. Etiam id nulla pulvinar, sagittis mauris nec, dignissim metus. Suspendisse nisi est, volutpat vitae libero vel, accumsan pulvinar lacus. Cras non sodales enim. Etiam pulvinar commodo metus, a vehicula justo elementum ut. Nulla auctor dolor ac dignissim tincidunt. Maecenas euismod volutpat arcu vel porta. Sed non accumsan massa.\r\n\r\nMaecenas eu commodo elit. Fusce varius venenatis lectus eget porta. Sed eget malesuada nisl. Vivamus vel enim consectetur, lobortis urna et, tincidunt diam. Phasellus vulputate consectetur ultrices. Cras suscipit eu metus at euismod.\";s:10:\"created_at\";s:19:\"2022-10-03 13:18:23\";s:10:\"updated_at\";s:19:\"2022-10-03 13:18:23\";s:5:\"small\";i:4;s:6:\"medium\";i:8;s:5:\"large\";i:12;s:5:\"email\";s:22:\"test_another@gmail.com\";s:11:\"coordinates\";s:20:\"41.435479, 22.649298\";s:7:\"company\";s:12:\"AnotherPizza\";s:8:\"location\";s:8:\"Strumica\";s:7:\"website\";s:10:\"google.com\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:22;s:7:\"user_id\";i:7;s:4:\"name\";s:11:\"Amino Pizza\";s:4:\"logo\";s:50:\"logos/ZNq8bJCI9SsOfR1qeWOMEYKwsQ1wP2DSU48ciYnb.jpg\";s:4:\"tags\";s:26:\"Mozzarella,Parmesan,Olives\";s:11:\"description\";s:587:\"Suspendisse potenti. Etiam id nulla pulvinar, sagittis mauris nec, dignissim metus. Suspendisse nisi est, volutpat vitae libero vel, accumsan pulvinar lacus. Cras non sodales enim. Etiam pulvinar commodo metus, a vehicula justo elementum ut. Nulla auctor dolor ac dignissim tincidunt. Maecenas euismod volutpat arcu vel porta. Sed non accumsan massa.\r\n\r\nMaecenas eu commodo elit. Fusce varius venenatis lectus eget porta. Sed eget malesuada nisl. Vivamus vel enim consectetur, lobortis urna et, tincidunt diam. Phasellus vulputate consectetur ultrices. Cras suscipit eu metus at euismod.\";s:10:\"created_at\";s:19:\"2022-10-03 13:18:23\";s:10:\"updated_at\";s:19:\"2022-10-03 13:18:23\";s:5:\"small\";i:4;s:6:\"medium\";i:8;s:5:\"large\";i:12;s:5:\"email\";s:22:\"test_another@gmail.com\";s:11:\"coordinates\";s:20:\"41.435479, 22.649298\";s:7:\"company\";s:12:\"AnotherPizza\";s:8:\"location\";s:8:\"Strumica\";s:7:\"website\";s:10:\"google.com\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}i:21;a:1:{s:6:\"medium\";a:4:{s:3:\"qty\";i:2;s:5:\"price\";i:12;s:7:\"currenc\";s:1:\"$\";s:4:\"item\";O:18:\"App\\Models\\Listing\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"listings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:21;s:7:\"user_id\";i:6;s:4:\"name\";s:10:\"Test Pizza\";s:4:\"logo\";N;s:4:\"tags\";s:43:\"Tomato,Mozzarella,Olives,Mushrooms,Parmesan\";s:11:\"description\";s:469:\"Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-10-03 10:53:05\";s:10:\"updated_at\";s:19:\"2022-10-03 15:30:15\";s:5:\"small\";i:2;s:6:\"medium\";i:6;s:5:\"large\";i:7;s:5:\"email\";s:14:\"test@gmail.com\";s:11:\"coordinates\";s:20:\"41.433966, 22.644726\";s:7:\"company\";s:9:\"MikePizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:17:\"strumicadenes.mk/\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:21;s:7:\"user_id\";i:6;s:4:\"name\";s:10:\"Test Pizza\";s:4:\"logo\";N;s:4:\"tags\";s:43:\"Tomato,Mozzarella,Olives,Mushrooms,Parmesan\";s:11:\"description\";s:469:\"Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-10-03 10:53:05\";s:10:\"updated_at\";s:19:\"2022-10-03 15:30:15\";s:5:\"small\";i:2;s:6:\"medium\";i:6;s:5:\"large\";i:7;s:5:\"email\";s:14:\"test@gmail.com\";s:11:\"coordinates\";s:20:\"41.433966, 22.644726\";s:7:\"company\";s:9:\"MikePizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:17:\"strumicadenes.mk/\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}i:15;a:1:{s:5:\"large\";a:4:{s:3:\"qty\";i:2;s:5:\"price\";i:18;s:7:\"currenc\";s:1:\"$\";s:4:\"item\";O:18:\"App\\Models\\Listing\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"listings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:16:{s:2:\"id\";i:15;s:7:\"user_id\";i:4;s:4:\"name\";s:10:\"Margherita\";s:4:\"logo\";s:50:\"logos/wubTQ8qqvV945Snn5lgqOYPFrvIEWNfTJCF6NeVC.jpg\";s:4:\"tags\";s:14:\"Olive,Parmesan\";s:11:\"description\";s:307:\"Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-09-09 13:41:56\";s:10:\"updated_at\";s:19:\"2022-09-28 09:37:26\";s:5:\"small\";i:3;s:6:\"medium\";i:5;s:5:\"large\";i:9;s:5:\"email\";s:18:\"mitko.sr@gmail.com\";s:11:\"coordinates\";s:20:\"41.438809, 22.638479\";s:7:\"company\";s:11:\"DamjanPizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:10:\"damjan.com\";}s:11:\"\0*\0original\";a:16:{s:2:\"id\";i:15;s:7:\"user_id\";i:4;s:4:\"name\";s:10:\"Margherita\";s:4:\"logo\";s:50:\"logos/wubTQ8qqvV945Snn5lgqOYPFrvIEWNfTJCF6NeVC.jpg\";s:4:\"tags\";s:14:\"Olive,Parmesan\";s:11:\"description\";s:307:\"Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\";s:10:\"created_at\";s:19:\"2022-09-09 13:41:56\";s:10:\"updated_at\";s:19:\"2022-09-28 09:37:26\";s:5:\"small\";i:3;s:6:\"medium\";i:5;s:5:\"large\";i:9;s:5:\"email\";s:18:\"mitko.sr@gmail.com\";s:11:\"coordinates\";s:20:\"41.438809, 22.638479\";s:7:\"company\";s:11:\"DamjanPizza\";s:8:\"location\";s:7:\"Radovis\";s:7:\"website\";s:10:\"damjan.com\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}', '2022-10-06 07:36:57', '2022-10-06 07:36:57');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `coordinates` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `coordinates`, `company`, `location`, `website`) VALUES
(3, 'Mitko', 'lilyandersonau@gmail.com', NULL, '$2y$10$FzJ0BJYwII/wXcJaAKSVUuEb2/27Ae2Dx0fzRiax7wYlhNHkv2tCC', NULL, '2022-09-07 12:15:33', '2022-09-07 12:15:33', '41.438809, 22.638479', 'MitkoPizza', 'Strumica', 'mitko.com'),
(4, 'Damjan', 'mitko.sr@gmail.com', NULL, '$2y$10$eXW.XbwTuZ65GCzgQDboreKGMKsycPKnpgNkpKnkEPLhwOCva8YEi', NULL, '2022-09-09 10:57:42', '2022-09-09 10:57:42', '41.438809, 22.638479', 'DamjanPizza', 'Radovis', 'damjan.com'),
(5, 'lence', 'john@gmail.com', NULL, '$2y$10$G0FbAPkobDnG7Dr2zezb3OvmnKECvq9Vq7oXDIVN0iL4sE2HjBaHy', NULL, '2022-09-09 11:24:36', '2022-09-09 11:24:36', '41.438809, 22.638479', 'LencePizza', 'Dojran', 'lence.com'),
(6, 'Test', 'test@gmail.com', NULL, '$2a$12$Vj4crLCkBZ6AlrsnEDdjv.oVc/9HdKzIIKsB694TJtk.xpMRLLSWW', NULL, '2022-10-03 08:51:46', '2022-10-03 13:22:18', '41.433966, 22.644726', 'MikePizza', 'Radovis', 'strumicadenes.mk/'),
(7, 'Test again', 'test_another@gmail.com', NULL, '$2y$10$LsoqE7tVlh/3QYT.y9lTkePB8ScxqdRTfXK49meVQqZX6POWJghsy', NULL, '2022-10-03 11:17:07', '2022-10-03 11:17:07', '41.435479, 22.649298', 'AnotherPizza', 'Strumica', 'google.com');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
