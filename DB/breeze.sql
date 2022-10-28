-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 01:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `breeze`
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
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_01_035910_create_statuses_table', 1),
(6, '2022_10_01_055142_create_follows_table', 1);

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
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `user_id`, `identifier`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'xkhly1jkvsgjghbsz8fo15v1vse7b0bm', 'Itaque ut omnis sed enim quo et in illum.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(2, 1, 'qinqvlsfloapvr36pnrbhy6ymnm3dj4k', 'Aut nisi error enim voluptates aut.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(3, 1, '8ha7k7grvdxlwsi6d627eavislc4ogmb', 'Sed consequatur earum adipisci.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(4, 1, 'thmyu1jme7wz2wblivafrw01w7cqi0a7', 'Perferendis atque qui totam aperiam.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(5, 1, 'hjkfuyqyhpok6y8gcefmbhwph4pyy23g', 'Et ipsa ut rerum iusto a voluptate soluta.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(6, 2, 'xlqka1bdjc3zgqtyldr3aiesaz9izwwx', 'Eos nemo cumque placeat corporis at vel nihil.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(7, 2, 's7ntqpv3dw4erwgfxtlrwu5emue30ucq', 'Itaque odit et nobis aut dolores.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(8, 2, 'vjxxseuby3n5m3b883osbxknqkqlbiyb', 'Libero voluptas vel et eos et.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(9, 2, 'rmpjika5nxcykkfoqcu2dbupsbq0rdzf', 'Aut consequuntur dignissimos incidunt quo harum necessitatibus.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(10, 2, 'oa2lcz7gqyxhwfjvj06hsnwcgzzsppyo', 'Aut maiores sunt est et dignissimos illum facilis aut.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(11, 3, 'veeawvx5r7j2jin8w96oxvficy7rqh8h', 'Ab id libero est repellat eum.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(12, 3, 'vnblbbbzfo8imvldvs4hg8mt7mr8a3zw', 'Voluptate esse consequatur quia.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(13, 3, 'ozff0jzb6x2pfkgkv8u49yfwyunpqklh', 'Quia esse dolorem consectetur quas et voluptas.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(14, 3, 'qgmegzrldjrfv9lwjwkizdalcalg1wk5', 'Mollitia temporibus minus molestiae voluptatem laborum.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(15, 3, 'btqe3oykg8u23xqv9mnrc9bfe7hc42pv', 'Et atque ratione impedit omnis.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(16, 4, 'hyd2ja5nwp2grsi62r4s8sgbcqe4m8nl', 'Impedit ducimus fugit ipsam repudiandae qui iusto quasi quia.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(17, 4, 'utm6czjhhuodxl0fw0m36g0mmr7x0o74', 'Cumque sequi minus consectetur et eum id et.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(18, 4, 'ifq9muujixytyq7fn0379yx1cdnvzw1k', 'Aut qui sequi nihil quae qui asperiores ipsa repellat.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(19, 4, 'vhexgl83rvgsrlstgaixfg0toapbvc90', 'Unde et illum quis sequi et alias.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(20, 4, 'ungt53kgqhq1n6qdxhsjzaixu3hvm5xf', 'Ut magnam odit incidunt praesentium quo.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(21, 5, 'iaprikwmq16dfoefqnxcayglymrzwgje', 'Dolorum pariatur deleniti nam aut ullam laudantium ea sed.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(22, 5, 'pv07vd51r29gm06e9enzskn0wtc1bafr', 'Odio est voluptates qui recusandae.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(23, 5, '5rdqvcwsckysnzoyno03ocjbq9hiegem', 'Vitae expedita totam et beatae illum est.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(24, 5, 'wvk5bjcxztyth5efjf03loog4r8bcak4', 'Dolores sint quibusdam placeat aut quia deserunt.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(25, 5, 'aiydpomf6vu9wdvt6ipey0wjwbzxa5ff', 'Vel qui tenetur et earum aut.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(26, 6, '3pcac3y27zhpiy1czw9tnb8mi7gjhlb4', 'Ut dignissimos vitae optio aut.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(27, 6, 'nvrzvugkb48trvym8felhlqgkt7bqbp7', 'Enim minima exercitationem assumenda illum.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(28, 6, 'vyznqucrkk2fjancadxgc25n0k7jpjss', 'Sapiente natus vel ut magni.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(29, 6, 'eutqrogzmtnias85b93p1quirb34u9hk', 'Minima magnam non enim omnis tempora cum.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(30, 6, 'ds2pmbmjbbqftg1tdltfcspjgbhsuhru', 'Temporibus odit ad rerum et.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(31, 7, 'waumebi0ak5lkw8ga52fkrzu1b2p4uce', 'Sint similique adipisci ab amet.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(32, 7, 'buojhdk8vz46gyie9ozha6sluqweqmwq', 'Sunt qui qui consectetur.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(33, 7, 'udfu8yitzapnajf8bncgissfrnbdhqu0', 'Asperiores ut dolores ut.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(34, 7, 'yobccvfz9embkgkyoqfsbwxr4ek0cwan', 'Optio ut iste veniam ratione reprehenderit.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(35, 7, 'xogab6zmc2ltwec52rhsdfakcunhrchl', 'Voluptatem ut cumque vel quis non.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(36, 8, 'guf0twf7zpmjzon3bgxf3t934epw1jgw', 'Possimus et quia sapiente mollitia.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(37, 8, 'mpah9scajhg0mhea4nr4jd2blyboxwyw', 'Animi accusamus iste hic animi et.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(38, 8, 'py2trnnwefyh92ggzgfztqonywpahfot', 'Ad et dolore et quod cum incidunt.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(39, 8, '1jqgckrqcagvwnq3rvljeflsshz8oftk', 'Dolorem sed dolor totam ducimus.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(40, 8, 'tj9waonab5xtxjdodxppyh9wejhmkkh8', 'Magnam itaque aut quisquam vitae impedit.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(41, 9, 'rnrwstmdzynekfmckg8uywoc9xm04tlm', 'Assumenda earum adipisci aliquid deleniti.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(42, 9, '83129nn4l1e1y1vz16excutbjtolrqng', 'Accusantium consequuntur iste explicabo aut perspiciatis ab molestiae.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(43, 9, 'astzoggl9yivcacuzfx8qplk7fanncfo', 'Temporibus officiis eius recusandae ut impedit.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(44, 9, 'avghxr0kg9f9qzvzpey24ibzb8pcr9yf', 'Sed veritatis fugit quos et illum voluptatum mollitia.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(45, 9, 'nsjammftqpfrn4lssuwuyajsqow50yri', 'Quas sit doloremque et commodi.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(46, 10, '5rx0t9fma48h7cglvzabkpqiisdep077', 'Ut qui officiis labore neque.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(47, 10, 'n8nxdjc1pdodgpeg9xtfg4fqfei8lrrc', 'Qui consequatur quia labore excepturi hic non.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(48, 10, 'pr8qee3lkyexnyzqfervktu9ljekeohm', 'Dolore fugiat ex ratione magnam.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(49, 10, 'mynhlxndgofryzmuvzz25s21xtj7gloa', 'In harum exercitationem aut doloribus et dolorem voluptas.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(50, 10, 'o9flpum64y9hzyzscj4edycpt9rgedpi', 'Ratione vitae quae voluptates quia.', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(51, 11, '98u4kcnjabzbmirhf6hezubthgxip0511', 'Status', '2022-10-28 16:17:31', '2022-10-28 16:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Madalyn Beer', 'dpadberg', 'gaylord.kendrick@example.org', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6TfF57PTx2', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(2, 'Dock Metz I', 'keebler.brody', 'sam60@example.com', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MiIJo3ILWu', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(3, 'Anika Christiansen', 'willms.christop', 'ibrahim.rippin@example.org', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F32m9H71Ue', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(4, 'Alba Tremblay DVM', 'graciela.hill', 'hilbert85@example.org', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kk4v0GQY8W', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(5, 'August Botsford', 'xfay', 'austen92@example.org', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ojeGPPsAAQ', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(6, 'Chaya Jast', 'ijacobi', 'torrance.schultz@example.org', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xzVjwCLRn5', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(7, 'Aurelie Cole', 'genesis16', 'alfred81@example.com', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oy8FfFD6Vg', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(8, 'Victoria Rutherford', 'hills.jocelyn', 'laney51@example.net', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Togwh4pFoi', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(9, 'Concepcion Fahey', 'shanelle85', 'florencio67@example.org', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qk11Ah7vAV', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(10, 'Dr. Nicolette Mayert', 'noemy.pagac', 'andreane.fritsch@example.com', '2022-10-28 16:16:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rrVRNtC1Pi', '2022-10-28 16:16:49', '2022-10-28 16:16:49'),
(11, 'Zaki Deza', 'unhnhuly8mh', 'zakideza19@gmail.com', NULL, '$2y$10$g5fkFTw26Cf15xolLUSg1.3lEFHy9ubAlRGlSSIqX24NmRc2ByeJq', NULL, '2022-10-28 16:17:14', '2022-10-28 16:17:14');

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
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

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
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_identifier_unique` (`identifier`),
  ADD KEY `statuses_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
