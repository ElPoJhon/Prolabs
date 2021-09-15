-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2021 a las 23:45:59
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `metamorfosis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2020_11_30_103307_create_sessions_table', 1),
(10, '2020_11_30_110732_create_tasks_table', 1),
(11, '2020_12_01_055549_create_roles_table', 1),
(12, '2020_12_01_055557_create_permissions_table', 1),
(13, '2020_12_01_075730_create_permission_role_pivot_table', 1),
(14, '2020_12_01_075804_create_role_user_pivot_table', 1),
(15, '2021_04_02_231452_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_access', NULL, NULL, NULL),
(2, 'task_access', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Ut sed nihil fugit vel.', 'Reprehenderit neque possimus hic expedita. Culpa rerum in optio alias. Quis voluptas blanditiis vel ut architecto quod consequatur.', '2021-04-03 04:23:49', '2021-04-03 04:23:49'),
(2, 'Est sunt hic at.', 'Velit sit sed et eos temporibus pariatur distinctio. Porro enim assumenda consequatur officia sed voluptatem. Reprehenderit quo et alias.', '2021-04-03 04:23:49', '2021-04-03 04:23:49'),
(3, 'Minus a et voluptatem tempora molestiae sit delectus.', 'Non iusto placeat sit asperiores reprehenderit ipsa dolorem. Nostrum ullam adipisci qui placeat adipisci hic ut. Distinctio dolore est eos sunt culpa ipsum eveniet sunt.', '2021-04-03 04:23:49', '2021-04-03 04:23:49'),
(4, 'Perspiciatis iste aut fuga voluptates omnis commodi.', 'Aliquid et est ducimus doloribus tempora. Ut aut aut vel quasi at perferendis. Voluptatem quia perferendis tenetur.', '2021-04-03 04:23:49', '2021-04-03 04:23:49'),
(5, 'Sint et nesciunt aut repudiandae vel.', 'Non totam et commodi harum. Itaque rerum quo et voluptas tenetur aut. In nisi ipsam esse ea nisi sit ipsam. Animi quis omnis reprehenderit quibusdam. Modi nihil quia et veniam animi delectus porro.', '2021-04-03 04:23:49', '2021-04-03 04:23:49'),
(6, 'Sint sint necessitatibus voluptatem similique voluptatem pariatur voluptas.', 'Exercitationem omnis deleniti laboriosam reiciendis. Natus repudiandae officiis et id eum aperiam ut. Omnis omnis porro deserunt. Atque sapiente recusandae dignissimos impedit aliquam qui.', '2021-04-03 04:23:50', '2021-04-03 04:23:50'),
(7, 'Aut nesciunt aut earum quo possimus.', 'Et et est natus sed vero voluptatum hic. Sit quod quo consectetur velit asperiores totam temporibus pariatur. Maxime voluptatem nobis quos. Eum quidem quasi aliquam voluptatum.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(8, 'Quas rerum quibusdam id reprehenderit omnis.', 'Asperiores unde consequatur dolore quo. Tempore numquam quia enim modi nemo nemo et. Sint unde laboriosam commodi.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(9, 'Consequatur et consequatur officiis voluptatum quia.', 'Culpa velit natus cumque molestiae sapiente sed. Vero repudiandae harum et. Ut possimus quaerat debitis doloremque debitis eum quis. Ipsa molestiae et esse consequatur consequatur.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(10, 'Labore qui eius culpa voluptatum.', 'Fugiat quas facilis minima quia hic. Architecto cum non adipisci reprehenderit libero neque. Eos sed vero quo accusantium aliquid velit.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(11, 'Consequatur architecto id officia a.', 'Dolores repellendus nisi est et quam est accusamus. Illo et nihil aliquid necessitatibus. Recusandae voluptates iste animi vitae est minima. Et enim molestias repellat et porro sit.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(12, 'Molestiae deleniti iure cupiditate aut quam ullam natus.', 'Omnis voluptatem temporibus vitae quas modi ad recusandae. Quis quae qui et. Autem minus et fuga nisi dignissimos iste.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(13, 'Enim totam minus minima ipsa consequuntur odit.', 'Eum aut quo beatae deserunt est consequuntur cupiditate. Natus saepe et voluptas quis ut iure qui neque. Omnis quia quisquam adipisci voluptatibus. Rem sint dolorem non officiis autem odit occaecati.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(14, 'Repellendus totam at rerum libero voluptatibus.', 'Consequatur magni sit illo maxime et. Fugiat autem nemo consequatur. Magni quam nostrum et architecto.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(15, 'Quia deserunt tempore odio magnam omnis dolores ipsam.', 'In libero nemo id aut amet temporibus. In delectus est repudiandae perspiciatis ut occaecati vel. Delectus omnis officiis eos cum eos. Iusto ipsam inventore impedit maxime est ratione.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(16, 'Est repellat illum dolor voluptate numquam a.', 'Architecto ut sed neque et minima facilis magni. Veniam consequatur magnam pariatur dicta voluptas. Et consequatur ullam et voluptatem.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(17, 'Id facere tenetur aut rerum vel.', 'Nisi iste dolorem ut corrupti vero quia ullam. Facilis ut at rerum fugiat officiis ut impedit. Reprehenderit ullam magni maiores quo ab est.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(18, 'Asperiores omnis et saepe quia quia fugiat est.', 'Illum voluptatem sapiente quidem non sint quia. Aut temporibus maxime ut. Deleniti itaque et sint suscipit. Dolorem laudantium qui recusandae.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(19, 'Et accusantium quia repellat veniam sapiente deserunt ducimus.', 'Et est in modi quibusdam perspiciatis laboriosam. Eaque est saepe eveniet cum quis numquam. Expedita saepe est exercitationem quia delectus officia.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(20, 'Mollitia similique molestiae animi qui vitae dignissimos nam.', 'Sed omnis cum ut et corporis cupiditate optio alias. Quidem id autem error quia eveniet et. Quidem optio ab totam optio.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(21, 'Tenetur omnis et sit voluptatibus.', 'Dolor et sapiente saepe voluptatem cupiditate neque. Et eos qui consequatur culpa vel nobis est. Voluptatum eos voluptatem suscipit temporibus dignissimos nihil.', '2021-04-03 04:23:51', '2021-04-03 04:23:51'),
(22, 'Quisquam dolores enim totam ducimus voluptatem est non.', 'Optio neque quidem qui. Esse rerum placeat voluptatibus quo at. In ex voluptatum omnis nulla sed ex nihil.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(23, 'Dignissimos nobis adipisci quod quasi.', 'Molestias nihil odit laudantium ut vitae et. Fugit qui laboriosam eligendi a nam voluptatibus. Animi exercitationem libero et. In accusamus est omnis qui vel.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(24, 'Vitae culpa labore dolore repudiandae est praesentium nemo cum.', 'Assumenda et cum sit. Est in et magnam error asperiores quis. Nam id eum quibusdam qui corrupti soluta est unde. Esse beatae placeat enim est.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(25, 'Quidem quae veniam laborum dolorem.', 'Corrupti ratione magnam qui dolores. Aliquam omnis mollitia quia ratione mollitia quia voluptas consequatur.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(26, 'Distinctio sit expedita aut pariatur quod ea ut.', 'Est maxime non aut aut nobis. Omnis minus ea odit voluptate numquam voluptatem. Facere esse et sed consectetur commodi dolores quam quo. Animi sunt odio perferendis sit tenetur.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(27, 'Est commodi voluptas et voluptatem.', 'Veniam quas tenetur aperiam fugit. Voluptate sed necessitatibus perspiciatis et et. Possimus est ipsum molestias quia adipisci a. Distinctio dolorem natus in et corporis hic voluptas sunt.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(28, 'Perferendis porro consequuntur nisi.', 'Deserunt eligendi mollitia ex quis. Iure non consequatur aut exercitationem voluptas. Nemo fugiat quo doloremque itaque quod rerum.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(29, 'Est sed consequuntur at ullam nam ab.', 'Pariatur dolor voluptatibus facilis vero qui. Ea nisi aut dolor voluptas deserunt voluptatibus optio animi. Ut et nesciunt minima consectetur. Fugit aut corrupti a dignissimos consequuntur.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(30, 'Dolores quibusdam repudiandae id ipsam velit qui.', 'Nobis officia cupiditate exercitationem non et. Hic ratione dolor beatae quam adipisci natus laboriosam.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(31, 'Laboriosam ipsam et rerum.', 'Incidunt voluptatem et laboriosam. Omnis ut officiis quo voluptatem sit exercitationem quaerat dolor.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(32, 'Occaecati veritatis doloremque commodi iste ut soluta.', 'Dolore magnam ea dolorum reiciendis. Aperiam est enim qui asperiores et et. Placeat aut et sed. Quia qui aut non dolorem molestiae facere modi.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(33, 'Dolore ut aut aut eos id.', 'Aut quae maiores itaque tempore nesciunt. Impedit qui expedita rem adipisci voluptas. Harum voluptatem dolor est molestiae est totam.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(34, 'Blanditiis dolor quasi quibusdam magni laborum aut.', 'Aut ea ullam quam rem saepe veniam corporis. Ea est totam sint debitis praesentium.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(35, 'Dolores error aliquam reprehenderit et.', 'In beatae fugiat aliquam sed. Illum at pariatur omnis non est distinctio consequatur quaerat. Accusantium non optio minima in quidem. Facere rerum non est eaque fuga similique tempore tempora.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(36, 'Dolor sint dicta nihil consectetur ratione quod ipsum quos.', 'Vel aut perferendis dicta dolores. Molestiae quaerat voluptatem repellat et praesentium doloremque architecto. Et suscipit sunt saepe a. Excepturi deserunt voluptatem enim quo omnis.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(37, 'Enim dignissimos et totam eius et ipsa.', 'Vel ea quos hic voluptas sunt et. Eos quia iste recusandae exercitationem magnam. Qui cumque aliquam tenetur molestiae minima ut dolorem. Voluptas non dolorem quibusdam in aliquam dolor sit.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(38, 'Dolor atque dolores culpa perferendis non atque.', 'Neque quisquam quod autem est. Laborum tenetur et quis ipsam aperiam soluta labore. A expedita incidunt consequatur suscipit nam ut sunt.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(39, 'Rerum consequatur sint illum exercitationem expedita.', 'At debitis sint culpa impedit recusandae. Atque ea sunt beatae sed sunt id laborum. Quia laborum inventore amet. Commodi reiciendis nisi nihil quos quia a odit.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(40, 'Delectus possimus deleniti recusandae similique.', 'Eaque tempora rerum porro et quam ducimus ut. Ab earum recusandae tempora expedita porro similique. Repellat at eum eius ut pariatur harum qui et.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(41, 'Sunt quis soluta tempora incidunt aliquid ea quasi voluptatem.', 'Iusto aliquam inventore dignissimos. Qui et voluptas optio eligendi a quas. Facere sed alias iusto. Perspiciatis laboriosam magni saepe et aliquid soluta quaerat.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(42, 'Autem reiciendis vero sed est porro officia quae.', 'Voluptas dolores ut ab ut. Dicta deleniti nisi est corrupti quo necessitatibus. Unde repudiandae consequuntur maiores magnam delectus possimus fuga. Ut dolorem aliquid et recusandae.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(43, 'Ut amet possimus et quam qui aut eveniet.', 'Illo sit molestias minus ut quae amet laudantium vitae. Ut iusto laboriosam id sint. Non quidem eveniet voluptatem praesentium eveniet. Delectus doloremque omnis omnis debitis optio in soluta.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(44, 'Aliquid ad blanditiis nisi et optio ratione similique.', 'Corporis sit illum tenetur quidem. Magnam temporibus molestiae blanditiis quod aut aut itaque dolore. Ut assumenda quasi aut.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(45, 'Placeat consequatur cum quisquam autem totam maiores dolor officia.', 'Consequatur ab magni quia autem magni. Eligendi laboriosam repudiandae ad omnis ut qui accusantium. Architecto earum et ut consequatur. Adipisci itaque labore qui nulla cum et.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(46, 'Perspiciatis nobis sequi quia nisi necessitatibus velit sed.', 'Aut qui ipsum aliquam porro. Iste quae quidem sit est. Suscipit iste in sit voluptatum. Quo aut porro tempora iusto. Vel sapiente qui adipisci quo. Quisquam similique esse quis quia expedita.', '2021-04-03 04:23:52', '2021-04-03 04:23:52'),
(47, 'Perspiciatis asperiores delectus recusandae dolorem in.', 'Qui quasi nostrum blanditiis. Cumque blanditiis esse nobis nostrum itaque rerum et. Consequuntur dolor doloribus numquam et voluptas labore quisquam. Beatae beatae voluptates eveniet velit.', '2021-04-03 04:23:53', '2021-04-03 04:23:53'),
(48, 'Nulla reiciendis illo et libero aspernatur.', 'Aut et minus aut maiores earum. Consequatur delectus deserunt commodi ut aliquam rerum id. Eius similique dolores quasi occaecati aut.', '2021-04-03 04:23:53', '2021-04-03 04:23:53'),
(49, 'Quis necessitatibus sapiente nihil dolorem.', 'Laboriosam quos eveniet at placeat saepe omnis. Fuga labore fugiat amet quo itaque dolorem. Rerum voluptatem iusto dolores aut. In porro modi enim eligendi voluptatem ut saepe.', '2021-04-03 04:23:53', '2021-04-03 04:23:53'),
(50, 'Officiis aut quas aut et fuga aperiam.', 'Sit ratione assumenda aut accusamus nam molestiae eos. Dolor iusto ut id. Id hic dolorem iure. Molestiae at in commodi voluptas aut.', '2021-04-03 04:23:53', '2021-04-03 04:23:53'),
(51, 'Facilis dicta nemo eaque ullam quibusdam.', 'Sit quia vitae iusto qui vitae ratione est. Expedita ea magni ab voluptas dolores. Aut repellat consequuntur debitis ut.', '2021-04-03 04:23:53', '2021-04-03 04:23:53'),
(52, 'Nostrum repellendus omnis ut repellendus.', 'Non molestiae non exercitationem consequuntur sit tempora nihil. A quasi iusto et enim. Temporibus officiis aliquid velit quos id in ad.', '2021-04-03 04:23:53', '2021-04-03 04:23:53'),
(53, 'Architecto non quibusdam atque repellendus incidunt aspernatur.', 'Nemo non cumque consequatur ut itaque. Eveniet amet nisi quidem quam facere laudantium iusto. Iure nobis omnis molestias. Non fugiat sunt dolores expedita minima qui earum consequatur.', '2021-04-03 04:23:53', '2021-04-03 04:23:53'),
(54, 'Officiis temporibus repellendus vel sed repellat qui.', 'Ea debitis neque quis unde. Tenetur quas nam asperiores ipsum blanditiis asperiores minus. Aut consequatur officiis maxime excepturi magnam officiis et iure. Vel magni illum assumenda impedit.', '2021-04-03 04:23:53', '2021-04-03 04:23:53'),
(55, 'Illo sapiente omnis qui.', 'Quam deleniti aut et est quo deserunt eaque. Quo eos minus est consequatur molestiae deleniti. Aut eligendi perferendis nobis qui non exercitationem earum.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(56, 'Exercitationem ex repudiandae dolor aut.', 'Necessitatibus ea necessitatibus dolor quam. Dolorem quia et nisi sint rerum. Dignissimos facere corporis explicabo.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(57, 'Amet nisi ipsam ad dolorum pariatur quia.', 'Sed minima molestiae minima. Quidem qui in est tenetur repellendus nostrum. Consequatur adipisci ipsa quisquam voluptatem in omnis sit. Laboriosam eos ipsum sit sunt est autem.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(58, 'Est minima rem ea.', 'Aut perferendis voluptas et numquam quia perferendis. Quis quia doloribus consequatur at. Autem unde aut suscipit qui.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(59, 'Aut et consequatur facilis maxime inventore sit nostrum magnam.', 'Quod suscipit et est magni est facere perspiciatis. Nulla hic adipisci illum voluptas voluptatibus. Nulla aperiam deserunt excepturi placeat ex quia.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(60, 'Laboriosam repellat sed explicabo at error.', 'Optio et labore itaque dicta. Voluptate recusandae veritatis quisquam fugiat perspiciatis eveniet et. Consequatur quaerat sunt labore explicabo autem vero.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(61, 'Fugit quae totam sunt dolorem eum voluptas quibusdam.', 'Et alias earum ullam voluptatem. Natus exercitationem ea optio ipsum atque veritatis qui. Sequi officia tenetur sit deserunt quibusdam vitae enim iusto.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(62, 'Ab quia non tempora.', 'Aut cumque assumenda qui sit. Impedit porro dolores tenetur odit. Quia quod doloremque qui consectetur vero excepturi est.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(63, 'Fugit consequatur quaerat enim esse.', 'Sequi aut deleniti ullam aliquid autem unde. Doloremque voluptas soluta voluptatibus ut consequatur ex. Numquam ut non tempore rerum ipsum temporibus.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(64, 'In commodi rerum quibusdam quod.', 'Nisi repellendus asperiores labore aut a consequatur error. Magnam laborum dolorem sequi eum in. Praesentium necessitatibus totam et sed ipsam facilis ipsa. Reiciendis saepe facilis sapiente et.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(65, 'Blanditiis odit esse explicabo sunt ducimus.', 'Voluptatem nostrum omnis ipsum beatae sunt et quis. Nisi et perferendis harum culpa sint nulla reiciendis.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(66, 'Ipsa et possimus et vel.', 'Excepturi sed non cum ut et. Non aspernatur minus ut incidunt. Inventore aut saepe est repudiandae rerum et.', '2021-04-03 04:23:54', '2021-04-03 04:23:54'),
(67, 'Rerum aut eaque molestiae consequatur.', 'In modi et labore accusamus voluptatem illum quisquam. Perspiciatis rem magni harum quia tempore dolore aspernatur. Est repudiandae recusandae possimus ratione nesciunt quibusdam.', '2021-04-03 04:23:55', '2021-04-03 04:23:55'),
(68, 'Repellat sit error quas vero.', 'Doloremque aliquid laborum distinctio omnis aut odit. Eligendi et placeat rerum quia culpa. Reprehenderit a ut necessitatibus quos commodi labore est veritatis.', '2021-04-03 04:23:55', '2021-04-03 04:23:55'),
(69, 'Omnis praesentium voluptatibus rem et commodi non.', 'Ab aliquid qui nam eum animi maiores commodi. Rem quam sit aperiam totam. Perspiciatis blanditiis mollitia quia soluta. Iure corporis ut voluptatem porro eius explicabo quia.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(70, 'Rerum possimus qui quam.', 'Dignissimos dolores sapiente ipsam quis excepturi tempore ipsam. Aut distinctio et sed id. Sit accusamus culpa error ut.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(71, 'Quia deserunt ut accusantium deserunt labore est.', 'Magni et ipsam est quam. Repellat aut autem repellendus ea. Occaecati et exercitationem et qui aut ea in sint.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(72, 'Neque mollitia sit facere doloribus optio totam aut.', 'Rerum non est omnis. Perferendis quae voluptatibus eum eligendi nesciunt sed quas. Sint exercitationem et nobis minus et autem non et. Reiciendis dignissimos rerum dolores facere enim ipsum sed.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(73, 'Odio magni beatae doloribus quidem animi ullam perspiciatis.', 'Officiis aliquam ipsum error quia eaque. Nulla labore aspernatur doloremque recusandae qui cupiditate et. Deleniti corrupti eaque deleniti quisquam cum quidem.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(74, 'Consequatur labore in laborum ratione.', 'Sed iusto id hic culpa ea cumque. Debitis error odit sed quia. Rerum repudiandae non dolorem. Ut modi perferendis sint cumque quaerat.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(75, 'Eveniet dolorem debitis atque voluptatem quia exercitationem.', 'Similique sint alias accusamus amet. Dolorem a ratione voluptatem debitis aspernatur fugiat tempore. Est et similique in et hic repudiandae et. Laborum architecto porro aut eum est ea et.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(76, 'Nam consequatur aut dolore tempora et pariatur.', 'Reprehenderit voluptas nihil odit expedita quos sit voluptate. Modi sequi omnis qui aperiam et. Et vel est consequatur id sit ullam consectetur. Enim sit est aspernatur.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(77, 'Sed vel eum rerum ut excepturi nam aut.', 'Aliquid at animi eum numquam corporis ut officiis. Et quia eius et vel magnam quod ducimus. Non magnam quae sit. Dicta ut magni est quasi. Sit facere consequatur dolorum esse at.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(78, 'Quia eos alias dignissimos harum distinctio.', 'Inventore rerum iusto numquam occaecati in nam. Nam nostrum deleniti minima ullam et explicabo quia. Repudiandae eum molestiae quo nihil architecto.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(79, 'Voluptatibus aperiam fuga quia dolor inventore ab qui.', 'Possimus unde aut eaque alias laboriosam illo vel. Quod pariatur labore quo at voluptatem assumenda sunt.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(80, 'Ea qui minus temporibus commodi autem ipsam.', 'Hic et non accusantium vitae. Ea sunt culpa consequatur officia ipsa ullam.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(81, 'Explicabo voluptas quis et repellendus exercitationem aliquid.', 'Molestiae perspiciatis asperiores non eos sit consequatur. Error ducimus exercitationem quaerat voluptas voluptate eligendi blanditiis. Magni voluptates rerum praesentium tempora molestiae.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(82, 'Veniam eligendi in voluptatem illum sed sint consequatur autem.', 'At fugit et reprehenderit quos optio labore. Ea voluptatem vero odit incidunt sunt corporis.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(83, 'Ea ad quaerat quos culpa culpa sed atque omnis.', 'Enim impedit alias a nam accusamus fugit eos. Quis recusandae consequuntur non minus asperiores at dolorum consequuntur. Molestiae consequatur id nihil dolor et molestiae.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(84, 'Dolorem quaerat illum a et nisi pariatur neque porro.', 'Optio porro sed officiis cumque ad ab. Sapiente alias eaque labore quo optio tenetur. Consequatur eos delectus tenetur quidem non excepturi repudiandae.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(85, 'Repellat voluptates natus sint numquam itaque.', 'Et minima deserunt cumque. Tenetur laborum possimus id. Quaerat nesciunt nam et dolor vel modi. Porro debitis eum unde omnis quod.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(86, 'Molestiae dolorem molestias reiciendis est veritatis suscipit.', 'Ut ea fugiat labore velit quos. Voluptate ipsam aspernatur non corrupti. Neque facere ratione eum repellat.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(87, 'Alias optio voluptatum dolor alias molestiae ut illum.', 'Eos rerum facilis quaerat. Sed aliquid quisquam et iure officiis vitae sit quam. Corrupti sit omnis aut.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(88, 'Modi vero alias veritatis quidem amet voluptatem laboriosam.', 'Autem qui vel sint molestiae dignissimos. Placeat sint quidem et et rerum. Qui ex vel unde et sed libero voluptatem. Sunt enim porro delectus voluptas iure.', '2021-04-03 04:23:56', '2021-04-03 04:23:56'),
(89, 'Dicta temporibus sed architecto quibusdam quaerat ut necessitatibus.', 'Autem tempore dolore illum velit eos. Qui enim quibusdam officia et pariatur rerum. In sint incidunt neque dolorem vel recusandae. Voluptate reprehenderit voluptatem sit quis sed officiis.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(90, 'Animi similique voluptas magnam.', 'Nostrum itaque unde nemo occaecati ad cum. Iusto maxime delectus quia reiciendis voluptate aspernatur. Debitis eum laboriosam qui cum quod non. Eaque et nisi assumenda voluptates aut.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(91, 'Quo molestiae quas suscipit sapiente ut.', 'Quam temporibus ducimus nihil excepturi possimus id. Hic repudiandae quia omnis temporibus facere illum. Aut quis commodi delectus et est accusantium. Rerum culpa ut accusamus qui odio.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(92, 'Qui eos pariatur ut non molestiae ut.', 'Unde magni deleniti dolores non voluptatem dolores. Temporibus repellendus quo laboriosam.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(93, 'Ipsum ut voluptatibus debitis.', 'Laborum quibusdam est et autem esse. Blanditiis fugit et pariatur et et. Sed atque deserunt deleniti repudiandae.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(94, 'Animi voluptas quos consequatur autem debitis molestiae optio.', 'Amet qui velit ut magnam. Nemo ad dolor animi et ipsam quia veritatis. Assumenda explicabo natus veniam aut. Ratione sed consequatur non quasi.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(95, 'Soluta beatae sapiente minima sit a ad ea.', 'Voluptas incidunt quia qui deleniti a. Similique possimus et nisi ducimus tempore delectus harum. Dolorem voluptatem quidem eaque rerum. Hic quisquam voluptas omnis odit est sit ducimus sint.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(96, 'Eveniet nesciunt optio doloremque a ut vel eius.', 'Et non dignissimos beatae qui. Ea voluptatem corporis iste inventore quibusdam eaque. Aut maiores accusamus odit ducimus sit. Pariatur excepturi ad in sit qui quasi.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(97, 'Quasi autem animi ab magnam.', 'Ducimus tempore autem libero quaerat ea. Commodi ex ad quos. Explicabo et veniam ut pariatur architecto provident.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(98, 'Doloribus sed id magni est.', 'Quo necessitatibus aliquid modi suscipit quia voluptatibus ex provident. Illum sed in magni impedit. Magni sed sequi neque qui sint aliquam consequatur.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(99, 'Sit voluptas laboriosam modi.', 'Quaerat ipsam natus excepturi et cum aut eius. Ipsam laudantium asperiores qui adipisci iusto rem. Ut delectus impedit ut tenetur ut earum quas.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(100, 'Nihil unde ipsa eos omnis aut assumenda.', 'Aperiam illo nihil commodi. Rerum aut dolore odio. Qui nam ex delectus veniam fugiat voluptate nihil.', '2021-04-03 04:23:57', '2021-04-03 04:23:57'),
(101, 'titulo de prueba', 'prueba de contenido', '2021-04-03 05:44:35', '2021-04-03 05:44:35'),
(102, 'test tes', 'tetsttstaasas', '2021-04-03 05:52:24', '2021-04-03 05:52:24'),
(103, 'test2', 'ya matenme n aguanto este sufrimiento llamado proyecto', '2021-04-03 05:55:41', '2021-04-06 01:33:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5091VT3pYebvNewRbgVqhBkXEqNA3x7svIojjq65', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmttV2hmRm5nbU02UDY2eTc2aTNDREVOMGJxV3pxZUJIdk9tSlJqdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1617657332),
('ql5BcFG2xkgxQfOrx2auSNMGvnY4bC8NIbdIhcDZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWNxdkV3UnJCV1RQYmxXc0xtN0prYWxmakc2ejlGVk1lSGFSVTJBRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO319', 1617656237),
('QPSEe2YQoSprg46gmxUVlYoR2tXZtBAnOCMjaZr3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzIzdXFIOVpQT29NbE5DTkZzeEJhZjVMc2wzMklkdnl6aFJEN2RFZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1617659078);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `user_id`, `description`, `precio`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'tedd', '8745', 'dasdasd', '9658', 'Pendiente', '2021-04-03 07:48:00', '2021-04-03 07:48:00', NULL),
(2, 'test', '8745', 'es un test', '8741364', 'Pagado', '2021-04-03 09:25:40', '2021-04-03 09:25:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cedula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `cedula`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, '8745', 'Admin', 'admin@admin.com', NULL, '$2y$10$4yZ8xEP2iLnmWLGyR0gYieZ31zVVWfSK.cgDpyxpSU0TfPnRNfi4u', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-03 07:47:15'),
(2, '1234', 'User', 'user@user.com', NULL, '$2y$10$Jks4QwqOcMFc9jn8SjqG5eaIgqb4ZX7KKa0fXrT3NaVAYRckTFCa2', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-03 10:11:42'),
(3, '1234789', 'test', 'test@test.com', NULL, '$2y$10$UqcpIdPm.E1RzFJHEuO/P.uaXPrZ1L2l/sotnQ1MUpMr3q3eyGS.O', NULL, NULL, NULL, NULL, NULL, '2021-04-06 01:40:28', '2021-04-06 01:40:28'),
(4, '1005744404', 'Jhon', 'jhonjairo122012@gmail.com', NULL, '$2y$10$cviV0UAVywF/Z0z3Yh6ylufzcVjB1k4VkhAf28zA0XuFgo2uQclla', NULL, NULL, 'mozZGGGhEVlyp6XQCj6EPpYl99tFkiy4xV9KIEmLvufwbxYKddhpKvaREE7V', NULL, NULL, '2021-04-06 01:45:54', '2021-04-06 02:41:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_role_id_foreign` (`role_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indices de la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indices de la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
