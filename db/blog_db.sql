-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 28, 2025 at 08:50 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_cache`
--

DROP TABLE IF EXISTS `blog_cache`;
CREATE TABLE IF NOT EXISTS `blog_cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_cache_locks`
--

DROP TABLE IF EXISTS `blog_cache_locks`;
CREATE TABLE IF NOT EXISTS `blog_cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE IF NOT EXISTS `blog_comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comments_user_id_foreign` (`user_id`),
  KEY `blog_comments_post_id_foreign` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `content`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Et in illo voluptatem et et. Alias enim qui est exercitationem saepe atque maiores. Minima tenetur repellat vero qui. Fugiat vero voluptas quis et.', 2, 1, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(2, 'Vitae aperiam dolores aut aut dolor necessitatibus. Id quo ullam ea. Est excepturi rem veniam est quas eligendi.', 3, 1, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(3, 'Voluptatum aut ut voluptatem aut adipisci. Placeat in nihil reprehenderit magnam animi. Qui ab ut sequi eius aut earum est. Quia rerum at qui itaque reprehenderit molestias neque.', 4, 1, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(4, 'Fugit iusto sit placeat autem. Qui sed cum quas velit fuga eveniet non impedit. Sed non quas dolores eos.', 5, 2, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(5, 'Veniam rerum reiciendis aliquam et. Et impedit non voluptatem tempore quas eveniet quisquam.', 6, 2, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(6, 'Minima ut atque aut sint. Et iusto ipsum necessitatibus nostrum deserunt nulla. Voluptates ab eius sunt. Optio eaque sed dolores et sint eveniet.', 7, 2, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(7, 'Alias illum enim sint soluta ut ut et. Quisquam cumque vel occaecati. Commodi laudantium laboriosam tempora debitis non modi quos.', 8, 3, '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(8, 'Officia saepe totam sunt quasi sed dolores consequatur. Dolorem delectus est distinctio voluptatem omnis. Nemo ut aut itaque provident incidunt autem. Similique itaque cum quos possimus.', 9, 3, '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(9, 'Ut pariatur consequatur nulla ex facere dolores voluptate. Dolorem excepturi nihil recusandae explicabo similique aut. Qui dolorem perspiciatis et. Velit qui fugiat fugiat qui non sed nisi.', 10, 3, '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(10, 'Et illum veniam tempora laudantium eveniet. Quia commodi in et sapiente aperiam. Temporibus itaque ducimus nisi tempora. Minus eos optio autem consequatur debitis et ratione.', 11, 4, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(11, 'Quibusdam dolorem quia fugit rerum. Quae quis exercitationem vel animi quo sit ad enim. Quidem ad incidunt aut explicabo nesciunt. Ut qui veniam reprehenderit voluptatum dolores.', 12, 4, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(12, 'Rerum non qui architecto nobis quos. Fugit dolorem culpa deleniti sunt est assumenda cupiditate animi. Enim saepe culpa ut qui quod aliquam iure.', 13, 4, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(13, 'Cum hic voluptatibus adipisci assumenda qui et qui. Dicta et tempore dolore iusto. Provident natus temporibus et tempore dicta quis incidunt sunt. Incidunt culpa non iusto nesciunt vel.', 14, 5, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(14, 'Error et qui vitae vel beatae dolorum. Et ex vel laborum aut ut cumque. Illum officia ratione quia dolorem. Nobis officia qui eaque enim consequatur et dolores.', 15, 5, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(15, 'Saepe maxime iste et consequatur sunt. Nostrum delectus dolores id eos.', 16, 5, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(16, 'Autem et consequatur molestias laboriosam odio expedita ullam. Et eos id aliquam eos accusamus. Sit doloribus aperiam id repudiandae deleniti qui. Corporis harum dolor ut aut et eos.', 18, 6, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(17, 'Similique et et qui sunt. Ipsam dignissimos aspernatur rerum accusamus porro culpa. Dignissimos voluptas reprehenderit quis aut consequatur repellat. Et ipsum non accusamus provident.', 19, 6, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(18, 'Vel soluta aut sed. Architecto saepe ut ut aut magni voluptatum mollitia. Autem quaerat et distinctio nisi unde incidunt.', 20, 6, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(19, 'Eveniet aut repellendus qui. Rem blanditiis velit nihil maxime et. Dolore animi aut et id. Tempora enim similique ut vitae.', 21, 7, '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(20, 'Quo quidem dolor ut totam voluptas dolorem beatae. Tempora et quos eius ipsum rerum qui quia. Voluptatem sed debitis ea accusantium est vel. Modi qui voluptatem iure corporis sunt labore at quod.', 22, 7, '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(21, 'Provident quod culpa vel harum aut eveniet esse. Quaerat eos dignissimos laudantium eligendi ex quod. Temporibus molestiae eligendi esse tempora.', 23, 7, '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(22, 'Possimus velit dolorem et illo corrupti vero. Nobis harum minus porro saepe ex velit. Non architecto dignissimos et mollitia.', 24, 8, '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(23, 'Repellendus aliquid ab et libero sed iure. Iure eos enim et aut modi non quo velit. Tempore eveniet quis nihil labore ipsam. Non maiores porro provident ut itaque.', 25, 8, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(24, 'Velit et molestiae amet cum ratione dolor. Velit velit natus optio. Quasi vel tempore illo eaque et.', 26, 8, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(25, 'Magnam deleniti corporis iure iusto rerum nesciunt ad. Amet nemo aut sint aperiam eum est magni ex. Odit vitae rerum odio magnam aut.', 27, 9, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(26, 'Error perspiciatis cumque est voluptas. Recusandae laborum explicabo quidem dolore ea non quia. Sunt quo ducimus necessitatibus perspiciatis cum. Blanditiis laboriosam in autem mollitia aut. Vero officiis voluptas beatae accusantium rem.', 28, 9, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(27, 'Tempora sit qui et dolores consequatur maiores. Voluptate beatae et magnam neque sed. Sapiente ut qui excepturi quae atque qui. Molestiae eos dolorum odio possimus.', 29, 9, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(28, 'Nam perferendis dolor et omnis iure impedit. Ab omnis beatae facilis hic eius voluptatem. Unde qui laborum ut. Aspernatur illo saepe itaque aut expedita. Voluptatem atque eius qui quam architecto.', 30, 10, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(29, 'Quo iusto laboriosam eius est quas. Placeat esse cum aliquam saepe nobis expedita placeat. Sint qui repellendus ratione accusamus cupiditate et. Omnis natus et itaque aliquid illo iure odio id.', 31, 10, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(30, 'Aperiam ea doloribus temporibus laudantium id. Numquam maxime cumque sed beatae eveniet. Minima dolores perferendis sit dolor. Voluptatibus nihil eum ut et incidunt ducimus. Voluptas cupiditate et et velit unde mollitia ex.', 32, 10, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(31, 'Hic maxime sit tempora velit totam repellendus est. Voluptatem perferendis aut ad cupiditate iusto debitis aut. Id consequuntur rerum sed iste quam eos et magnam.', 34, 11, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(32, 'Tenetur labore et expedita architecto. Porro exercitationem dolor nihil incidunt in laboriosam. Non repudiandae nisi officia molestiae. Dignissimos iste delectus et delectus aut est.', 35, 11, '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(33, 'Est placeat omnis nisi quis blanditiis ducimus. Animi magni doloremque ab consectetur non qui eum. Adipisci ut sapiente non labore est voluptatem.', 36, 11, '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(34, 'Alias modi ut corrupti qui non. Omnis fugit aut voluptas consequuntur ipsa eveniet. Esse magni libero nisi ab. Maiores quia vel quia nemo voluptatem itaque dolores deserunt.', 37, 12, '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(35, 'Harum aliquid expedita cumque enim omnis porro et molestias. Enim accusamus dignissimos vel quod. Quo qui optio quia eius molestiae fugiat. Enim ratione molestiae ea nemo soluta labore. Autem porro adipisci sed voluptates.', 38, 12, '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(36, 'Nulla enim labore eligendi autem non numquam. Iure porro aliquam voluptas veniam quod. Consequuntur itaque perspiciatis molestiae. Qui quaerat ea quos non est.', 39, 12, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(37, 'Et ad quia reiciendis ut doloremque sint. Sed at sed excepturi incidunt totam. Distinctio voluptates rem cum.', 40, 13, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(38, 'Inventore nam voluptatem omnis inventore. Mollitia ut perferendis incidunt quae pariatur provident quidem. Commodi voluptates praesentium occaecati.', 41, 13, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(39, 'Facere eligendi ullam et consequatur necessitatibus minus. Ut pariatur cumque omnis qui reprehenderit.', 42, 13, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(40, 'Et enim et ab. Labore qui omnis dolores. Atque in culpa repellendus aspernatur non iure. Quia ducimus illo perspiciatis iure iste delectus aliquid.', 43, 14, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(41, 'Ad sunt sint velit a. Est quaerat impedit vel accusamus quam in consequatur exercitationem. Eveniet sunt at et asperiores. Similique repellat et vero architecto qui alias repellendus.', 44, 14, '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(42, 'Autem inventore labore ducimus reiciendis consectetur dolorum nemo aut. Temporibus labore adipisci vel cum sequi delectus vel nam. Voluptatem voluptas velit nesciunt quo sed.', 45, 14, '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(43, 'Et et nemo placeat molestias sunt quibusdam cumque. Repudiandae odit sunt atque. Aperiam est fugit asperiores repellendus voluptatem esse debitis quaerat. Et aut aliquam rerum omnis.', 46, 15, '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(44, 'Aut amet autem porro eligendi distinctio debitis non quia. Quasi sapiente perferendis dolorem omnis id. Pariatur eius unde numquam dolor suscipit et maxime. Itaque consectetur assumenda sequi magnam atque eos tempore.', 47, 15, '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(45, 'Et nihil tempora velit repudiandae molestiae repellendus. Repellendus mollitia suscipit alias non officiis aut pariatur dicta. Eum aliquid eos qui dolor repellat dolore consequatur neque. Aspernatur non autem eos sed harum assumenda.', 48, 15, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(46, 'Qui in dolorem quia ipsum qui quisquam fuga. Quos est velit consequuntur labore. Ipsa optio numquam necessitatibus.', 50, 16, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(47, 'Accusamus nulla temporibus qui tenetur ratione expedita. Rerum delectus quia accusantium fugiat esse voluptas. Dolores fuga dicta tempore. Officiis nostrum aliquid reiciendis fugit. Accusantium ut ipsa et labore aspernatur et.', 51, 16, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(48, 'Dolore suscipit sunt non at. Est et enim qui molestiae explicabo hic neque libero. Et porro quidem tenetur ratione doloremque. Sapiente culpa recusandae eaque ipsam accusamus provident pariatur. Dignissimos ut praesentium aut occaecati sit.', 52, 16, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(49, 'Tempora molestias reprehenderit dolore tenetur animi saepe culpa. Iste qui est explicabo autem.', 53, 17, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(50, 'Perferendis sunt omnis consectetur. Nostrum ducimus sit natus. Aut omnis reiciendis harum architecto.', 54, 17, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(51, 'Ab ab ipsa beatae aliquid eum aperiam explicabo. Veritatis officiis sit incidunt temporibus nostrum. Reiciendis impedit et pariatur id. Voluptatibus nihil perspiciatis consequuntur architecto facilis ab dolorem.', 55, 17, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(52, 'Necessitatibus quibusdam et eveniet officia nesciunt quis. Doloribus molestias rerum aut ipsam. Nisi accusamus consectetur vel voluptatem. Sint dolorem deleniti vitae dignissimos eos.', 56, 18, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(53, 'Fugit quasi repudiandae dolores aut quasi ullam. Porro vel non mollitia. Sunt odit et quibusdam vel veritatis dolor voluptatem. A dolorum sequi ipsa a.', 57, 18, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(54, 'Consectetur mollitia cumque laborum architecto dolores. Temporibus necessitatibus consequatur non ipsam tempore odit. Iure recusandae sit quaerat consequatur omnis et cum. Iure molestias fuga iste.', 58, 18, '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(55, 'Sed et qui rerum est. Nihil labore architecto non aut omnis libero. Odit reiciendis omnis laudantium magnam dolorum eos alias. Vel a qui voluptatem ea quo tempora dolorum.', 59, 19, '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(56, 'Asperiores distinctio voluptate veritatis dicta aliquid libero doloremque. Totam veritatis consequatur quia sed eligendi dolorum dolore. Enim ut quo velit at vel. Quia ipsa harum quisquam dicta id et sed.', 60, 19, '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(57, 'Expedita ducimus quo debitis quo et consequatur aut voluptatum. Rerum fuga facilis explicabo.', 61, 19, '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(58, 'Natus natus culpa enim eius. Similique nam minima vitae pariatur aut possimus. Ratione totam quibusdam voluptatem enim ipsa aliquam dolores.', 62, 20, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(59, 'Eaque dolores dolore voluptates ea. Architecto alias pariatur ad voluptatem. Et et corrupti quis quia nemo molestiae. Qui dolor ea consequatur omnis blanditiis et ut.', 63, 20, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(60, 'Voluptatibus illo impedit cum. Vel dignissimos enim ut in. Dolore a inventore sed error. Voluptatem recusandae itaque occaecati provident corrupti officiis dolorum.', 64, 20, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(61, 'Provident esse non enim recusandae vel nobis sunt. Deserunt saepe maxime quibusdam. Sapiente facilis rerum ut et repellat. Aperiam assumenda iure ipsam blanditiis sint.', 66, 21, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(62, 'Voluptatem non non dolores ipsa voluptatem aspernatur quia similique. Doloribus tempore est nihil est voluptatem. Iusto voluptas accusamus molestiae aut culpa non earum. Illo autem et eaque id. Ab voluptas quidem repudiandae in reiciendis autem assumenda.', 67, 21, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(63, 'Nihil quas non qui quam dolorem vel. Recusandae maxime sapiente vitae dicta sed voluptas porro. Dolor dolorem architecto esse iste numquam.', 68, 21, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(64, 'Nostrum eligendi consequatur aspernatur nemo quisquam. Porro earum voluptate rerum aut officia non.', 69, 22, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(65, 'Tempore facilis deserunt autem reprehenderit enim laboriosam est. Delectus fugit optio quibusdam est. Dolores aut quis et nihil assumenda non autem.', 70, 22, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(66, 'Deserunt quia assumenda vel nihil. Necessitatibus adipisci amet expedita autem doloremque. Consequuntur tempora velit ea voluptatibus pariatur quaerat. Vero provident perspiciatis voluptatem laborum minus autem.', 71, 22, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(67, 'Qui molestiae maiores vero hic non incidunt. Sed molestiae ducimus qui mollitia soluta nihil ipsum. Ea officia quo autem est eius ut fugit. Quam aut quae quia nulla nihil voluptate doloremque.', 72, 23, '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(68, 'Sed culpa facere in quisquam non nesciunt tenetur. Reiciendis aperiam molestias reprehenderit eveniet.', 73, 23, '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(69, 'Molestiae in omnis in dignissimos. Consequatur alias in eum nihil laudantium aut. Asperiores sint quaerat veritatis quod adipisci.', 74, 23, '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(70, 'Officiis recusandae et ullam debitis aperiam beatae iusto. Enim non quisquam dolorum libero aut. Soluta sit quis est quia odit qui veritatis. Et est et eius temporibus.', 75, 24, '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(71, 'Reprehenderit a eaque qui. Nisi occaecati recusandae ducimus sunt magnam consequatur. At assumenda asperiores adipisci quaerat voluptas.', 76, 24, '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(72, 'Unde quod sint quis vel. Porro fugit quaerat quas aperiam id molestias rerum. Recusandae iure possimus provident.', 77, 24, '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(73, 'Ut odit velit at earum est cumque mollitia. Expedita ab enim repudiandae mollitia accusamus non. Ipsam dolore voluptatem ad neque.', 78, 25, '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(74, 'Velit et reprehenderit officiis accusamus dolorem. Nulla at nihil debitis. Aut tenetur at placeat deserunt nemo.', 79, 25, '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(75, 'Expedita et ad optio aspernatur. Illo tempora vero sit et optio. Voluptates ut ipsum qui. Veritatis soluta consequatur ut voluptates quo quia corrupti.', 80, 25, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(76, 'At culpa quod vitae. Eveniet aliquid doloribus facilis magni aspernatur fugiat quo. Odio eum distinctio suscipit aspernatur. Error odit repudiandae error et sit repellat.', 82, 26, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(77, 'Molestias numquam facere ea modi doloremque corrupti ut. Soluta officiis possimus dignissimos. Maiores distinctio repellat et perspiciatis quam. Et libero esse qui enim quos.', 83, 26, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(78, 'Cupiditate commodi tempora similique aut. Cupiditate cupiditate sunt optio. Quas impedit aut est fuga temporibus earum eum. Voluptas suscipit maiores magnam nesciunt est. Aut explicabo autem deleniti voluptatem.', 84, 26, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(79, 'Rerum enim rerum hic velit est quia dolor dolor. Non nihil repudiandae officiis quo autem architecto. Saepe velit et accusamus ut enim corporis.', 85, 27, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(80, 'Ullam rerum autem quia sed laudantium fugit officiis voluptatem. Soluta placeat enim enim excepturi assumenda ratione dolores. Qui eos quaerat sunt animi.', 86, 27, '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(81, 'Nobis voluptatem aliquam voluptatibus voluptas. Perferendis necessitatibus voluptatum consequuntur est occaecati id quia. Velit et debitis quis aut delectus qui iusto.', 87, 27, '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(82, 'Est aliquam rerum adipisci minus veritatis. Voluptatibus ut tenetur maxime id sed voluptas. Rerum iure maxime nisi minima.', 88, 28, '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(83, 'Voluptas consequatur facilis pariatur qui et. Consequatur sit aperiam doloribus eligendi. Sint totam atque laborum illo nisi. Fugit saepe laboriosam quod et voluptas illo id.', 89, 28, '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(84, 'Ab adipisci eveniet aspernatur quis totam et non sint. Tenetur quaerat et doloribus tenetur. Necessitatibus non omnis repudiandae nihil blanditiis nobis quia.', 90, 28, '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(85, 'Pariatur quia recusandae voluptatem fuga debitis consequatur. Provident et dolores ratione aliquid sint. Quibusdam itaque consectetur ea molestiae aspernatur et perspiciatis.', 91, 29, '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(86, 'Vel non excepturi sint voluptatibus occaecati sed vitae. Expedita reiciendis ab beatae repudiandae sed. Asperiores nihil accusantium temporibus eaque nihil similique eveniet. Consequatur exercitationem itaque minus sapiente eius nam.', 92, 29, '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(87, 'Voluptate odio eaque quo vero dicta. Dolorum aut ut exercitationem hic. Aut temporibus vel vero incidunt ipsum est. Et id qui commodi aliquid et quas.', 93, 29, '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(88, 'Est aperiam a consequatur earum est. Eligendi possimus est et omnis eos.', 94, 30, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(89, 'Quas vel rerum numquam fuga rem laboriosam consectetur. Aut qui non et maxime omnis cumque. Distinctio eum pariatur numquam iure. Velit quisquam qui aut facilis enim soluta.', 95, 30, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(90, 'Aut fugit eveniet architecto quis. Nostrum reiciendis ipsum architecto eligendi nobis nihil. Dolore qui debitis ab ducimus. Earum voluptas odio non veritatis rerum aut nostrum repudiandae. Dolorum quidem iure tenetur dolor.', 96, 30, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(91, 'Commodi laudantium autem et provident necessitatibus accusantium veniam ea. Voluptates quam et sit nostrum. Eum repudiandae sapiente unde itaque ut odio nisi.', 98, 31, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(92, 'Ducimus earum quae quidem est at. Dolor ex quia est id. Perferendis minus qui ut veritatis quod optio et.', 99, 31, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(93, 'Odit qui velit temporibus aut rerum veritatis. Dolorum ut ex doloremque blanditiis dignissimos unde corrupti. Culpa aut beatae inventore tempora omnis quas sed. Corrupti quaerat iure eos.', 100, 31, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(94, 'Nihil odit animi cupiditate. Quisquam nobis molestias voluptas eum eaque et. Architecto velit vitae in non labore dicta tempore. Ullam odit dolores tempora voluptatibus suscipit fugiat non repellat.', 101, 32, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(95, 'A excepturi vel et officia asperiores et. Ullam consequatur quis quasi. Aspernatur voluptas cumque aut pariatur quia vel.', 102, 32, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(96, 'Velit quae sit harum sunt qui ex blanditiis. Quod accusantium magnam ex ab ducimus amet est. Quo atque cum dicta temporibus. Ex magnam nam sint. Quis occaecati eos labore natus vel.', 103, 32, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(97, 'Odio tempore expedita molestiae animi incidunt non veniam sint. Est et praesentium quisquam expedita non necessitatibus qui. Et enim sint qui adipisci velit maxime velit.', 104, 33, '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(98, 'Nulla tempora amet est est ipsum. Doloremque occaecati laboriosam sit consequatur blanditiis.', 105, 33, '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(99, 'Beatae numquam consequatur odio tempora amet et dolores. Ut reprehenderit praesentium enim odio. Id et dolores et ullam aut.', 106, 33, '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(100, 'Sequi ut excepturi voluptatibus error voluptatem alias cupiditate. Quis libero sed magni non dolorem sed veniam. Et et sed dolor explicabo.', 107, 34, '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(101, 'Autem ipsam consectetur veritatis et sunt accusantium. Ut sunt rerum est impedit tempora quas. Excepturi quia distinctio mollitia saepe aut ut. Illo dignissimos quas voluptatum aspernatur dolorum.', 108, 34, '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(102, 'Earum et corrupti beatae sequi facilis eveniet magnam iste. Nostrum quia debitis tenetur doloribus odio earum culpa nihil. Veritatis ea voluptatem totam illo sapiente dicta.', 109, 34, '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(103, 'Doloribus fugiat vero architecto est fuga. Doloremque suscipit ipsa iste itaque. Dolor unde et animi unde fugiat. Ipsa est sed dolorem explicabo ut quia. Culpa consequatur ullam rem dolorem ipsa temporibus.', 110, 35, '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(104, 'Cum facilis mollitia similique ut dolorum totam quos. Quas corporis dolor praesentium nemo ipsa eveniet. Laudantium id architecto sed temporibus earum qui porro id.', 111, 35, '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(105, 'Aut accusantium optio exercitationem et. Deserunt illum omnis quia error. Eius illum aut quidem error repellat fugit. Provident et tempora incidunt at dolor provident consequatur recusandae.', 112, 35, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(106, 'Incidunt quaerat beatae debitis placeat totam. Voluptatem est illo omnis et facilis molestias beatae. Aut beatae non ut qui rerum. Harum est exercitationem autem autem hic. Sed veniam officia hic voluptatem nihil.', 114, 36, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(107, 'Rem numquam totam dolore et laudantium. Illo et omnis maiores laudantium cupiditate id quibusdam. Pariatur enim ipsa ut vero dolor assumenda molestiae. Omnis deserunt numquam voluptas quidem quam consequatur dicta.', 115, 36, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(108, 'Suscipit consequatur voluptate deleniti tempore aut quisquam. Et enim voluptas vero iusto. Dolorem tempora voluptatem eius sunt.', 116, 36, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(109, 'Et architecto suscipit deleniti sint molestiae perspiciatis eveniet. Voluptatum veniam est facere sit enim unde. Fugiat nesciunt molestiae et eveniet excepturi rerum. Ducimus eius ipsam occaecati molestiae dignissimos aut.', 117, 37, '2025-06-27 04:18:48', '2025-06-27 04:18:48'),
(110, 'Culpa deserunt eligendi error laudantium laudantium qui. Dolorem qui quidem ipsum nostrum in eos. Modi tenetur blanditiis sed sapiente aut.', 118, 37, '2025-06-27 04:18:48', '2025-06-27 04:18:48'),
(111, 'Sequi quaerat veritatis aut. Ut eos eaque tempore voluptas et excepturi et. Cumque quo molestias consequatur rem est. Magnam sapiente modi saepe doloremque soluta aliquam autem.', 119, 37, '2025-06-27 04:18:48', '2025-06-27 04:18:48'),
(112, 'Est est sed ipsum quod. Et accusamus dolor omnis id maxime eos omnis aliquid. Nihil et quas labore ipsum quae. Sed sit nesciunt possimus voluptatem molestiae.', 120, 38, '2025-06-27 04:18:49', '2025-06-27 04:18:49'),
(113, 'Repellendus reiciendis et laboriosam reprehenderit. Dolore quia maxime eius rerum odio sunt.', 121, 38, '2025-06-27 04:18:49', '2025-06-27 04:18:49'),
(114, 'Non provident excepturi commodi tenetur saepe cumque eveniet. Ut ipsa quis placeat odio reiciendis consequatur sed quos. Fugiat repellat a et laborum quis. Et est sed sint ipsum velit impedit. Voluptatem minima hic maiores modi qui.', 122, 38, '2025-06-27 04:18:50', '2025-06-27 04:18:50'),
(115, 'Et nostrum exercitationem quia sit qui perspiciatis vel ut. Officia ipsam dolor odit quibusdam sed. Corporis nostrum inventore provident explicabo tempora.', 123, 39, '2025-06-27 04:18:50', '2025-06-27 04:18:50'),
(116, 'Et saepe commodi reprehenderit suscipit nemo reprehenderit. Ut sint aut necessitatibus incidunt quia. Minus et nulla ducimus dolorem ut nisi sunt. Pariatur recusandae molestiae ut delectus omnis blanditiis blanditiis consequuntur.', 124, 39, '2025-06-27 04:18:50', '2025-06-27 04:18:50'),
(117, 'Fugiat similique quia ipsum qui tempora. Reprehenderit aut iusto est suscipit qui consequatur aut. Et eveniet est eius sint laboriosam pariatur.', 125, 39, '2025-06-27 04:18:51', '2025-06-27 04:18:51'),
(118, 'Temporibus voluptate in iusto odio et dolore. Asperiores molestiae natus aliquam eos saepe quidem sit. Ipsam consequuntur quod vero suscipit repellat. Totam mollitia soluta omnis laborum earum quo sit.', 126, 40, '2025-06-27 04:18:51', '2025-06-27 04:18:51'),
(119, 'Autem amet nostrum omnis libero architecto minus atque tenetur. In enim dolor reprehenderit quis sunt vel. Ipsa est voluptas possimus nobis.', 127, 40, '2025-06-27 04:18:52', '2025-06-27 04:18:52'),
(120, 'Veniam doloribus in velit et voluptatem aliquam. At excepturi quia provident doloremque. Quos mollitia illo ea voluptatem numquam sequi maxime quasi.', 128, 40, '2025-06-27 04:18:52', '2025-06-27 04:18:52'),
(121, 'Ut porro voluptate corporis nihil error nihil sint. Ut nihil deleniti consequatur ipsa iusto consequatur ut voluptatem. Neque adipisci aut magni maiores. Quisquam et deleniti culpa vero sint.', 130, 41, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(122, 'Sint tempora enim minima. Quasi a nemo inventore et. Saepe aut eius tenetur officiis aliquam similique illo cupiditate. Et quis alias quas reprehenderit eaque.', 131, 41, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(123, 'Enim sed qui ab quia repellat voluptatem laborum. Aspernatur eum asperiores ipsam non aut. Dolores magnam laborum excepturi odit.', 132, 41, '2025-06-27 04:18:54', '2025-06-27 04:18:54'),
(124, 'Optio nisi sequi assumenda autem et. Eius minima omnis itaque quia accusantium tempore. Esse illo modi a.', 133, 42, '2025-06-27 04:18:54', '2025-06-27 04:18:54'),
(125, 'Perferendis est iusto rem perspiciatis aspernatur repellendus. Earum ex sed quam. Est ut quos quo cumque.', 134, 42, '2025-06-27 04:18:54', '2025-06-27 04:18:54'),
(126, 'Et distinctio id nobis sint molestiae. Nemo tenetur suscipit laboriosam sed. Nesciunt voluptate aliquid omnis ipsa animi. Cum quisquam laudantium architecto aliquam voluptas in aliquam voluptatem.', 135, 42, '2025-06-27 04:18:55', '2025-06-27 04:18:55'),
(127, 'Aperiam facilis enim est repudiandae expedita. Vero eligendi totam odit qui qui quas sunt. Nisi qui recusandae eligendi voluptatem a. Impedit ut eum exercitationem eos sit voluptatem doloremque nulla. Facilis eum quia voluptatem quo quia adipisci reiciendis at.', 136, 43, '2025-06-27 04:18:55', '2025-06-27 04:18:55'),
(128, 'Occaecati voluptatem rerum omnis debitis. Animi sunt molestiae similique rerum. Rem dolores corporis ullam deserunt assumenda assumenda. Sint ex dolorum cum aut inventore nihil.', 137, 43, '2025-06-27 04:18:55', '2025-06-27 04:18:55'),
(129, 'Rem deserunt nobis in unde nihil sed exercitationem. Deserunt sequi aut modi ab quia ipsam. Iure aut voluptatem voluptas autem ipsum minus est.', 138, 43, '2025-06-27 04:18:56', '2025-06-27 04:18:56'),
(130, 'Aut ut a in totam non. Dolore commodi temporibus aut consequatur incidunt quos. Ut temporibus et assumenda et in et molestias. Ut nisi ullam quis et quia facilis possimus qui.', 139, 44, '2025-06-27 04:18:56', '2025-06-27 04:18:56'),
(131, 'Porro amet illum quisquam autem laborum nemo. Nihil vitae odit iste dolor asperiores autem aut. Quasi libero mollitia sint dolores.', 140, 44, '2025-06-27 04:18:57', '2025-06-27 04:18:57'),
(132, 'Qui est eum inventore repudiandae accusantium suscipit sit qui. Necessitatibus ducimus et quae a adipisci pariatur et. Quaerat velit vero et deserunt nobis sapiente aliquam nihil. Ut dicta atque nostrum at ut aliquam.', 141, 44, '2025-06-27 04:18:57', '2025-06-27 04:18:57'),
(133, 'Qui soluta fugit veritatis. Inventore facere fugit quisquam.', 142, 45, '2025-06-27 04:18:57', '2025-06-27 04:18:57'),
(134, 'Ex minima aspernatur sit veritatis. Dolorem qui autem nesciunt labore. Ut laudantium et laborum quo est dolorem. Ipsam esse libero nemo laboriosam distinctio quos.', 143, 45, '2025-06-27 04:18:58', '2025-06-27 04:18:58'),
(135, 'Et tempore harum recusandae deleniti alias non sed. Ducimus repellendus perferendis quaerat dolore ut necessitatibus dolor. Architecto et veniam molestiae aut dolores. Numquam et consequatur quo rerum.', 144, 45, '2025-06-27 04:18:58', '2025-06-27 04:18:58'),
(136, 'Nihil nobis magnam ipsam error repellat officia neque. Voluptate natus harum hic maxime est architecto. Nihil et assumenda dolore quia.', 146, 46, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(137, 'Quidem est tempore voluptates accusamus ea quibusdam. Eius ut alias sit tempora itaque sit nostrum.', 147, 46, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(138, 'Hic ad adipisci explicabo nulla recusandae aspernatur quaerat. Qui incidunt delectus voluptas eos assumenda cum. Saepe distinctio omnis quos natus.', 148, 46, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(139, 'Reprehenderit est soluta repellendus natus ab accusantium et. Atque modi exercitationem repellendus et. Vitae veniam aut tempora.', 149, 47, '2025-06-27 04:19:00', '2025-06-27 04:19:00'),
(140, 'Nemo qui cupiditate quis quia explicabo. Sed sapiente recusandae eaque soluta consectetur omnis dicta tenetur.', 150, 47, '2025-06-27 04:19:00', '2025-06-27 04:19:00'),
(141, 'Aliquid qui odio autem voluptas mollitia. Odio necessitatibus sint doloribus voluptatibus occaecati. Ullam vel numquam quas vel alias ducimus quidem nihil. Qui similique hic alias excepturi voluptatum aut saepe itaque.', 151, 47, '2025-06-27 04:19:00', '2025-06-27 04:19:00'),
(142, 'Enim voluptatem et assumenda. Omnis omnis excepturi quia qui ipsa error. Voluptatum accusamus in maiores ab rerum est.', 152, 48, '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(143, 'Qui modi nisi nostrum cumque et. Amet quod at sed. Quis temporibus veritatis omnis.', 153, 48, '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(144, 'Enim praesentium aut unde non consequatur. Necessitatibus cumque ea consequatur tempore. Rerum ullam animi rerum velit voluptas nobis totam. Maiores id illo accusantium molestiae.', 154, 48, '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(145, 'Nesciunt explicabo officiis iusto sed quis fugit voluptatem. Minima amet expedita velit consectetur voluptatem ad. Fuga enim quia quia maxime sint et. Voluptas eveniet rem iure tempora.', 155, 49, '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(146, 'Laborum sint possimus nobis. Provident est numquam quaerat incidunt iusto. At nisi est aut fugit. Vero distinctio consectetur eos libero minima non amet eveniet.', 156, 49, '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(147, 'Tempore et alias magnam asperiores sed animi eveniet. Cupiditate nam quo vel ut. Beatae quisquam ut similique vitae possimus voluptas debitis. Maiores ut laudantium adipisci nemo.', 157, 49, '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(148, 'Aut nesciunt sequi velit. Numquam consequatur quod distinctio nemo autem reiciendis sed. Eum nemo odio cumque exercitationem modi. Quod qui voluptate odit et ut consequuntur.', 158, 50, '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(149, 'Voluptatem beatae perferendis expedita harum voluptatem recusandae ea. Et labore quos est quisquam eos. Quisquam quibusdam autem molestiae rerum ullam cupiditate ea fuga.', 159, 50, '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(150, 'Quos quam qui mollitia eius molestiae et. Sit delectus eos cumque ea. Saepe rerum dolorem vel laboriosam ut. Corporis eveniet vitae ipsam a ullam commodi.', 160, 50, '2025-06-27 04:19:03', '2025-06-27 04:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `blog_failed_jobs`
--

DROP TABLE IF EXISTS `blog_failed_jobs`;
CREATE TABLE IF NOT EXISTS `blog_failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_jobs`
--

DROP TABLE IF EXISTS `blog_jobs`;
CREATE TABLE IF NOT EXISTS `blog_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_job_batches`
--

DROP TABLE IF EXISTS `blog_job_batches`;
CREATE TABLE IF NOT EXISTS `blog_job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_migrations`
--

DROP TABLE IF EXISTS `blog_migrations`;
CREATE TABLE IF NOT EXISTS `blog_migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_migrations`
--

INSERT INTO `blog_migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_27_061252_create_personal_access_tokens_table', 1),
(5, '2025_06_27_062104_create_posts_table', 1),
(6, '2025_06_27_062105_create_comments_table', 1),
(7, '2025_06_27_062109_create_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_password_reset_tokens`
--

DROP TABLE IF EXISTS `blog_password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `blog_password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_personal_access_tokens`
--

DROP TABLE IF EXISTS `blog_personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `blog_personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_personal_access_tokens_token_unique` (`token`),
  KEY `blog_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_personal_access_tokens`
--

INSERT INTO `blog_personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 161, 'auth-token', 'a98341fcbb8584414b7ae7cb8f0c8260f304950e576c259bd9d893a7d1a60996', '[\"*\"]', '2025-06-27 04:51:25', NULL, '2025-06-27 04:39:12', '2025-06-27 04:51:25'),
(2, 'App\\Models\\User', 161, 'auth-token', 'f4ac66d015840caed357e09a788de5080c3a0d8da8279344776faebd6f86337c', '[\"*\"]', '2025-06-28 00:37:03', NULL, '2025-06-27 04:46:19', '2025-06-28 00:37:03'),
(3, 'App\\Models\\User', 161, 'auth-token', 'd63e35a388bcd38ff3547cc9c3a524665780a51da4c7b085a9691446f0a71d5e', '[\"*\"]', NULL, NULL, '2025-06-27 04:50:11', '2025-06-27 04:50:11'),
(4, 'App\\Models\\User', 162, 'auth-token', 'f81ddcd7b4a3bb5a0fcba7f93157494f2b57ec6e47f6a206044c25f5b99a7362', '[\"*\"]', '2025-06-28 02:46:22', NULL, '2025-06-28 00:15:46', '2025-06-28 02:46:22'),
(5, 'App\\Models\\User', 162, 'auth-token', 'cdd5b72046ff2cd00949cbf0adb05658a77ebcad54aa0a60c7ea0bdcc3db922e', '[\"*\"]', NULL, NULL, '2025-06-28 02:01:32', '2025-06-28 02:01:32'),
(6, 'App\\Models\\User', 163, 'auth-token', 'd9a0bc03f9e02e20d3d23e2d89df8a4a6704f5fe5441d5c82aff8444530c7f7e', '[\"*\"]', NULL, NULL, '2025-06-28 02:01:56', '2025-06-28 02:01:56'),
(7, 'App\\Models\\User', 164, 'auth-token', 'a7a52c88184615a8a18cbf780e1f0509d0b3a766305c9578fefc765e0cee4eb7', '[\"*\"]', NULL, NULL, '2025-06-28 02:12:47', '2025-06-28 02:12:47'),
(8, 'App\\Models\\User', 164, 'auth-token', '199ad7a2dc7134cfac3c9f5223ded60c39d677646bda7765f4e7c941b836c04b', '[\"*\"]', NULL, NULL, '2025-06-28 02:14:09', '2025-06-28 02:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_posts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Provident exercitationem est nobis quam.', 'Ut error id voluptatem sed consequatur nesciunt. Dolorem iure velit id accusamus. Sunt nostrum voluptas doloremque iure at vel.\n\nEt magnam laboriosam et aut maxime. Reiciendis et ipsa illum dolorem eum maiores atque. Aut illo quis aliquid ea odit temporibus. Cum vero et commodi.\n\nCum atque aperiam autem quia. Accusamus et odit dignissimos. Sit debitis non ad sed architecto.', 1, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(2, 'Pariatur distinctio reprehenderit adipisci est doloribus voluptates in.', 'Voluptatem quibusdam quia et et repudiandae voluptas. Fugiat enim voluptatem voluptas delectus ab veritatis architecto. Ipsa voluptas distinctio facilis perferendis voluptatum iusto. Aut beatae voluptatibus aut minima blanditiis saepe.\n\nDoloremque sit eveniet ullam et. Repudiandae commodi magnam cupiditate amet. Doloribus et at voluptas vel doloremque aut sed facere. Quidem provident officia doloribus veniam.\n\nMagni sed ut laudantium accusamus. Vel explicabo sit voluptatem impedit. Neque deserunt et ut vel commodi aperiam. Sit reprehenderit et quos ad eum harum sapiente. Possimus laboriosam maxime est at saepe sed id.', 1, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(3, 'Neque quae sed incidunt et ex numquam rerum.', 'Velit velit rerum omnis id temporibus. Voluptas voluptatem dolores odit numquam omnis aut. Voluptas animi aut officiis corrupti. Sit vitae omnis eligendi omnis illum ullam dolore tenetur. Sapiente similique debitis maxime eaque est.\n\nError ea voluptas illo. Suscipit consequatur vel est ipsam. Architecto corrupti quasi voluptatem in.\n\nMagnam est adipisci voluptatem nostrum culpa libero alias. Enim ipsam est et aut doloribus quia. Facere est sint tempora et deleniti dignissimos.', 1, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(4, 'Dolorem recusandae ducimus numquam officiis commodi corporis aliquid.', 'Qui architecto laborum ut reprehenderit autem. Quia minima maiores inventore aut quis qui. Fugiat voluptatem autem consequatur.\n\nQuos dolores aspernatur omnis enim. Rem ad quos reiciendis ad quam repellat quo. Est tenetur alias eligendi perspiciatis consequuntur ad est. Exercitationem sed et sed.\n\nPossimus qui qui voluptates quo molestiae. Officia ab provident delectus quia. Itaque est commodi commodi quos. Laborum molestias debitis eum nostrum maxime similique.', 1, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(5, 'Dolor et vel voluptatum.', 'Dolor hic et excepturi. Placeat rem dolorem rerum eum. Voluptas alias quibusdam animi aut quae. Et ipsam perferendis laborum tempora explicabo odit facilis. Cum molestias aliquid laboriosam quos.\n\nRepudiandae quia totam optio nihil sit ipsa. Distinctio non incidunt minima. Iusto quisquam voluptatem et quis natus dicta animi.\n\nCumque delectus sit fuga officiis expedita repellat culpa. Minus corrupti ut consequuntur deserunt repellat et. Nemo nihil ea eos illum totam.', 1, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(6, 'Aliquam ullam ipsam eligendi fugit consectetur.', 'Officia quos aliquam voluptatem labore. Dolor maxime sed distinctio nemo iusto.\n\nOdio et dolorum itaque molestiae dolorum ut. Repudiandae dolore fugit omnis. Ducimus sapiente explicabo vel.\n\nExpedita ut enim quaerat molestiae exercitationem debitis dignissimos. In architecto eos sapiente maxime velit in. Vitae qui laborum quibusdam libero.', 17, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(7, 'Voluptas ipsa eum doloremque ipsum minima rerum.', 'Laudantium ad et suscipit nam. Consectetur deleniti animi voluptatem quae ipsa quia aliquid maiores. Iusto praesentium eos ipsum minus perferendis laudantium id omnis. Dolores maxime dolorum ab.\n\nVelit error eveniet exercitationem rem ullam dolor. Beatae soluta nam ullam unde officiis. Et dolores ratione officiis sit itaque molestias. Cum omnis et in possimus ut commodi.\n\nQuisquam hic quod dolor ea odit distinctio tenetur aut. Quis ipsa illo cumque sunt provident aut. Est at libero est enim. Repellendus aut aut numquam unde excepturi aliquam.', 17, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(8, 'Aut nostrum iure vel.', 'Repudiandae distinctio sit ut corporis quia autem. Autem officiis natus recusandae odio doloribus. Eos reiciendis laboriosam eveniet facere voluptatum et doloremque.\n\nQui quisquam nam maiores sit nobis natus vitae dolorem. Voluptatem laboriosam et quas placeat eum deleniti expedita. Corporis quo in voluptatem. Sequi mollitia blanditiis repellendus enim id officiis amet.\n\nMaiores id ipsa saepe porro asperiores nemo facere. Inventore aliquam maxime necessitatibus dignissimos non non aut. Laboriosam dolor veritatis vel recusandae et.', 17, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(9, 'Praesentium rerum illum molestias fuga commodi.', 'Sequi numquam ut enim asperiores assumenda tenetur rerum. Sit dolor totam non laboriosam minus. Nobis enim voluptatem iste quod. Itaque ut inventore quod.\n\nCulpa inventore voluptatem hic voluptatem ullam recusandae asperiores. Nam impedit illum dolores dolor ipsum facilis sit. Modi repellat hic iure deserunt blanditiis ut illum. Sed illo totam necessitatibus dicta.\n\nMolestiae voluptate aliquid officia excepturi sint cum dolore. Aut autem rerum est iusto error.', 17, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(10, 'Maxime est dolores sit qui qui non.', 'Facilis et vitae ut nam explicabo asperiores expedita voluptate. Atque dolores at et animi. Quibusdam eos tempora est hic rerum porro. Qui et eius ullam vitae laudantium atque.\n\nOptio et autem quam quis doloribus. Perspiciatis quis enim officia impedit voluptas aliquid blanditiis. Ad est consequatur animi voluptas odio. Non non dolores nisi consequatur tenetur vel autem.\n\nQuas aperiam adipisci vitae repellat dolore sed. Ut autem provident ad est. Voluptatibus incidunt repellat ab porro et.', 17, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(11, 'Consequatur in numquam minus aut atque esse.', 'Incidunt eligendi molestias nesciunt nobis impedit et. Ullam repudiandae saepe est incidunt aliquam ullam quibusdam. Aspernatur voluptatem delectus tempora quia illo voluptatem.\n\nAspernatur blanditiis aut laboriosam repellendus quis voluptatem tempora labore. Aliquid qui debitis sit possimus doloremque sequi consequatur. Dolorem velit ut nostrum amet magnam. Ea sit veniam minima tempore mollitia et tenetur. Voluptas nobis placeat quia sapiente placeat.\n\nDoloribus nemo est labore possimus. Ut aut dolor ducimus. Cum itaque nisi est eos atque aspernatur.', 33, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(12, 'Quae optio dolores autem ex.', 'Et architecto temporibus commodi numquam quia vero. Nihil ratione atque nihil porro. Id a qui iste. Pariatur enim dolor inventore.\n\nQuisquam adipisci ut culpa corrupti. Vitae asperiores veritatis in corporis.\n\nExercitationem ipsam voluptatibus sunt error omnis. Commodi id iure cum aliquid aut reprehenderit ut.', 33, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(13, 'Veritatis eligendi praesentium nesciunt neque asperiores molestiae aut.', 'Voluptatum non quia fugiat inventore ut dolore. Et officia adipisci aut iusto quisquam et. Suscipit reiciendis et quas ut id architecto voluptatem ipsum. Iste sit necessitatibus at molestiae iste alias.\n\nNihil distinctio eius illum aspernatur est rerum accusamus sed. Laboriosam id sed est voluptate dolores nisi. Sit tenetur amet voluptatem voluptatem.\n\nDebitis at quas ut voluptatum ipsam enim. Commodi cupiditate facilis voluptatem dignissimos. Molestiae quidem quis soluta fugiat aperiam. Deserunt aut omnis aut asperiores et animi sint nihil.', 33, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(14, 'Adipisci ipsam veritatis est nihil sed officiis ut.', 'Vitae ut incidunt facere consectetur maxime temporibus eligendi. Quo voluptas vel consequatur ipsum reprehenderit placeat. Ut dolorem aut non doloremque error molestiae.\n\nMollitia harum cumque ut nihil officiis rem provident beatae. Delectus corrupti sit quia voluptas vel quia quae. Aut nostrum dolore unde quia dignissimos atque.\n\nEnim debitis consequuntur debitis fuga et unde. Non dolores excepturi asperiores deserunt. Architecto quis fugiat eius omnis. Odit voluptas sit explicabo laboriosam. Beatae distinctio explicabo saepe magnam velit suscipit.', 33, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(15, 'Facilis modi ut laudantium voluptates voluptate dolor.', 'Ea excepturi dolor et molestiae perspiciatis est. Architecto ipsa dolore quia laudantium qui. Sed qui earum ea repellendus est.\n\nEnim ut autem ipsam officiis debitis. Aliquid est sunt mollitia. Reiciendis iste quod maiores quia placeat autem. Est maxime quia et. Qui unde rerum cupiditate commodi libero repellendus magni.\n\nSunt sit impedit ducimus voluptates voluptas occaecati et. Natus explicabo quam voluptatum exercitationem. Nam unde quae alias consequatur sunt pariatur.', 33, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(16, 'Omnis totam quia maxime explicabo.', 'Laborum corrupti vel et neque cupiditate veniam illo. Facere aut aperiam tempora architecto vel nobis. Quam quia numquam aspernatur. In voluptatibus inventore molestiae culpa architecto est.\n\nReiciendis et dolorem itaque sapiente et. Sequi debitis voluptatibus et iste veritatis quaerat. Inventore debitis molestiae quae voluptas et explicabo.\n\nEnim molestiae consequatur quis quae. Itaque quia provident numquam sunt dolorum voluptas et nostrum. Dolorem ut commodi possimus voluptatem eligendi ea quo nulla. Fugiat quo hic dicta commodi quo et qui.', 49, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(17, 'Perferendis laudantium velit blanditiis et qui.', 'Vel officia incidunt harum necessitatibus dolorum cupiditate omnis ratione. Illum similique quisquam cum et dolorum totam ut. Itaque corrupti minima sit sunt necessitatibus. Enim sit dolorem in dignissimos itaque.\n\nRepudiandae et et et similique tenetur nobis. Incidunt amet aliquam praesentium molestiae in. Rerum nam inventore sit.\n\nNon et quaerat quo explicabo incidunt enim temporibus. Nihil sed exercitationem in dolor natus ab ut. Ex ut alias necessitatibus fugit id velit.', 49, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(18, 'Iusto eius ipsam voluptatem cupiditate harum aut.', 'Hic pariatur eligendi recusandae aspernatur. Et dolor sequi quam magnam architecto ullam. Repellat sunt hic error nihil velit delectus quaerat.\n\nDolorem reprehenderit sapiente ratione adipisci quaerat. Soluta voluptates aut voluptatum ut nemo et delectus vel.\n\nQuia et sit reprehenderit animi excepturi. Voluptatem qui sint provident. Molestiae quibusdam quia quia quia sunt.', 49, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(19, 'Pariatur ad doloremque odit libero voluptatem qui.', 'Reiciendis aliquam sequi omnis ut dolores odit. Et rerum quaerat rerum dolorem et. Necessitatibus temporibus quidem voluptates totam. Repudiandae dolores quia velit sed et incidunt sint molestiae.\n\nPerspiciatis molestias eum sunt sed cum ut quasi. Commodi quia maiores officia reiciendis aut. Maxime doloremque omnis animi sed et.\n\nDolorem alias sit recusandae et. Numquam odit est dolore est dolor reprehenderit soluta. Facere est consequatur magni ipsam sed est.', 49, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(20, 'Praesentium similique quisquam possimus vitae molestiae.', 'Omnis nihil eius tempore assumenda repellat eos aliquid. Rerum tenetur accusantium necessitatibus consequatur enim nobis ratione. Quia dolor reprehenderit quod. Maxime aliquid distinctio corporis rem quo qui explicabo.\n\nDebitis natus veniam deserunt asperiores omnis est veritatis consequatur. Aliquid dolore expedita impedit ut iste dolores. Eos neque enim ut aut consequatur.\n\nVel ipsum dolorem asperiores omnis veniam. Omnis ullam aut quasi officia eum eos culpa alias. Dolor accusamus rerum odio.', 49, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(21, 'Et qui quam nisi corrupti ratione.', 'Qui vitae perferendis qui occaecati tempore expedita placeat. Commodi dicta consequuntur nam molestiae nisi. Quae est dolor exercitationem placeat.\n\nAut deserunt molestias voluptatem dolor dolorem sit velit. Autem beatae in magni quam perspiciatis ad.\n\nSoluta expedita sint sed quas. Non non et amet eveniet. Ut molestiae quae amet voluptatum doloremque.', 65, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(22, 'Sed aut laboriosam harum dolore dolor.', 'Qui provident voluptatem soluta esse assumenda velit ducimus. Eaque suscipit corporis laborum quod est sed alias. Qui necessitatibus voluptatum voluptas eos pariatur qui cum sapiente.\n\nAsperiores est sed cumque assumenda ut et. Voluptates sint alias id temporibus. Qui mollitia amet rerum.\n\nAspernatur sequi a culpa cupiditate quo consequatur voluptates. Perspiciatis error doloribus consequuntur. Ea totam velit consequatur veniam qui.', 65, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(23, 'At velit accusamus vero illum.', 'Adipisci architecto est dolores facere in. Reprehenderit reprehenderit necessitatibus voluptatibus et aut vero sit. Voluptatem itaque dicta ut consequatur facere nihil aut dolor. Sed quasi tenetur impedit nihil.\n\nOmnis facere sed eum aliquam. Quia tempore at nesciunt doloremque quam. Ipsum consequuntur culpa iste in fugit incidunt. Eos quia saepe voluptas iste amet ab possimus.\n\nQui suscipit iusto quia. Est et saepe reiciendis eum sapiente. Veritatis necessitatibus architecto distinctio commodi ea aut. Non qui et nemo tempora asperiores magni molestias et.', 65, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(24, 'Porro aut similique culpa.', 'Nihil totam fuga ipsum sequi est voluptas. Aut expedita ut aut aliquid saepe dolor. Minima mollitia natus officiis expedita ipsam recusandae.\n\nEaque dolorum aut ipsum autem fugit quidem itaque. Odit et expedita ipsum est sint. Et voluptatibus id odit.\n\nSit veniam occaecati omnis et molestiae. Vel dolorum quasi optio exercitationem id odio. Reprehenderit quaerat qui explicabo odit odit enim aut.', 65, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(25, 'Assumenda quia qui nihil explicabo in et.', 'Neque excepturi animi labore voluptatem qui autem et. Autem incidunt eveniet et placeat quis rerum. Nisi sed quia dolores est et.\n\nNisi voluptas rerum nostrum ipsum nobis. Molestiae quo reiciendis est ipsam.\n\nQuaerat reiciendis totam ipsum et voluptatem reprehenderit rem. Aut dolores quod repellendus accusamus maiores. Beatae commodi quas iste laudantium laudantium. Harum harum qui ea consectetur qui ducimus.', 65, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(26, 'Architecto iusto et molestias sed doloribus.', 'Consequatur quidem dolore et dolores expedita debitis. Et sunt recusandae repellat corporis error voluptatem dolore. Ipsum reprehenderit voluptatum perferendis exercitationem ipsa. Accusantium molestias temporibus tempora tempora voluptas aut ea architecto. Quo aut autem et delectus similique repellendus.\n\nNon consequatur maiores voluptas aperiam optio. Ut veritatis provident quia molestiae vitae. Ad sit sed iste ut odit quidem ut.\n\nMinima et reiciendis hic est doloribus dolorem. Dicta cupiditate nisi ratione occaecati alias. Enim sint ipsam eius pariatur natus nemo tenetur. Quia rerum dolor ipsam eveniet dolore occaecati quod. Quo perspiciatis id consequatur quos deleniti.', 81, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(27, 'Aspernatur officiis nemo unde facilis omnis atque cum.', 'Porro quo maxime cupiditate distinctio id a. Vitae repellendus eveniet soluta voluptatem. Qui quaerat sunt sint tenetur ea magnam cumque esse. Illo explicabo nihil perspiciatis autem optio consequuntur omnis. Aspernatur officiis iusto omnis dolor sit quia officiis.\n\nQuidem fugit nostrum ea est expedita. Commodi repellendus est consequatur illo magnam consectetur. Laudantium et qui voluptatibus. Eius maxime omnis minima est harum accusamus eos. Reprehenderit rem ipsum rerum distinctio.\n\nSuscipit culpa est ut repellendus quod velit. Nihil provident facere omnis quaerat aut ab voluptate beatae. Minima voluptatibus impedit voluptatem sed. Unde delectus nulla voluptatem et nemo. Perferendis qui et magnam mollitia assumenda excepturi.', 81, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(28, 'Minima quos autem necessitatibus et nihil rerum sapiente qui.', 'Minima id et dolorem. Velit illum eligendi ipsam ad labore.\n\nModi veniam vero ipsam aut aut. Sed voluptas voluptas et impedit beatae. Ut sit dicta ea odio. Et dolor sit autem sint.\n\nPraesentium maiores modi labore sed molestiae quae molestiae. Vero labore optio reprehenderit recusandae. Nesciunt tenetur ad sit. Omnis qui quidem aliquam ducimus.', 81, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(29, 'Voluptatem deserunt velit dolores iste dicta nihil.', 'Esse quaerat qui earum est possimus. Voluptatum tenetur ea laudantium sed. Saepe voluptate dolorum eos tempore. At voluptatum voluptatem earum quasi sequi dolorem assumenda.\n\nQui architecto dolorem porro dolores debitis perspiciatis nam minus. Sed consequatur voluptatem sunt a odit nemo. Ullam et eius voluptas incidunt aut earum quo. Quae mollitia distinctio dolor.\n\nMolestiae aut provident earum nam atque mollitia sit. Quisquam in sunt earum temporibus nobis. Aut quae eos asperiores cupiditate et.', 81, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(30, 'Reprehenderit eos reprehenderit enim et.', 'Ipsam ut eos voluptas quia quae sit. Non deserunt sequi incidunt. Soluta sunt maxime aut impedit est aut quos.\n\nCorrupti aliquam suscipit omnis eos. Occaecati nam est magnam iusto occaecati qui fuga. Maxime eos optio nihil hic. Rerum et ut id ipsum voluptate voluptatem.\n\nMinus nulla et velit exercitationem deserunt quia. Tenetur itaque et rerum. Dolor repellat facilis tenetur laboriosam incidunt eius autem. Tempore iure quod qui quia eaque doloribus officia exercitationem.', 81, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(31, 'Sed modi commodi possimus laudantium.', 'Dolore possimus enim eum sint a nam. Quis ad inventore facere illum. Cum neque reprehenderit aut et. Dolorem molestias sed exercitationem excepturi.\n\nAb facere expedita unde atque perspiciatis dolor. At et adipisci aut expedita assumenda voluptatem. Culpa est qui rerum incidunt et expedita. Enim odio eos itaque in. Quisquam ipsa enim delectus sapiente et.\n\nEos quidem blanditiis numquam eum. Fugiat quasi id est ut sed. Explicabo debitis modi officia itaque rerum doloribus exercitationem ad.', 97, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(32, 'Officiis rem dolor consectetur.', 'Adipisci voluptatibus ipsa sapiente et et ut. Officia accusantium dolores libero mollitia sit. Maiores reprehenderit nostrum in illum architecto ut sunt.\n\nEt voluptates provident cum aliquam accusamus. Eos dolor asperiores tempore et dolorem iusto. Error quia tenetur id est neque error beatae et.\n\nPlaceat aut facere aut optio accusantium minima voluptatibus. Voluptatem sequi fuga beatae consectetur laudantium. Placeat est facilis nihil aut. Cumque debitis tempora optio et qui quo.', 97, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(33, 'Dolor quos et molestias voluptas repellendus.', 'Dolore enim minima et qui sit. Eum laborum accusamus autem aut quia nostrum inventore. Qui eum praesentium ut aut. Dolorum ut deleniti eos explicabo.\n\nIusto et sit quo. Tempora odit dolorem laboriosam incidunt. Ut sit perferendis odio eius ut. Dolorum et suscipit natus quos autem ut.\n\nQui ratione perferendis eligendi. Eum eaque veniam ullam quo consequatur tenetur odit. Amet doloremque totam dicta illum aut autem.', 97, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(34, 'Libero ratione nesciunt enim.', 'Et ad unde reprehenderit commodi asperiores occaecati labore. Facere eius autem tenetur neque explicabo inventore in. Ex est enim necessitatibus similique assumenda quod reprehenderit.\n\nTempora id vel rerum fuga. Veniam et necessitatibus rerum. Facilis alias eum voluptates qui minima. Cumque tempora qui molestiae consequuntur dolores accusamus et.\n\nAtque est illum odit vero qui nulla debitis. Iusto ratione sit repellat aut similique consequatur. Beatae animi aperiam amet eius minus sint.', 97, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(35, 'Vero ut repudiandae qui doloribus.', 'Enim magnam maxime placeat debitis in. Laudantium doloribus quas expedita reprehenderit. Deserunt voluptatem commodi quis debitis cupiditate quae iusto.\n\nOptio et magnam ab illo ea quia. Aut eos blanditiis veniam sed expedita sint non. Eligendi ut alias quam aperiam est consequatur ut. Qui officiis ut et iure. Non maiores suscipit eum sed hic et.\n\nUt sed esse inventore quaerat esse id. Sunt quos non voluptatem dolorem et enim. Ut doloremque sequi rerum nulla.', 97, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(36, 'Est minima illo corrupti.', 'Odio commodi velit itaque qui molestias. Impedit ut ipsam est quia harum in optio. Sed et ut suscipit fugiat distinctio. Nulla aspernatur natus eveniet odit in excepturi.\n\nEos est voluptatem voluptate quae consequatur repellendus ut ipsam. Qui tempore praesentium fugiat assumenda minus voluptatem. Et autem vero ab harum doloribus nihil.\n\nEos molestias accusantium natus itaque aut accusamus. Eveniet omnis rerum perspiciatis est est sit. Libero sed molestias dolorem illo laudantium rerum aut. Nam quos vel enim qui delectus. Deserunt dolorem architecto qui eligendi natus voluptatum eligendi.', 113, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(37, 'Consequuntur exercitationem dolores quaerat officiis.', 'Quasi et animi quo et consequatur. Modi sit delectus aut beatae. Ut et dolorem et debitis quod. Quos laborum accusamus repudiandae. Similique quis veritatis ducimus alias et perspiciatis.\n\nRerum eius sit aperiam et dolore vel delectus architecto. Assumenda quaerat eos et. Ut et vel quasi rerum. Quaerat alias ea natus repudiandae nulla.\n\nFuga dolorum molestiae sint nobis fugit velit beatae. Suscipit et aut rem dolorum. Quibusdam doloremque amet sit maiores qui possimus dolores. Nostrum dolorem officia doloremque commodi atque quia.', 113, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(38, 'Deleniti nulla impedit omnis facere aut.', 'Blanditiis ducimus inventore voluptatem deleniti necessitatibus totam aut. Hic assumenda laudantium voluptatum qui vel quod officiis. Ut rerum est placeat voluptas. Quas modi nostrum qui enim corporis aliquam.\n\nUt nesciunt dolorem et ut maxime. Ea autem dolorum excepturi autem aut id nobis commodi. Tempore aut vel culpa magni. Asperiores qui doloribus inventore sint quis harum.\n\nEnim autem similique molestias dolore. Magnam impedit ut odit molestiae natus architecto minus. Odio et vel alias inventore provident. Porro eaque iste commodi sed tenetur dolor.', 113, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(39, 'Repudiandae facilis sapiente omnis hic dolores.', 'Deleniti sit voluptatem sed voluptatem accusamus sint recusandae. Non qui nobis et quo et minima. Nulla ipsa atque dolore magnam deleniti.\n\nCommodi doloribus ad vel vero temporibus. Laboriosam sunt nulla saepe dolores exercitationem qui ipsum. Dolores pariatur blanditiis laborum dolor.\n\nExplicabo in unde dicta explicabo odit hic. Recusandae consequuntur aut et rerum blanditiis.', 113, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(40, 'Fuga quo aliquid aliquid modi blanditiis.', 'Officia quidem quam velit autem. Ut autem laudantium saepe ratione magnam sed. Nam molestiae non aut illum dolor aut eveniet est. Quia voluptatem assumenda ratione quia inventore. Aut molestias optio eaque quis.\n\nLabore ut consequatur aut quaerat voluptates et quos. Qui tempore blanditiis et earum sed quia explicabo et. Dolores sint error sunt dolores impedit nisi tenetur. Voluptates et voluptas quisquam nihil exercitationem.\n\nOptio voluptatibus velit sequi laboriosam incidunt aut. Eius itaque cum optio inventore. Vero corporis sed rerum aut aliquid et itaque quasi. Mollitia qui qui et fugiat et atque.', 113, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(41, 'Ad ipsam consequatur iusto autem.', 'Sunt culpa aut quia voluptate est eveniet. Quas omnis est consequatur odio dolorem. Atque natus ratione rerum eveniet aut nihil. Minima aperiam ab minus ut aliquid tempore mollitia. Voluptas dolore pariatur itaque doloremque qui soluta.\n\nVoluptatem eaque qui harum qui quia facilis. Et cupiditate iste perferendis sunt ipsa illum id. Aut in et laboriosam deleniti odit assumenda.\n\nVoluptatem sapiente incidunt commodi ea dolor. Sapiente officia corporis officiis dolores est nam. Consequatur et optio repellendus enim. Ab possimus vero ut illo quis.', 129, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(42, 'Id nihil quo labore omnis id quia.', 'Pariatur deleniti harum tenetur. Sit consequatur id et voluptatum fuga ut. Qui dolorum et asperiores iste. Aut earum qui laboriosam corrupti doloremque.\n\nVoluptas ut nam rerum quis commodi eligendi accusantium. Omnis distinctio deleniti fuga eum. Neque blanditiis aut minus nulla sint. Quibusdam odit recusandae magni amet commodi labore.\n\nUt sit non quas sint. Earum illum dolore debitis rerum commodi nisi. Perspiciatis enim exercitationem voluptates impedit incidunt doloribus ut perferendis.', 129, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(43, 'Sit aut veritatis perspiciatis itaque dolore cupiditate.', 'Ullam quia beatae et. Debitis sequi nihil error.\n\nAd harum possimus occaecati dolorum. Exercitationem ipsa consequuntur architecto nostrum fuga. Aut esse neque cum quibusdam ut. Et laboriosam inventore praesentium temporibus laboriosam.\n\nTempora et est deleniti rerum quas voluptatibus consectetur. Est placeat maiores et laboriosam. Et rerum nam provident fugit perferendis sint explicabo. Voluptas ipsam quia maiores expedita adipisci quisquam.', 129, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(44, 'Quis illum sed pariatur aut aliquam sed cum.', 'Qui cum consectetur qui aut eum. Veniam minima explicabo est aut. Nobis sequi repudiandae quia ut. Et molestiae nisi voluptatem neque expedita.\n\nTenetur eum voluptatem et veniam enim cumque qui. Consequatur temporibus ab molestiae aspernatur tempora et soluta. Et consequatur quasi illo labore est autem rerum.\n\nEnim iure reiciendis aliquam dolores libero inventore quis temporibus. Et repellendus asperiores deleniti saepe commodi. Velit id minus aspernatur consequatur.', 129, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(45, 'Culpa doloremque eligendi eaque voluptatem.', 'Et voluptatibus in dignissimos doloribus est quasi et. Nulla velit sint laborum deleniti. Quaerat corporis iure dolorem repellat id enim qui.\n\nOmnis dolores eos quam. Asperiores et cupiditate eius recusandae quos deserunt qui. Excepturi iste cupiditate molestiae voluptate. Modi commodi consequatur aut accusantium.\n\nEveniet nihil at consequatur quis. Porro quis qui tempora ipsa repudiandae consequatur fugiat labore. Voluptates libero ut autem facere voluptatem commodi.', 129, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(46, 'Et officiis aut aut nobis assumenda dolores vitae.', 'Et qui omnis earum debitis consectetur. Error ipsa et accusamus suscipit magnam quisquam doloribus. Sunt quia sapiente tempora non in.\n\nVoluptates nostrum accusantium voluptatibus suscipit ut expedita. Tempora non rerum ab.\n\nQui nemo sint quasi cum et eum odit. Ullam iure enim distinctio perferendis. Ut est natus nesciunt sequi voluptas doloremque.', 145, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(47, 'Praesentium reiciendis doloremque consequatur at eos accusamus.', 'Voluptas et nobis aut ut ad. Est autem corrupti sed qui totam rerum sit quos. Esse dolorum quia praesentium.\n\nQui cum sed vero dolorem. Consequatur voluptatem rerum quisquam in voluptas voluptates ut.\n\nQuis sunt distinctio perferendis similique quaerat reiciendis libero. Fugiat natus et eos explicabo qui molestiae. Quia enim optio rerum quasi occaecati debitis.', 145, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(48, 'Quas eveniet quia rerum nobis quo.', 'Nesciunt qui cumque eaque. Sequi fugit neque cupiditate quod et qui delectus ipsa. Dolorem repellat sed a optio in. Labore itaque sed totam rerum dignissimos voluptatem.\n\nQui ullam id modi quisquam quia. Ut excepturi ad velit consectetur ipsum asperiores numquam. Quasi fugit et aspernatur dignissimos.\n\nSed laborum et repellat pariatur minima ut repudiandae sit. Voluptatem quidem omnis rerum autem et neque. Earum dolorem non molestias quia delectus. Maiores at quo temporibus.', 145, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(49, 'Delectus libero sit quibusdam repellendus.', 'Et doloribus sequi sed voluptatibus omnis aliquam iusto. Consequatur dolores et quidem quia ex error. Rem sit animi numquam eos est quae.\n\nQuas a est mollitia eum omnis sunt qui. Voluptatem optio maiores ducimus qui aspernatur. Non sed repellat ut tempora accusantium eius.\n\nNumquam dolorem quibusdam aut numquam accusamus. Illum totam quisquam suscipit explicabo. Cumque sed a ex aut est saepe.', 145, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(50, 'Et magnam ut qui autem tempore nemo atque cupiditate.', 'Commodi neque est eligendi maiores temporibus voluptates quia. Minus voluptatum aliquam temporibus a et. Consectetur quisquam corrupti incidunt. In quia labore quibusdam quia.\n\nDelectus molestiae ipsum quia soluta ad itaque voluptatem. Et corrupti laudantium itaque omnis. Amet pariatur sed non dolores.\n\nUt enim veniam fuga. Omnis nostrum est ea deserunt exercitationem. Veniam sit dicta aperiam molestias expedita voluptatem. Quia aliquam quae voluptatem perspiciatis.', 145, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(51, 'My First Post', 'This is the content', 161, '2025-06-27 04:51:25', '2025-06-27 04:51:25'),
(52, 'My First Post', 'This is the content', 162, '2025-06-28 00:18:24', '2025-06-28 00:18:24'),
(53, 'My First Post', 'This is the content', 162, '2025-06-28 02:30:12', '2025-06-28 02:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tag`
--

DROP TABLE IF EXISTS `blog_post_tag`;
CREATE TABLE IF NOT EXISTS `blog_post_tag` (
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `blog_post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_tag`
--

INSERT INTO `blog_post_tag` (`post_id`, `tag_id`) VALUES
(1, 1),
(51, 1),
(52, 1),
(53, 1),
(1, 2),
(51, 2),
(52, 2),
(53, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20),
(11, 21),
(11, 22),
(12, 23),
(12, 24),
(13, 25),
(13, 26),
(14, 27),
(14, 28),
(15, 29),
(15, 30),
(16, 31),
(16, 32),
(17, 33),
(17, 34),
(18, 35),
(18, 36),
(19, 37),
(19, 38),
(20, 39),
(20, 40),
(21, 41),
(21, 42),
(22, 43),
(22, 44),
(23, 45),
(23, 46),
(24, 47),
(24, 48),
(25, 49),
(25, 50),
(26, 51),
(26, 52),
(27, 53),
(27, 54),
(28, 55),
(28, 56),
(29, 57),
(29, 58),
(30, 59),
(30, 60),
(31, 61),
(31, 62),
(32, 63),
(32, 64),
(33, 65),
(33, 66),
(34, 67),
(34, 68),
(35, 69),
(35, 70),
(36, 71),
(36, 72),
(37, 73),
(37, 74),
(38, 75),
(38, 76),
(39, 77),
(39, 78),
(40, 79),
(40, 80),
(41, 81),
(41, 82),
(42, 83),
(42, 84),
(43, 85),
(43, 86),
(44, 87),
(44, 88),
(45, 89),
(45, 90),
(46, 91),
(46, 92),
(47, 93),
(47, 94),
(48, 95),
(48, 96),
(49, 97),
(49, 98),
(50, 99),
(50, 100);

-- --------------------------------------------------------

--
-- Table structure for table `blog_sessions`
--

DROP TABLE IF EXISTS `blog_sessions`;
CREATE TABLE IF NOT EXISTS `blog_sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_sessions_user_id_index` (`user_id`),
  KEY `blog_sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_sessions`
--

INSERT INTO `blog_sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bQcFQHcf6SqqWd5N9fgctrqt5COzv4a8iMxTdtuB', NULL, '127.0.0.1', 'PostmanRuntime/7.44.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnVYdmptVU1vVUZhbzVneEtMNGhCTDFFWUc5cFRhOVF1QUEzUUJGSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1751019897),
('QqAG3zSWljPmrqA2F9jtte2OyXIw2Ab3pIP2l812', NULL, '127.0.0.1', 'PostmanRuntime/7.44.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXhJQkZzQTN6cHZQS0hKVkx3YUVvTm1HTEh5UlpFMUtFdm1YaTBZUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1751095929);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

DROP TABLE IF EXISTS `blog_tags`;
CREATE TABLE IF NOT EXISTS `blog_tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_tags_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tempora', '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(2, 'adipisci', '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(3, 'unde', '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(4, 'sit', '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(5, 'at', '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(6, 'qui', '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(7, 'molestias', '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(8, 'autem', '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(9, 'est', '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(10, 'velit', '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(11, 'dolores', '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(12, 'sed', '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(13, 'nisi', '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(14, 'inventore', '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(15, 'eum', '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(16, 'quidem', '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(17, 'quia', '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(18, 'eos', '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(19, 'enim', '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(20, 'consequatur', '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(21, 'repudiandae', '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(22, 'odio', '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(23, 'illo', '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(24, 'itaque', '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(25, 'doloremque', '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(26, 'sunt', '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(27, 'deserunt', '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(28, 'fuga', '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(29, 'et', '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(30, 'dolorum', '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(31, 'quis', '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(32, 'ipsum', '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(33, 'aliquam', '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(34, 'amet', '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(35, 'eligendi', '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(36, 'rerum', '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(37, 'nemo', '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(38, 'cum', '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(39, 'ut', '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(40, 'sint', '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(41, 'vel', '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(42, 'ipsam', '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(43, 'reprehenderit', '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(44, 'reiciendis', '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(45, 'ducimus', '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(46, 'id', '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(47, 'perspiciatis', '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(48, 'numquam', '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(49, 'voluptatem', '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(50, 'animi', '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(51, 'veritatis', '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(52, 'aut', '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(53, 'non', '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(54, 'aliquid', '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(55, 'odit', '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(56, 'voluptatum', '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(57, 'ipsa', '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(58, 'nam', '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(59, 'nulla', '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(60, 'voluptatibus', '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(61, 'in', '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(62, 'delectus', '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(63, 'aperiam', '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(64, 'deleniti', '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(65, 'magni', '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(66, 'cumque', '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(67, 'debitis', '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(68, 'provident', '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(69, 'laborum', '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(70, 'necessitatibus', '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(71, 'veniam', '2025-06-27 04:18:48', '2025-06-27 04:18:48'),
(72, 'saepe', '2025-06-27 04:18:48', '2025-06-27 04:18:48'),
(73, 'incidunt', '2025-06-27 04:18:49', '2025-06-27 04:18:49'),
(74, 'hic', '2025-06-27 04:18:49', '2025-06-27 04:18:49'),
(75, 'culpa', '2025-06-27 04:18:50', '2025-06-27 04:18:50'),
(76, 'error', '2025-06-27 04:18:50', '2025-06-27 04:18:50'),
(77, 'maxime', '2025-06-27 04:18:51', '2025-06-27 04:18:51'),
(78, 'quo', '2025-06-27 04:18:51', '2025-06-27 04:18:51'),
(79, 'perferendis', '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(80, 'soluta', '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(81, 'molestiae', '2025-06-27 04:18:54', '2025-06-27 04:18:54'),
(82, 'recusandae', '2025-06-27 04:18:54', '2025-06-27 04:18:54'),
(83, 'laboriosam', '2025-06-27 04:18:55', '2025-06-27 04:18:55'),
(84, 'officia', '2025-06-27 04:18:55', '2025-06-27 04:18:55'),
(85, 'labore', '2025-06-27 04:18:56', '2025-06-27 04:18:56'),
(86, 'harum', '2025-06-27 04:18:56', '2025-06-27 04:18:56'),
(87, 'voluptates', '2025-06-27 04:18:57', '2025-06-27 04:18:57'),
(88, 'voluptas', '2025-06-27 04:18:57', '2025-06-27 04:18:57'),
(89, 'maiores', '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(90, 'praesentium', '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(91, 'explicabo', '2025-06-27 04:19:00', '2025-06-27 04:19:00'),
(92, 'ea', '2025-06-27 04:19:00', '2025-06-27 04:19:00'),
(93, 'dolorem', '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(94, 'rem', '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(95, 'totam', '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(96, 'corporis', '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(97, 'facilis', '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(98, 'fugiat', '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(99, 'iste', '2025-06-27 04:19:03', '2025-06-27 04:19:03'),
(100, 'ad', '2025-06-27 04:19:03', '2025-06-27 04:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `blog_users`
--

DROP TABLE IF EXISTS `blog_users`;
CREATE TABLE IF NOT EXISTS `blog_users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_users`
--

INSERT INTO `blog_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rosalia Roob', 'lynn06@example.com', NULL, '$2y$12$3xvuZolxiU0p0D1kTYPYwe1kqUJtB3Nngfq7aMPCnXLOmwKpeqV3K', NULL, '2025-06-27 04:18:20', '2025-06-27 04:18:20'),
(2, 'Prof. Bud VonRueden', 'ollie35@example.org', NULL, '$2y$12$YYMNGTtX3Xb2Zu9nD/YQIOx8NXK25W25G.eGIbCq0C9YPih7ZXbFS', NULL, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(3, 'Prof. Orin Rohan', 'mpagac@example.net', NULL, '$2y$12$qCvnsvzz6lHXp38swlEv3ueMt8tfGcBxWaoa6n07hfbx50mio3t7S', NULL, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(4, 'Dr. Arch Adams Sr.', 'zthiel@example.org', NULL, '$2y$12$EQsDJLz92ggPKTqBb5KrBOBikXzDYtw5kLPh2ZKLkY2BhNThdxYyi', NULL, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(5, 'Clifford Kiehn', 'savanah62@example.net', NULL, '$2y$12$wm7gp/xww.UEFuFp4.xdj..f3XZRyKQfRJSaZwOguN9vVpznzppyW', NULL, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(6, 'Miss Abigail Schultz MD', 'emmanuel.kuphal@example.com', NULL, '$2y$12$ullJZJLa8iiHKoXf.gxBd.8UkFrOpx6u4a66kSZ84S4Qdf9zUEFfu', NULL, '2025-06-27 04:18:23', '2025-06-27 04:18:23'),
(7, 'Dr. Morgan Weimann', 'hermann.sophie@example.org', NULL, '$2y$12$h0gI5OMMQ11RlymOQySFx.TCbkZ8myoYcGe5n77D8zc9eoUGoJ2Rq', NULL, '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(8, 'Mr. Hank Donnelly', 'aliya.ruecker@example.org', NULL, '$2y$12$RC5lEz46ZNZ0HyU3F.caJOQzvvx0mwpPtw1/hozSR4aJjvCufovUS', NULL, '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(9, 'Mr. Jeromy Sanford Sr.', 'sidney.mueller@example.org', NULL, '$2y$12$jtIpBndJjkDbEdpkewFkquE0/To7RsuhC3ELPAt5g3mpvGtHvpi0S', NULL, '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(10, 'Bradley Will', 'lou65@example.com', NULL, '$2y$12$IuPC6itLfLUzc3WH1ONtoOArh0Zib0sux7rWuxxr9Y/Qx.jY.igoe', NULL, '2025-06-27 04:18:24', '2025-06-27 04:18:24'),
(11, 'Alessandra Donnelly', 'rosalind47@example.org', NULL, '$2y$12$j/.wESmEFcoF6dXkjcq/6OlInvB8LqVGxxZP9r0YRKAkKs8P17YS6', NULL, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(12, 'Prof. Gage Kirlin', 'hubert.beer@example.com', NULL, '$2y$12$Afs40EjkTi5n1flqfgEQmuajAWg43AshvC5tbVLLILQMJgfLNd7cq', NULL, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(13, 'Miss Amelia Fritsch V', 'anika.windler@example.net', NULL, '$2y$12$D3LH6fI9PIf284UIYlX.U.awWigrHVJTFDZUiwbB1AxBHaK5MRhyO', NULL, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(14, 'Bertram Marks', 'constance.kirlin@example.com', NULL, '$2y$12$BB9kzQrECjRvjwd9QXHGsudnGwvBGxge1gJy/LhsCeClhaR4NP62K', NULL, '2025-06-27 04:18:25', '2025-06-27 04:18:25'),
(15, 'Hollie Wehner', 'rvon@example.net', NULL, '$2y$12$ADkRqf4pUx5aAQa7D0v6Sebvf1Xy8mP7CeBc.FW3anJIph.WaBKBG', NULL, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(16, 'Myrtle Lindgren III', 'gilbert.considine@example.net', NULL, '$2y$12$MoS4hPQqAoC2.WOqnqEz6.lmXZ51C29500a6KsFVlMRpw5Efrxqmq', NULL, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(17, 'Lynn Casper III', 'ldavis@example.com', NULL, '$2y$12$IVglDmp48/78LGoQiw3e8e8rZWQPGtc6UD42jHBG2vxn4ZEJiKfxa', NULL, '2025-06-27 04:18:21', '2025-06-27 04:18:21'),
(18, 'Forrest Johns', 'smith.shawna@example.net', NULL, '$2y$12$uauSL/mrtmhlG1Rm2t7.JOQhxXFqs5b6lCgvHMbOpn4tIDjt8ZW4e', NULL, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(19, 'Marisa Pfannerstill', 'tobin16@example.org', NULL, '$2y$12$CtC9E7ma2bDkoM2fh.6wueGn9Hh3WjVathUxQ1u1KKk/jPiWOXOW.', NULL, '2025-06-27 04:18:26', '2025-06-27 04:18:26'),
(20, 'Mr. Lawrence Spinka IV', 'mertie41@example.net', NULL, '$2y$12$rUnmQPNpQ3Re9sMWMJj39.IyPhJG2Rzy7sxRglka9MLt8RnSZ1RwW', NULL, '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(21, 'Mr. Armani Koss', 'qbeatty@example.org', NULL, '$2y$12$dQPFh1WPo7Tk7EGwVSy8tucA2W..sBb.h3XnVe/I1OIzoT8Jle8LC', NULL, '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(22, 'Colton Nienow MD', 'walsh.brady@example.net', NULL, '$2y$12$463yB9wTiETI7HYE13GjueMvDEiBD/F/To6ok6oJI6j.DT.9CKYhC', NULL, '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(23, 'Gust Davis', 'amya76@example.net', NULL, '$2y$12$CBxHmGJFbiUO9GG/VggqnuZ54fUIXjwruOCmW2Rjzbv6VDMznP.mC', NULL, '2025-06-27 04:18:27', '2025-06-27 04:18:27'),
(24, 'Roberta Skiles', 'earlene.wisozk@example.com', NULL, '$2y$12$s1wuXWc3L9o4kqMPWxb1aeCwBVCta9tDudl4ulyDXxOTktl7FM99O', NULL, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(25, 'Freida VonRueden', 'fsawayn@example.org', NULL, '$2y$12$.OEm.eZcR4TP05EkWpsG2eU.hB.3MLIOlvvtN2B9yBH3ZlU.KLgUW', NULL, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(26, 'Jermaine O\'Connell', 'hbauch@example.net', NULL, '$2y$12$Y3/DFypiCKYmQ3M0LEm3POVK1rNUG2PDD6nHc/jWc7kNY5iyQ7fhm', NULL, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(27, 'Georgianna Graham II', 'lschmeler@example.org', NULL, '$2y$12$T9vKvFWVJx/QOW6OrjxuFOcvAaxY48n2sM8lwB8FB2IEphhE6kVEi', NULL, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(28, 'Porter Weimann', 'kertzmann.mark@example.com', NULL, '$2y$12$Yfgw4.mFVlV/Nx4WCDl4Q.kMK1BApvzfiLq2JMKs77f5vHa6GJXR.', NULL, '2025-06-27 04:18:28', '2025-06-27 04:18:28'),
(29, 'Anais Kautzer', 'runte.eulah@example.com', NULL, '$2y$12$0hjUJfTxpVgbFItcfPfWo.uWIuqzMCeOu2UUTq5PPaIf.ilaiUVK.', NULL, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(30, 'Maurine O\'Conner Sr.', 'imckenzie@example.org', NULL, '$2y$12$x5NLr.KBtrfSNB.4SIMJG.WffDTxAeXjDiiWocmeb88B.3hkobpYu', NULL, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(31, 'Hipolito Douglas', 'ottis66@example.org', NULL, '$2y$12$Cz3yCQKfalg0M5lFzjWx3.xW7lPuYl31aHeEOngDYIkXxNjWwQhCm', NULL, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(32, 'Reagan McLaughlin', 'beatrice.stiedemann@example.net', NULL, '$2y$12$GFReKGXkONmAANh1vFA88ebJGqhHe7LEpN1achBv7LulAPd/51bk2', NULL, '2025-06-27 04:18:29', '2025-06-27 04:18:29'),
(33, 'Oceane Carter', 'toy.liana@example.com', NULL, '$2y$12$HmpyYFj.TWArI/igjuc57ueTEOkxsx5zAcXq4Za5lFM./GEvWw7m.', NULL, '2025-06-27 04:18:21', '2025-06-27 04:18:21'),
(34, 'Kristoffer Crist', 'isaiah41@example.com', NULL, '$2y$12$S94CpCksscpzfHFwPeQOLuvvnrO6R6/k5z9ViV8guspAd8l3QVYtq', NULL, '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(35, 'Dakota Simonis', 'vance.smith@example.net', NULL, '$2y$12$nDUIw7Czr5kIgS.ZgKuqMOdtNGW45mhlzAqW/LJRmdu1dMc8GooV2', NULL, '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(36, 'Mrs. Lupe Lemke Sr.', 'fschamberger@example.net', NULL, '$2y$12$22zcKY78Q4NTkIsatdjGNeO4aSlKQCZF5CqSyipDutSI5/lgHXwFC', NULL, '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(37, 'Alva Lebsack', 'abrekke@example.org', NULL, '$2y$12$oMJI68/lztIay.s62ylQX.gzinhZL7P81DmUTerrBWiDso0lcFBtm', NULL, '2025-06-27 04:18:30', '2025-06-27 04:18:30'),
(38, 'Jasper Renner', 'eturcotte@example.org', NULL, '$2y$12$pZz8LlMk1doe.8ROsgR8C.cVwheWRYD3uF0AvNAVda3MFivU931hG', NULL, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(39, 'Damion Fadel', 'lorine.lang@example.com', NULL, '$2y$12$niMOocMe09cJt9uLddLywuypzB9CnVNYJukwRa0SFZYA73kFMXFpC', NULL, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(40, 'Prof. Lindsey Lakin I', 'jamey03@example.net', NULL, '$2y$12$uv1BeoNzkSkpUWFj2EtCFey7ubdLEevFnFccOCHmHW1o0oKGLxnmS', NULL, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(41, 'Gardner Kiehn PhD', 'marlee66@example.net', NULL, '$2y$12$BsUC1XIj6mhnqrIvELGRhuSOtrMyOEbggL5dUb5Wcun4bUsWv6p5q', NULL, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(42, 'Margot Buckridge', 'tyler.heathcote@example.net', NULL, '$2y$12$JtjodMGZuMnkxj.sRzplSODGo6/P2gi4K1VpHlVLIIzzBdlG10FQS', NULL, '2025-06-27 04:18:31', '2025-06-27 04:18:31'),
(43, 'Sonia Gusikowski', 'shakira.wolff@example.org', NULL, '$2y$12$6iSe1QGcZ7fjWIpR36sduuEHZhibp7z0R7D/JAKIcut7bshcFzSyy', NULL, '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(44, 'Prof. Abagail Moen', 'norval.christiansen@example.com', NULL, '$2y$12$yUMqfngWgC25FGw2r.wTnu46V3F4KQtsz.0vLa0I8eJ4Pm0b0dmd6', NULL, '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(45, 'Miss Lisette Lebsack II', 'kristin91@example.com', NULL, '$2y$12$Iiq55aWE3DHqtxOYueZwPedb0L5rhFJ14NYEZ2KvSkJmaoGXTFfG.', NULL, '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(46, 'Janiya Raynor', 'lesch.dulce@example.net', NULL, '$2y$12$Acx2v/1sDj.BHoE9shtzt.sTzW0ce9W0a4QW7iVirXhS1aStrr4Y.', NULL, '2025-06-27 04:18:32', '2025-06-27 04:18:32'),
(47, 'Guillermo Rempel', 'adaline98@example.net', NULL, '$2y$12$zgDUp4.V2ZLugUZMFnKEvO5mjxi2fOpyNcYOoK6gSJOeuK24G0XO.', NULL, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(48, 'Yasmeen Heller', 'isadore.douglas@example.net', NULL, '$2y$12$IG6zlVs6lbps4/X39D8qV.WE4VQtJoi8bhtx1B71GoGh8RxAZOXcy', NULL, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(49, 'Dr. Letha Stracke', 'modesto62@example.org', NULL, '$2y$12$uTMaCp0HsszG4GHixKw8Teanl8ry0nYGdyLB0.V6BaKj2QvU0CARC', NULL, '2025-06-27 04:18:21', '2025-06-27 04:18:21'),
(50, 'Annamae Carter', 'rodriguez.hulda@example.net', NULL, '$2y$12$7gvlt5UFrA6JO/V9CrKVPO.KaCnFwSuHbNKhrlRErg1tBPtyfTQZy', NULL, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(51, 'Pearl Borer', 'shakira61@example.net', NULL, '$2y$12$b9bFd3MnMFzs2VZd2UjQc.jw3O6jWI1D2vlmOWDaED3.vqzzeZJrS', NULL, '2025-06-27 04:18:33', '2025-06-27 04:18:33'),
(52, 'Myriam Runte', 'adrienne.smith@example.org', NULL, '$2y$12$H62l54geuVXTdCz3qNUO8ewU2mgssZeWVBW.7cKL5bMNaToHBiiNS', NULL, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(53, 'Margarette Borer', 'powlowski.blanche@example.com', NULL, '$2y$12$1AM6jU2tk2.v.s1ajIVgEu96o.NhgSF8go6h9sguFKTgDbTTco186', NULL, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(54, 'Ezekiel Bayer', 'okeefe.zion@example.org', NULL, '$2y$12$ufIJZYU2RaayFz6jxqwFV.Tj1Lv/5r/T5HoeN3Qb/pWEWa3FolPLC', NULL, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(55, 'Okey Krajcik', 'tate44@example.com', NULL, '$2y$12$h1Z3.nrzhyimLpsBgkgJ6.Mu2UlXeYl5IMpWFu4gbnApkDoo9p3lG', NULL, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(56, 'Daron Rohan V', 'herbert37@example.net', NULL, '$2y$12$6wdUnTA/q2.fD9Kmut8hbe.vmXmWIHAQ7Um7LRFtoV6.oKKGxaSiq', NULL, '2025-06-27 04:18:34', '2025-06-27 04:18:34'),
(57, 'Leta Doyle', 'zetta.konopelski@example.net', NULL, '$2y$12$.VFZl.eAwyaPP4tyGahAi.VfBtE0TJSkFLTkp9uc6HfV/BIJsD6da', NULL, '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(58, 'Francisca Bayer', 'fmann@example.com', NULL, '$2y$12$sqEcHRvMRXPk8.iIpPhtS.rCWvujzwElXGWRPaRgOEqaZNCHBtO5e', NULL, '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(59, 'Tressa Fisher', 'jkiehn@example.com', NULL, '$2y$12$X0vnHL/Us/Gh0dIj5QdfHuJktWUSrzYPBi97ne.CB8rO3RtwnNV/W', NULL, '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(60, 'Raven Bogan II', 'daniel.aleen@example.com', NULL, '$2y$12$27wXv.zqkkYq5U2PipALJefAfkv2H6Gj0S5CZcaXPl.NQxiQsVR6G', NULL, '2025-06-27 04:18:35', '2025-06-27 04:18:35'),
(61, 'Korey Nitzsche', 'laurence.yost@example.com', NULL, '$2y$12$mjkYSWCTrVELOTwbFZxN7eW/fE8frbW3KOb.PnSgvvWuI0t3dQwhK', NULL, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(62, 'Sofia Nader', 'jaclyn.emmerich@example.net', NULL, '$2y$12$pBBFGV52CiK1Jce8IABa7uC2aNyZot0z97diXwc98ZyuVDY/anCdG', NULL, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(63, 'Melissa Ziemann', 'annamae.wuckert@example.org', NULL, '$2y$12$mSV3zD4Ek.vfgohHJZggP.HgwoiNuDxNwxo37wlP5rKPnzDwBc0/K', NULL, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(64, 'Eliseo Stroman', 'pschmitt@example.net', NULL, '$2y$12$U4S5b.4miu1dDeq3.waYF.bt/diXx/UJs63LuiKzno70DkNnAnuO2', NULL, '2025-06-27 04:18:36', '2025-06-27 04:18:36'),
(65, 'Alvis Wehner', 'vallie.ernser@example.net', NULL, '$2y$12$JpBqWxaRAdcJdgFfRiCVB.ZyMOK0I2Snt3D/GAjJgelYoAm.gYGRG', NULL, '2025-06-27 04:18:21', '2025-06-27 04:18:21'),
(66, 'Graham Reinger II', 'gulgowski.ahmad@example.org', NULL, '$2y$12$/nrz0GlO3i1Czqcvi8xfPuBRHT0w93bjSLJkd2bqDxkVApPBCWpT2', NULL, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(67, 'Dorothy Deckow', 'fhermiston@example.net', NULL, '$2y$12$MbQnt28pfIlScIcPSLB8Xu8buVkR6tpLoz4pgOvnvGHvE4FpuWiRy', NULL, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(68, 'Cassandra Krajcik', 'colten.stracke@example.org', NULL, '$2y$12$NaIB1AGXCEvDlfS1zGbwSONubInDlHSnpctyOdGI.CW5gZgFBkmt6', NULL, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(69, 'Javon Grimes', 'bnader@example.com', NULL, '$2y$12$tK.CpiHYZWPhsUBbpGGgReYP31zJ3cUwz181wbItRB9O4s61YHmgG', NULL, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(70, 'Estevan Rempel', 'rpfeffer@example.org', NULL, '$2y$12$NhDTngct2X78Xhd.c/lkp.O3VwS/IIk/3Tyi1thZwqz6YWQ7TYZ52', NULL, '2025-06-27 04:18:37', '2025-06-27 04:18:37'),
(71, 'Mr. Santino Jones DDS', 'leila91@example.org', NULL, '$2y$12$biAk60IRZCE8zo96LgCIxu.3ZvPqr24mckvLeHyePQFstysTctT42', NULL, '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(72, 'Rebeca Weber', 'zieme.morton@example.org', NULL, '$2y$12$naOlH7tbLTh0nMr7cBy.zeju1IqdLTQZOOsujHeYsXsRap4eswxzC', NULL, '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(73, 'Dr. Madalyn McGlynn', 'brandi92@example.org', NULL, '$2y$12$ySfBYmfUym4ucsTXTcrqvuWAhPZB8w6uAPrQRpotsBvhyetkLQR7i', NULL, '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(74, 'Heaven Frami', 'ywitting@example.net', NULL, '$2y$12$a/7NUedUdZPylgnJcp/cZO1heEKy9MPrCyb/WTjm76wOpICYDalHm', NULL, '2025-06-27 04:18:38', '2025-06-27 04:18:38'),
(75, 'Dr. Annetta Tromp', 'santos16@example.net', NULL, '$2y$12$Lp.z74Q.DRocuGyu/JJmwuIgam5VzFv.icK2UNzfdOV3GhJ5l.ZxS', NULL, '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(76, 'Sibyl Stark', 'zoey.ondricka@example.org', NULL, '$2y$12$9F6Ty3IicXn/hRYyDsBnPeO67PMM4oNl9lnOVSFVX6Wi66t9tjimm', NULL, '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(77, 'Carolyne Rice', 'hagenes.marques@example.net', NULL, '$2y$12$WdUhIsZX5eCRHIarOiSgweR5gqRs0kLSPmfM4rwyNFJoB60dWDV5O', NULL, '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(78, 'Marlen Romaguera', 'frohan@example.com', NULL, '$2y$12$OTt7jWasHG8fWgsDLjIfx.HqgDGxYqeSvArftS8HIA/qaEqrVOEcy', NULL, '2025-06-27 04:18:39', '2025-06-27 04:18:39'),
(79, 'Prof. Frederick Pouros', 'ransom.kiehn@example.com', NULL, '$2y$12$pQpmHpBHMb89JmB8iaHSaekpv9fZrTGqIUjyb4jcvLV3pPvRBQYda', NULL, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(80, 'Olga Labadie', 'billie.hyatt@example.net', NULL, '$2y$12$6P9kHES08hnE59KrSeor8.YYr.Phek.Ib999CCPD0OoWs43Cq9MJy', NULL, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(81, 'Ismael Mosciski', 'trinity90@example.org', NULL, '$2y$12$ut3HphifYkuVE61WxLn6XObzgkeeHqyQ3xTaTZqXIl.U.SdQe3gDS', NULL, '2025-06-27 04:18:21', '2025-06-27 04:18:21'),
(82, 'Marcelo Kautzer', 'rosenbaum.brenda@example.org', NULL, '$2y$12$GS0/y2awVenr5OetGUqXOeIs039zIIegT6wM9x0lZN5pD2vO2GVT2', NULL, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(83, 'Mr. Kristofer Wuckert Sr.', 'kuhic.sarina@example.net', NULL, '$2y$12$AoUJtsfgBaA4QSurDiPdO.pKHcdSXKogfePNuvCvLqUfzHGGzKNaW', NULL, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(84, 'Kariane Gusikowski Sr.', 'koss.abagail@example.net', NULL, '$2y$12$A3vxd8uhGD7IUvoKmLZn/e/SpkRJ6VkNMkfaoEwTXaQTGBxhnAgsG', NULL, '2025-06-27 04:18:40', '2025-06-27 04:18:40'),
(85, 'Pablo Beahan', 'karianne.lehner@example.com', NULL, '$2y$12$zMrtmfj3NaP6bxFWfPwdN.UuRz.zfXxpiYgKNLcWGj1Irqmjlne7i', NULL, '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(86, 'Ford Kutch', 'padberg.hassie@example.com', NULL, '$2y$12$8R0sKtYUE0dAn82QeErIM.9nh.DieAvYc9AGMxA.sZ69TtWb8zZ/K', NULL, '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(87, 'Nikita Lind', 'plowe@example.org', NULL, '$2y$12$6KQ.p5Py92l0LBd2ytTgJO8amPM/c/9GWJQj6gTLIhoNSMIXDIu8C', NULL, '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(88, 'Mr. Gregorio Langworth DVM', 'dickinson.ivy@example.net', NULL, '$2y$12$8bGEF1Dg8XXe6MFIMOjqVOYG1UZd4TRX9C3dX0HWQtKy2ba9YAEWO', NULL, '2025-06-27 04:18:41', '2025-06-27 04:18:41'),
(89, 'Miss Elinore Kuvalis', 'xbartell@example.org', NULL, '$2y$12$gFMr2gefwYAXCL9Hqitr2uXt0zlabbPZ5P8y22N9XnHgw7PhM9Ava', NULL, '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(90, 'Mr. Miles Jacobson', 'rutherford.devyn@example.org', NULL, '$2y$12$B.niJQWxi7Ld0XNQkUvjc.LobZ2UGXhiWiVLmpnveR53rsCQRa0/K', NULL, '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(91, 'Christina Gulgowski', 'wstreich@example.com', NULL, '$2y$12$0zVt9Sa8qTAtAFSwbfnMbe8iu2Hb0XYSzbYWk46ZgellbsnsS1.Tu', NULL, '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(92, 'Lina Torp', 'catherine.langosh@example.net', NULL, '$2y$12$f188Ik1oOYZvlVOey4TvMuon/MhXCysiftVZMd6eWwzqQsNy.uMca', NULL, '2025-06-27 04:18:42', '2025-06-27 04:18:42'),
(93, 'Stewart Weissnat DDS', 'kub.gregg@example.com', NULL, '$2y$12$WOqw7d47tWWZ.pqXgucWMOKw7tjMTYAtpbead8255e3suox6399Eu', NULL, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(94, 'Prof. Golda Funk II', 'melany24@example.com', NULL, '$2y$12$SM4I7Oq7BO7.CZb4hhjAHOHyddXk1BLh.YMbsiDNoFhtS/KN7Ws5a', NULL, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(95, 'Murl Sauer V', 'dayna58@example.org', NULL, '$2y$12$k3fR3gYxtAHdNp6UYy1dXOBzhXfqcIqEysbwIXHvIh3lbVwZ.V.0S', NULL, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(96, 'Dr. Markus Block DVM', 'qhalvorson@example.com', NULL, '$2y$12$3C4/ahmAPxodGF9Bif8uNOwpwJeVtRUFP6VUDrbifimKhuvzWEvYq', NULL, '2025-06-27 04:18:43', '2025-06-27 04:18:43'),
(97, 'Crystel Daugherty', 'oren39@example.com', NULL, '$2y$12$fzHESNp4jZ6pYrQzOl5cwO5zgQ0qgRG6Y16Nr4RMNbsH3qF0Isc7K', NULL, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(98, 'Prof. Misael Jerde PhD', 'fshanahan@example.com', NULL, '$2y$12$AnGFyesM8/9ljDDJIYNToOXIY0VGK9BhTrLQYb1NxAthNZWY33ZeO', NULL, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(99, 'Christine Kulas', 'ofunk@example.com', NULL, '$2y$12$ukpWgRN9b6.ugVLRbubOreJ.9W3/LC/MQ6H8Xwg7bYsAV2KeVkrei', NULL, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(100, 'Kristy Botsford', 'konopelski.bernice@example.org', NULL, '$2y$12$mD.KE3QP9dnheO7UMa6CjehcHbAAm9LD2dF5I/xxlkFo/Sa3ezHs.', NULL, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(101, 'Penelope Jacobs', 'wiegand.emmalee@example.com', NULL, '$2y$12$TYHKl1YZX9Y9npgpXLxyKuezPmco/.2pxbleljK401oOH/uPRA0.S', NULL, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(102, 'Korey Gulgowski', 'dusty.gottlieb@example.net', NULL, '$2y$12$92zs5xqyeMACEuuA6C511.pR56873Kgu72YTyLKDmBPpvzqJ.i9FG', NULL, '2025-06-27 04:18:44', '2025-06-27 04:18:44'),
(103, 'Ezekiel Wintheiser', 'judy60@example.net', NULL, '$2y$12$LKdyq7vYwLEHvmO64fMOUe7MXvVOisnYrZkpLhVb5lLCxBEWdyEBO', NULL, '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(104, 'Lamont Runolfsson', 'obeahan@example.net', NULL, '$2y$12$KQrC8yAT2nUesh4euIsZ4u.tyNAcK6nVKZCUKPz8iF4d6tpmOAXMG', NULL, '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(105, 'Kelvin Hill', 'hagenes.alexandria@example.org', NULL, '$2y$12$5eNzYuTenVXatzBUMeKTzuiEqXUnBmwsGePJAlvHrJfSEFDZUgGzu', NULL, '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(106, 'Robbie McKenzie', 'susie.russel@example.org', NULL, '$2y$12$05NTdoGDK3qfuUWs0AQ1B.scsny3/1V3MdebpE/xfnVehZQEBb9Tu', NULL, '2025-06-27 04:18:45', '2025-06-27 04:18:45'),
(107, 'Prof. Candelario Haley V', 'emerald.hettinger@example.net', NULL, '$2y$12$u7Mw80dgzI.etbqCp8srv.8FBOO75raFW3Ae1OiR0OyF/x.o3Rs4S', NULL, '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(108, 'Miss Orpha Mraz PhD', 'adan07@example.com', NULL, '$2y$12$AyPgkqeNtsDURzQGxjfCmuGI/u9Ls2F6ITVoIOgGm3P8A7LZFojSy', NULL, '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(109, 'Gabrielle Brekke', 'aaron45@example.org', NULL, '$2y$12$xxlU6s9wh4.UvL63ytkGH.tQxAJGa6iHwYuqIKY1JPik7GQKLSKji', NULL, '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(110, 'Cordie Kihn', 'russ62@example.com', NULL, '$2y$12$Pd61z2gKRKGDHT2mfR.Lt.mD6eiaPm.VvEvcLZhCxueb8RiBxxjWS', NULL, '2025-06-27 04:18:46', '2025-06-27 04:18:46'),
(111, 'Fiona Koss', 'athena14@example.net', NULL, '$2y$12$clXRONx00mPsakAVGumAQOTMgt3/go52w9voARhVI5z45w56jb5eW', NULL, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(112, 'Dr. Waino Reynolds', 'yazmin.koepp@example.org', NULL, '$2y$12$d0Rnoc79HvqV8prakgszzODT10LrcH0Skkb0SXU0sUd.B0i9C9f92', NULL, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(113, 'Isabell Runolfsdottir', 'jaskolski.jacquelyn@example.org', NULL, '$2y$12$.lbz1aMrtqKpLoOeej1Do..dJ6S7oU0uDbPqAIt9ETsmJH0hiSif6', NULL, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(114, 'Cesar Hermiston', 'harris.daphney@example.com', NULL, '$2y$12$OYTx8Ejqm/m7ddkq92YUfOJTxBCEPBp9SNv2jjkSCB9zJd9qY.9MK', NULL, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(115, 'Stone Schulist', 'naomie82@example.com', NULL, '$2y$12$WD/tLIc4HATYm5RWf8NWbumMB7GAT5hKJWBNtGNviWj.kUEznPv26', NULL, '2025-06-27 04:18:47', '2025-06-27 04:18:47'),
(116, 'Waylon Bailey', 'mitchell04@example.com', NULL, '$2y$12$YXSmhGWFFkGaC70FpZGyXeZN92TLoBVfnVhn09iXMgqoe2XIpGt6S', NULL, '2025-06-27 04:18:48', '2025-06-27 04:18:48'),
(117, 'Miss Georgianna Veum', 'reina.denesik@example.net', NULL, '$2y$12$Vv7il/AHb/9tVDMZUz5xMu7SmVShn.YUMybH7FTK/n.9UKGbXaee.', NULL, '2025-06-27 04:18:48', '2025-06-27 04:18:48'),
(118, 'Prof. Golden Schoen DDS', 'ayana72@example.net', NULL, '$2y$12$PTzsh93MAmbbRXZM8GYOc.LQP85x1eeKdJJ3Oq6tNzojgwTRm2d7a', NULL, '2025-06-27 04:18:48', '2025-06-27 04:18:48'),
(119, 'Brennon Wisoky', 'reece.moore@example.com', NULL, '$2y$12$z3u97HSKjbib9w9ad1pvTeBFSTZ69DdbVG.Buwa/S2BrzpkcMV336', NULL, '2025-06-27 04:18:49', '2025-06-27 04:18:49'),
(120, 'Kelli Kulas Sr.', 'borer.krystel@example.org', NULL, '$2y$12$GCFIpx442HSGABU9z9NkTuU.MJUCmQwPTTQqmZMV5kDcADJjQWQKe', NULL, '2025-06-27 04:18:49', '2025-06-27 04:18:49'),
(121, 'Mrs. Whitney Feeney', 'parisian.flavio@example.net', NULL, '$2y$12$3hhzYXBDGred619cXs2Z2u81OjrqkLTefvTbh5rKMIoDcOp7KjIzy', NULL, '2025-06-27 04:18:50', '2025-06-27 04:18:50'),
(122, 'Lolita Harris', 'cecilia.hessel@example.net', NULL, '$2y$12$5EqP5ku.GSFW8F/yjJbdSeGlxZO1NBLMMy9V7B1uzuFh.D2Zdec0m', NULL, '2025-06-27 04:18:50', '2025-06-27 04:18:50'),
(123, 'Prof. Berta Nolan', 'elisha88@example.net', NULL, '$2y$12$PVIKa23tllOehxK4oyWX.O/CqpRq5PEklUefRsxBOOR4J9fTYZK2m', NULL, '2025-06-27 04:18:50', '2025-06-27 04:18:50'),
(124, 'Dr. Bud Thiel', 'joaquin61@example.org', NULL, '$2y$12$oSsn3lSawJOjikDbv1Gufe2UfEavbLu..wY9ss9uAYfZPECB.frhi', NULL, '2025-06-27 04:18:51', '2025-06-27 04:18:51'),
(125, 'Joanie Nader', 'madyson91@example.net', NULL, '$2y$12$gn281692/pFpuxNr/Gvlaey6eSBxPYGOn4mNhPTKrGTQTxYs7zPSm', NULL, '2025-06-27 04:18:51', '2025-06-27 04:18:51'),
(126, 'Dr. Rollin Feil DVM', 'stephon.huel@example.org', NULL, '$2y$12$.EQ4ZoRvRbGRQPFyGu3liOeQmtu.Rpy7lq7YRx2MgpsVCuvZJZCbG', NULL, '2025-06-27 04:18:52', '2025-06-27 04:18:52'),
(127, 'Mrs. Andreanne Walter DDS', 'larkin.amara@example.com', NULL, '$2y$12$X7JJP6yog4PIchUaHFuOK.RG826End9gaUEgrYpn69YE9IIiq91Ge', NULL, '2025-06-27 04:18:52', '2025-06-27 04:18:52'),
(128, 'Cory Ryan', 'maggio.amiya@example.org', NULL, '$2y$12$9eZliCnSspjsEeAng/JIDuWbs.A//F0n4iQzaQZyJwcbb7PDQs9Gu', NULL, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(129, 'Mr. Jabari Rolfson', 'ophelia53@example.com', NULL, '$2y$12$E8s9UgaCb4rBUkt/xtEiEO7EKe0slcDinqcrpYO8heUvi3Trqpogm', NULL, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(130, 'Dr. Jillian Okuneva II', 'nsatterfield@example.com', NULL, '$2y$12$wB04SdsXNW5iKcbdO0fBF.4HIlLB9Di4Deq0MLttLZSfmExz4r.sS', NULL, '2025-06-27 04:18:53', '2025-06-27 04:18:53'),
(131, 'Mrs. Dolores Roob', 'arianna81@example.net', NULL, '$2y$12$zkhjroboHSCmlZDGkqB02uUVigouPVS9Yvu0DRTGul.7dsWmsrV/y', NULL, '2025-06-27 04:18:54', '2025-06-27 04:18:54'),
(132, 'Estevan Hauck', 'bryce52@example.org', NULL, '$2y$12$j26b5AtUHs5oe5DHI93RYO8g0mBluddcwnUYw7XeKbGmLHfeiJSKq', NULL, '2025-06-27 04:18:54', '2025-06-27 04:18:54'),
(133, 'Prof. Kendall Breitenberg I', 'pwiegand@example.com', NULL, '$2y$12$6RWYa7EZYzaaR.gbfb.eOuM8j9Rkjm9/G3vwv86JIqma30sm16LUS', NULL, '2025-06-27 04:18:54', '2025-06-27 04:18:54'),
(134, 'Don Blick', 'eblock@example.com', NULL, '$2y$12$7ihvbw/MOpfiI6OAKytc4.qsbG2mwWZK74C2IvvsE6qJNvM2kYkm6', NULL, '2025-06-27 04:18:55', '2025-06-27 04:18:55'),
(135, 'Zella Cormier III', 'edward.moore@example.org', NULL, '$2y$12$l8/uKC5xIv0ziPONmkBvTer3GLlDF2rgepbt46jAQ0q2kL2NrY1je', NULL, '2025-06-27 04:18:55', '2025-06-27 04:18:55'),
(136, 'Kyle Dach', 'nreichert@example.net', NULL, '$2y$12$iAp8sEet6cVtQ6CxkVg0wuxvVvkzL9Mgb25e4wh.9GqWBV4G3yj8a', NULL, '2025-06-27 04:18:55', '2025-06-27 04:18:55'),
(137, 'Breana Goldner', 'ryan.schamberger@example.com', NULL, '$2y$12$JtQgfnm81i8Wkko/wbdpPegwfv/VvVUYSs.dRQWX1ybmk3JbQlSjq', NULL, '2025-06-27 04:18:56', '2025-06-27 04:18:56'),
(138, 'Mariane Hand III', 'jordan57@example.com', NULL, '$2y$12$DXQkFWeqppKZNwwII9ZuuOIEy6foMSkvgVqpIVCHILQRAd5884QWO', NULL, '2025-06-27 04:18:56', '2025-06-27 04:18:56'),
(139, 'Ms. Dolores Rosenbaum PhD', 'macey50@example.com', NULL, '$2y$12$fOk7wuxdsZdgUZpfGaMUzOFAErjhllDlYvCZvEGAnfxrg1z7J8qpm', NULL, '2025-06-27 04:18:57', '2025-06-27 04:18:57'),
(140, 'Gavin Schaefer Jr.', 'vmann@example.org', NULL, '$2y$12$VyA4Gsnmque2jAuF9wMtQ.C1rpq5.qwtzMjAy//2xAexcF/ko5scG', NULL, '2025-06-27 04:18:57', '2025-06-27 04:18:57'),
(141, 'Torey Torphy DVM', 'estella51@example.net', NULL, '$2y$12$AoAmfDMFGw6/1UTnNp/K2OBwueKkTaHjH3047KUUIqcTuf.365Ism', NULL, '2025-06-27 04:18:57', '2025-06-27 04:18:57'),
(142, 'Madison White', 'qschimmel@example.com', NULL, '$2y$12$mA/dBvxJ1iE.sLjzIQaYvOPULuZUj0veYPHXkKO1EU4Y1Dpsryly2', NULL, '2025-06-27 04:18:58', '2025-06-27 04:18:58'),
(143, 'Lilla Tremblay', 'fabiola20@example.org', NULL, '$2y$12$01LUQwdhmYlDLxDtIZeJSejjCCAoRg5QUafKb7jsO7RsKOCegvS66', NULL, '2025-06-27 04:18:58', '2025-06-27 04:18:58'),
(144, 'Victoria Kiehn', 'franz.ritchie@example.com', NULL, '$2y$12$1KtO4BJ7DrXpXiYec/VMQ.YRNu23vasxRgLL84SMfQY0snGkSTlxy', NULL, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(145, 'Dr. Dwight Heathcote', 'vicenta37@example.org', NULL, '$2y$12$uEwCcr/EcDO1jWsOJmqJYe8NFKYhDO8LTMwb9yOmz.gcNBGBWc98y', NULL, '2025-06-27 04:18:22', '2025-06-27 04:18:22'),
(146, 'Prof. Sibyl Kulas', 'lexi.hagenes@example.org', NULL, '$2y$12$vlQcRitT8y1Fg.cIoEfgIuHeM872CiloEHBbZIqQcB/tdMEE/bPtu', NULL, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(147, 'Miss Marjorie Keeling III', 'alan55@example.net', NULL, '$2y$12$zEqau3tRjXeC9O382LI4duOpExTLlOC2zfecX2ExKxvzGOl7uPF0S', NULL, '2025-06-27 04:18:59', '2025-06-27 04:18:59'),
(148, 'Prof. Garrett Schuster Sr.', 'rae.sauer@example.net', NULL, '$2y$12$3UnKyT3cVJAKQUTOZP2q1.OTH9eXSruP02v7sNjQvEu6GRTJbMASm', NULL, '2025-06-27 04:19:00', '2025-06-27 04:19:00'),
(149, 'Deangelo Beatty', 'qstehr@example.net', NULL, '$2y$12$yPjuVaUoH/.lxxi8rFOYYOIwDPFWBrmBVIlXl3.PF9SvvVHapHIWq', NULL, '2025-06-27 04:19:00', '2025-06-27 04:19:00'),
(150, 'Shawna Ondricka II', 'tromp.kayleigh@example.net', NULL, '$2y$12$fPPMXAPC1UqPHFx0L.uljuk7U8.ntwuuEDuy1NrQQsUKo7jHco9bS', NULL, '2025-06-27 04:19:00', '2025-06-27 04:19:00'),
(151, 'Trycia Wyman', 'juwan77@example.net', NULL, '$2y$12$q8G49Kk9WlYRF7ufjGQq9eUhfGfTf88Cld/a/T2lnM.N/RhPuf09e', NULL, '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(152, 'Amparo Weimann', 'garnet.dicki@example.net', NULL, '$2y$12$wyg8C2LQ4nFL6S.NXBbssOpa8m9/PEViLx5S5HP0sHfmyDvht2tB2', NULL, '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(153, 'Dr. Jovany Rowe', 'krystina19@example.org', NULL, '$2y$12$dtzTmmmjQu5RwY8RUEooluVAlQxU08RvUfEU65EiKN4FwIbagkrii', NULL, '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(154, 'Dr. Kirk Ruecker IV', 'nicolette94@example.org', NULL, '$2y$12$8jnF6L67dhZTUIn2c4HwRutVwv1/JYKXcu2RJHKV5u3vsuLbuvagK', NULL, '2025-06-27 04:19:01', '2025-06-27 04:19:01'),
(155, 'Anastacio Hickle', 'valentina20@example.org', NULL, '$2y$12$.rZP9zw3uNBYZw7IoxlV3usgU4xyv3KKd539vKNxHH7nT2wnMWORa', NULL, '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(156, 'Mrs. Letha Funk', 'gsanford@example.net', NULL, '$2y$12$Cvd.ZxRYe.U316a1fzQlEuR5VKey2N4oGHHbKysnxQjb7RC/9bmc2', NULL, '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(157, 'Kellie Rodriguez I', 'deron.rosenbaum@example.net', NULL, '$2y$12$i1Q46lejDQEuoS1aStS8veai07MgPqHZojZVRA5pyvZ4/ntBwviEe', NULL, '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(158, 'Sterling Erdman', 'cora70@example.org', NULL, '$2y$12$JNAHCeVmswPOlwaDSkkcaePw8a7SljsjgV8M/Z/lqgSAJaYERGw/O', NULL, '2025-06-27 04:19:02', '2025-06-27 04:19:02'),
(159, 'Mr. Murray Bergstrom', 'bschulist@example.com', NULL, '$2y$12$QPKWsw8nmx/TTOWF/5SOpusXfcL1CZ.Csx6pjDPU0sNcqL0n5zoSG', NULL, '2025-06-27 04:19:03', '2025-06-27 04:19:03'),
(160, 'Leila Luettgen', 'anabelle35@example.com', NULL, '$2y$12$AZcDWfduY0xqw3skfjG66uSltWDmOceSzId6.kaVnnPSUKL6awpeW', NULL, '2025-06-27 04:19:03', '2025-06-27 04:19:03'),
(161, 'John Doe', 'john@example.com', NULL, '$2y$12$ysquDAPx.APvgJ8IumgeveWGU3guIW6aR.ujORREnZ/HdBHZYpF62', NULL, '2025-06-27 04:39:11', '2025-06-27 04:39:11'),
(162, 'John Doe', 'ratheesh@gmail.com', NULL, '$2y$12$TLvSR9ivvAYu4gamgmpXFepn1mVuSs.7wxNZsfg2OMvmS6PMzwL4i', NULL, '2025-06-28 00:15:46', '2025-06-28 00:15:46'),
(163, 'Ratheesh N', 'ratheeshn@gmail.com', NULL, '$2y$12$7AxYuCpEun.82h.hCcmh9OvRR0IHAGeVJTCcyXgjLvdT4gj.WwLDC', NULL, '2025-06-28 02:01:56', '2025-06-28 02:01:56'),
(164, 'Ratheesh N', 'rathe211@gmail.com', NULL, '$2y$12$u6jKzEvW4nPpbPAfc5PYtuU63G5chRGC8NtZfLwCjfODkPD0/BEF6', NULL, '2025-06-28 02:12:47', '2025-06-28 02:12:47');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `blog_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_post_tag`
--
ALTER TABLE `blog_post_tag`
  ADD CONSTRAINT `blog_post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `blog_tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
