-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 14 2019 г., 22:37
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bbua_bonb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `badges`
--

CREATE TABLE `badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `badges`
--

INSERT INTO `badges` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'badges\\April2019\\rWKvQqS2scaoTplJgLlk.png', '2019-04-16 08:03:15', '2019-04-16 08:03:15'),
(2, '2', 'badges\\April2019\\iqUtzo0BRFjz9c83ffEF.png', '2019-04-16 08:03:29', '2019-04-16 08:03:29'),
(3, '3', 'badges\\April2019\\TnZll7xYCDRUztH3Nb6y.png', '2019-04-16 08:03:46', '2019-04-16 08:03:46'),
(4, '4', 'badges\\April2019\\2TzJ43uxRzWokfaDHTFP.png', '2019-04-16 08:04:07', '2019-04-16 08:04:07'),
(5, '5', 'badges\\April2019\\rk34BKto2LwwmKGkjaHH.png', '2019-04-16 08:04:23', '2019-04-16 08:04:23'),
(6, 'Вода для всей семьи', 'badges/July2019/9UFU4vf19RlfkHBpDvzJ.png', '2019-07-04 07:43:05', '2019-07-05 09:21:06'),
(7, 'в курортной зоне', 'badges/July2019/IklO7RfzAR8o0Kx3XcrF.png', '2019-07-04 07:44:52', '2019-07-05 09:20:56'),
(8, 'для ежедневного употребления', 'badges/July2019/o8xL15XYAcjrrZwTuzhn.png', '2019-07-04 07:45:30', '2019-07-05 09:20:42'),
(9, 'природное состояние', 'badges/July2019/efNBkukIGUvkOsqhbS2n.png', '2019-07-04 07:45:54', '2019-07-05 09:20:27');

-- --------------------------------------------------------

--
-- Структура таблицы `badge_products`
--

CREATE TABLE `badge_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `badge_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `badge_products`
--

INSERT INTO `badge_products` (`id`, `product_id`, `badge_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 5),
(4, 2, 1),
(5, 2, 3),
(6, 2, 4),
(7, 10, 3),
(8, 10, 4),
(9, 11, 3),
(26, 21, 1),
(27, 21, 3),
(28, 21, 5),
(29, 20, 1),
(30, 20, 3),
(31, 20, 5),
(32, 22, 1),
(33, 22, 3),
(34, 22, 5),
(35, 23, 1),
(36, 23, 3),
(37, 23, 5),
(38, 24, 1),
(39, 24, 3),
(40, 24, 5),
(41, 25, 1),
(42, 25, 3),
(43, 25, 5),
(44, 26, 1),
(45, 26, 3),
(46, 26, 5),
(47, 27, 1),
(48, 27, 3),
(49, 27, 5),
(50, 28, 1),
(51, 28, 3),
(52, 28, 5),
(53, 29, 1),
(54, 29, 3),
(55, 29, 5),
(56, 30, 1),
(57, 30, 3),
(58, 30, 5),
(59, 31, 1),
(60, 31, 3),
(61, 31, 5),
(62, 32, 1),
(63, 32, 3),
(64, 32, 5),
(65, 33, 1),
(66, 33, 3),
(67, 33, 5),
(68, 34, 1),
(69, 34, 3),
(70, 34, 5),
(71, 35, 1),
(72, 35, 3),
(73, 35, 5),
(74, 36, 1),
(75, 36, 3),
(76, 36, 5),
(77, 37, 1),
(78, 37, 3),
(79, 37, 5),
(80, 16, 6),
(81, 16, 8),
(82, 16, 7),
(83, 19, 6),
(84, 19, 8),
(85, 19, 9),
(86, 18, 6),
(87, 18, 7),
(88, 18, 8),
(89, 14, 6),
(90, 14, 7),
(91, 14, 8),
(92, 15, 6),
(93, 15, 7),
(94, 15, 8),
(95, 19, 7),
(96, 18, 9),
(97, 14, 9),
(98, 15, 9),
(99, 16, 9),
(100, 17, 6),
(101, 17, 7),
(102, 17, 8),
(103, 17, 9),
(104, 45, 1),
(105, 45, 2),
(106, 45, 3),
(107, 46, 1),
(108, 46, 2),
(109, 46, 3),
(110, 47, 1),
(111, 47, 2),
(112, 47, 3),
(113, 48, 1),
(114, 48, 2),
(115, 48, 3),
(116, 49, 1),
(117, 49, 2),
(118, 49, 3),
(119, 12, 1),
(120, 12, 3),
(121, 12, 5),
(122, 11, 2),
(123, 11, 4),
(124, 10, 5),
(125, 50, 1),
(126, 50, 2),
(127, 50, 3),
(128, 51, 2),
(129, 51, 3),
(130, 51, 4),
(131, 52, 2),
(132, 52, 3),
(133, 52, 4),
(134, 53, 3),
(135, 53, 4),
(136, 53, 5),
(137, 54, 1),
(138, 54, 3),
(139, 54, 5),
(140, 55, 1),
(141, 55, 2),
(142, 55, 3),
(143, 56, 3),
(144, 56, 4),
(145, 56, 5),
(146, 57, 2),
(147, 57, 3),
(148, 57, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `published_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `status`, `featured`, `created_at`, `updated_at`, `tags`, `published_date`, `meta_keywords`) VALUES
(14, 1, NULL, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца', 'Празднование дня независимости при поддержке «Бон Буассон»', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400;\"><span style=\"white-space: pre-wrap;\">Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КоммерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.<img src=\"https://bonboisson.spongeservice.com.ua/storage/blog_posts/June2019/luis-tosta-2666672.png\" alt=\"\" width=\"1024\" height=\"682\" /></span></p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400;\"><span style=\"color: #000000; font-family: Open Sans, Arial, sans-serif;\"><span style=\"white-space: pre-wrap;\">Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов &ndash; крупные западные и российские фонды. Salford Capital Partners Inc. продает один из главных активов фонда VDP (его активы находятся под управлением Salford) &ndash; IDS Borjomi Beverages N.V., рассказал газете один из потенциальных покупателей. На продажу выставлены 100% акций IDS, 87,34% из которых принадлежат фонду, остальное &ndash; миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн. Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд, близкий к Альфа Групп (его название не раскрывается). КоммерсантЪ отмечает, что в TPG, Standart Capital и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по розливу минеральной воды в Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине. Основные марки &ndash; Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и AquaLife. Финпоказатели не раскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вино и минеральную воду.</span></span></p>', 'blog_posts/June2019/bKhDc0095Klu307MQ8V0.jpg', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца', 'PUBLISHED', 0, '2019-05-31 15:41:07', '2019-06-04 16:31:34', NULL, '2017-09-12 15:40:00', ''),
(15, 1, NULL, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 1', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 1', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 1', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400;\"><span style=\"white-space: pre-wrap;\">Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КоммерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.<img src=\"https://bonboisson.spongeservice.com.ua/storage/blog_posts/June2019/luis-tosta-2666672.png\" alt=\"\" width=\"1024\" height=\"682\" /></span></p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400;\"><span style=\"color: #000000; font-family: Open Sans, Arial, sans-serif;\"><span style=\"white-space: pre-wrap;\">Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов &ndash; крупные западные и российские фонды. Salford Capital Partners Inc. продает один из главных активов фонда VDP (его активы находятся под управлением Salford) &ndash; IDS Borjomi Beverages N.V., рассказал газете один из потенциальных покупателей. На продажу выставлены 100% акций IDS, 87,34% из которых принадлежат фонду, остальное &ndash; миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн. Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд, близкий к Альфа Групп (его название не раскрывается). КоммерсантЪ отмечает, что в TPG, Standart Capital и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по розливу минеральной воды в Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине. Основные марки &ndash; Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и AquaLife. Финпоказатели не раскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вино и минеральную воду.</span></span></p>', 'blog_posts/June2019/FDx1lsZOMLBZos0IlP7z.jpg', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca-1', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 1', 'PUBLISHED', 1, '2019-06-03 12:34:04', '2019-06-04 16:31:30', NULL, '2019-06-03 12:33:00', ''),
(16, 1, NULL, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 2', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 2', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 2', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400;\"><span style=\"white-space: pre-wrap;\">Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КоммерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.<img src=\"https://bonboisson.spongeservice.com.ua/storage/blog_posts/June2019/luis-tosta-2666672.png\" alt=\"\" width=\"1024\" height=\"682\" /></span></p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400;\"><span style=\"color: #000000; font-family: Open Sans, Arial, sans-serif;\"><span style=\"white-space: pre-wrap;\">Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов &ndash; крупные западные и российские фонды. Salford Capital Partners Inc. продает один из главных активов фонда VDP (его активы находятся под управлением Salford) &ndash; IDS Borjomi Beverages N.V., рассказал газете один из потенциальных покупателей. На продажу выставлены 100% акций IDS, 87,34% из которых принадлежат фонду, остальное &ndash; миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн. Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд, близкий к Альфа Групп (его название не раскрывается). КоммерсантЪ отмечает, что в TPG, Standart Capital и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по розливу минеральной воды в Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине. Основные марки &ndash; Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и AquaLife. Финпоказатели не раскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вино и минеральную воду.</span></span></p>', 'blog_posts/June2019/cP5sUC47mugcZZNy2fmA.jpg', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca-2', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 2', 'PUBLISHED', 0, '2019-06-03 12:34:53', '2019-06-04 16:31:26', NULL, '2019-06-03 12:52:00', ''),
(17, 1, NULL, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 3', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 3', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 3', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400;\"><span style=\"white-space: pre-wrap;\">Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КоммерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.<img src=\"https://bonboisson.spongeservice.com.ua/storage/blog_posts/June2019/luis-tosta-2666672.png\" alt=\"\" width=\"1024\" height=\"682\" /></span></p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400;\"><span style=\"color: #000000; font-family: Open Sans, Arial, sans-serif;\"><span style=\"white-space: pre-wrap;\">Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов &ndash; крупные западные и российские фонды. Salford Capital Partners Inc. продает один из главных активов фонда VDP (его активы находятся под управлением Salford) &ndash; IDS Borjomi Beverages N.V., рассказал газете один из потенциальных покупателей. На продажу выставлены 100% акций IDS, 87,34% из которых принадлежат фонду, остальное &ndash; миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн. Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд, близкий к Альфа Групп (его название не раскрывается). КоммерсантЪ отмечает, что в TPG, Standart Capital и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по розливу минеральной воды в Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине. Основные марки &ndash; Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и AquaLife. Финпоказатели не раскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вино и минеральную воду.</span></span></p>', 'blog_posts/June2019/B1GJQCAaOY899LEnFBL9.jpg', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca-3', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 3', 'PUBLISHED', 0, '2019-06-03 12:35:24', '2019-06-04 16:31:23', NULL, '2019-06-03 12:52:00', ''),
(18, 1, NULL, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 4', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 4', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 4', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: FuturaPTBook; font-weight: 400;\"><span style=\"white-space: pre-wrap;\">Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КоммерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.<img src=\"https://bonboisson.spongeservice.com.ua/storage/blog_posts/June2019/luis-tosta-2666672.png\" alt=\"\" width=\"1024\" height=\"682\" /></span></p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: FuturaPTBook; font-weight: 400;\"><span style=\"color: #000000; font-family: FuturaPTBook;\"><span style=\"white-space: pre-wrap;\">Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов &ndash; крупные западные и российские фонды. Salford Capital Partners Inc. продает один из главных активов фонда VDP (его активы находятся под управлением Salford) &ndash; IDS Borjomi Beverages N.V., рассказал газете один из потенциальных покупателей. На продажу выставлены 100% акций IDS, 87,34% из которых принадлежат фонду, остальное &ndash; миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн. Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд, близкий к Альфа Групп (его название не раскрывается). КоммерсантЪ отмечает, что в TPG, Standart Capital и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по розливу минеральной воды в Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине. Основные марки &ndash; Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и AquaLife. Финпоказатели не раскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вино и минеральную воду.</span></span></p>', 'blog_posts/June2019/muWiivEt3qbCIlS8VzlB.jpg', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca-4', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 4', 'PUBLISHED', 0, '2019-06-03 12:35:49', '2019-06-24 07:04:36', NULL, '2019-06-03 12:51:00', '');

-- --------------------------------------------------------

--
-- Структура таблицы `carousels`
--

CREATE TABLE `carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `carousels`
--

INSERT INTO `carousels` (`id`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Европейские ингридиенты', 'carousels\\May2019\\3z6nPViOl6NgC5eJzDQi.jpg', '2019-05-28 13:48:37', '2019-05-28 13:48:37'),
(2, 'Европейские ингридиенты', 'carousels\\May2019\\y9rY9VxpbLbjLwghFjkw.jpg', '2019-05-28 13:48:56', '2019-05-28 13:48:56'),
(3, 'Европейские ингридиенты', 'carousels\\May2019\\nfZy1S3eWwfcSNPqWRJy.jpg', '2019-05-28 13:49:14', '2019-05-28 13:49:14');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `main_product` int(11) DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  `background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `seo_title`, `description`, `meta_description`, `meta_keywords`, `slug`, `parent_id`, `image`, `created_at`, `updated_at`, `main_product`, `sort`, `background`) VALUES
(3, 'Напитки Чудо-Сад', '', '<p>Напитки &laquo;Чудо-Сад&raquo; сочетают любимые вкусы лимонадов и фруктов с низкокалорийной формулой. Поэтому их можно употреблять даже тем, кто следит за своим весом и фигурой. Обогащают вкус и аромат добавления фруктовых соков и экстрактов трав.</p>\n<p>Лимонады &laquo;Чудо-Сад&raquo; зарекомендовали себя качественными и вкусными, что подтверждает более чем 9-летний опыт продаж.</p>\n<p>В линейке объединены традиционные лимонады и фруктовые вкусы.</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', '', '', 'napitki-chudo-sad', NULL, 'categories\\May2019\\rc7S5UFocfSe8X1aT0JG.png', '2019-04-12 12:55:00', '2019-07-12 11:12:13', 1, 6, 'categories/June2019/6oq5u4FRXSrizlx3zAhk.jpg'),
(4, 'Сокосодержащие напитки', '', '<p>Знакомая потребителям с 1999 года серия сокосодержащих напитков BON BOISSON JUICE в этом году стала еще лучше!</p>\n<p>Мы расширили линейку вкусов и усовершенствовали их рецептуры, теперь можно насладиться новыми вкусами, которые не оставят Вас равнодушными.</p>\n<p>Сокосодержащие напитки BON BOISSON JUICE, как и прежде, изготовлены на натуральных сиропах и артезианской воде с добавлением фруктового сока по государственным стандартам.&nbsp; &nbsp; &nbsp;</p>\n<p>Оригинальность вкусов подчеркивает уникальный дизайн каждой этикетки, которые художник рисовал карандашами, вдохновляясь страной происхождения каждого отдельного фрукта.</p>', '', '', 'sokosoderzhashie-napitki-bon-buasson', NULL, 'categories\\May2019\\ioOYLAYheJYzhQu0XNCa.png', '2019-05-08 07:11:00', '2019-07-12 11:14:22', 34, 3, 'categories/June2019/PLucDYoaQyB0RnypXT34.png'),
(5, 'Лимонады Бон Лимон', '', '<p>Европейские домашние лимонады вдохновили нас на создание необычных вкусов. Но классических рецептур, в которых смешано лимоны, воду и сахар, нам стало мало. И мы решили придать им изюминки в виде малины, бузины, имбиря и клубники с базиликом.</p>\n<p>Таким образом мы получили лимонады BON LEMON - на артезианской воде, с добавлением лимонного сока,</p>\n<p>только с натуральными ароматизаторами и красителями.</p>\n<p>Стоит попробовать эти сочетания вкусов, ведь наши лимонады не имеют аналогов в Украине!</p>', '', '', 'limonady-bon-limon', NULL, 'categories/June2019/skQsPlnm14m1DUg0XdM0.png', '2019-05-08 07:13:00', '2019-07-12 11:54:49', 57, 4, 'categories/June2019/tqhUegvk1uogw9kU1HH2.jpg'),
(6, 'Hапиток Black', '', '<p>Особой популярностью у населения пользуются газированные напитки, хотя со временем эта тенденция может измениться в сторону \"тихих\" напитков. В зависимости от степени насыщения углекислым газом безалкогольные напитки могут быть негазированными, сильно-, средне- и слабогазированными. Их получают искусственным насыщением напитков углекислым газом в специальных установках &ndash; сатураторах.</p>', '', '', 'hapitok-black', NULL, 'categories\\May2019\\cuNz0kKN5rjMoqre8q1Q.png', '2019-05-08 07:15:00', '2019-07-05 11:54:08', 43, 5, 'categories/June2019/gj6oWg90hzhbtXk9iHSP.jpg'),
(7, 'Детская вода Карапуз', '', '<p>Минера́льная вода &mdash; вода, содержащая в своем составе растворённые соли, микроэлементы, а также некоторые биологически активные компоненты.</p>', '', '', 'detskaya-voda-karapuz', NULL, 'categories\\May2019\\ZpUcnM09IF8aTP24xFCq.png', '2019-05-08 07:16:00', '2019-06-03 14:10:14', 6, 7, 'categories/June2019/o5triuSO5WlvToax4eEr.jpg'),
(9, 'С/а коктейли Tropic bar', '', '<p>Black Energy Extra Напиток энергетический безалкогольны</p>\n<p>Усиленная формула энергетического напитка, которая содержит: Сок граната &ndash; оказывает омолаживающий и заживляющий эффект. Экстракт йохимбе &ndash; единственный подтвержденный медициной афродизиак, повышающий сексуальную активность.</p>', '', '', 's-a-koktejli-tropic-bar', NULL, 'categories\\May2019\\KzEDTzwdMM7daVv52f4u.png', '2019-05-08 08:00:00', '2019-07-05 12:16:42', 49, 9, 'categories/June2019/wBHZZI84ie8JIB7SoVIL.jpg'),
(10, 'Black alco energy', '', '<p>Особой популярностью у населения пользуются газированные напитки, хотя со временем эта тенденция может измениться в сторону \"тихих\" напитков. В зависимости от степени насыщения углекислым газом безалкогольные напитки могут быть негазированными, сильно-, средне- и слабогазированными. Их получают искусственным насыщением напитков углекислым газом в специальных установках &ndash; сатураторах.</p>', '', '', 'black-alco-energy', NULL, 'categories\\May2019\\vhyuZRWbGxQJhOs7ilA1.png', '2019-05-08 08:01:00', '2019-07-05 12:08:18', 44, 10, 'categories/June2019/Wc5xiDbjHW0kirXoYuqJ.jpg'),
(11, 'Bon Boisson Balance', '', '<p>ТМ BON BOISSON BALANCE &ndash; природная минеральная вода с добавлением сока.&nbsp;</p>\n<p>Напитки ТМ BON BOISSON BALANCE обладают не только сбалансированным вкусом фруктового сока и природной минеральной воды, но и сниженными показателями калорийности &ndash; всего 11 ккал на 100 мл. Таким образом, Вы можете наслаждаться вкусной природной минеральной водой&nbsp; с минимальным количеством калорий!</p>\n<p>BON BOISSON BALANCE&nbsp; - баланс природной воды и вкуса фруктов!</p>', '', '', 'bon-boisson-balance', NULL, 'categories/June2019/Jtos9hjSZuykXNBllWyC.png', '2019-05-08 11:22:00', '2019-07-15 09:58:34', 3, 2, 'categories/June2019/FOomuT0HBDUufjkAPFNr.png'),
(12, 'Минеральная вода', '', '<p class=\"MsoNormal\">Природная минеральная вода разливается в курортной зоне непосредственно на месте добычи. По результатам ежегодных исследований<span style=\"mso-spacerun: yes;\">&nbsp; </span>наша вода уже<span style=\"mso-spacerun: yes;\">&nbsp; </span>более 50 лет имеет неизменный минеральный состав, который оптимально подходит каждому члену семьи. Благодаря низкой минерализации природная вода Бон Буассон не имеет противопоказаний и ограничений в употреблении.</p>', '', '', 'mineral-naya-voda', NULL, 'categories/July2019/gPvbPQ3tbilmmgqtmQX6.png', '2019-05-31 12:51:00', '2019-07-05 13:06:43', 16, 1, 'categories/June2019/jt7MqSvXaaSS04aFNkn4.jpg'),
(13, 'Классические лимонады', '', '<p class=\"MsoNormal\">В далеком 1998 году с линии розлива сошли первые бутылки напитков Золотой серии БОН БУАССОН, созданные на основе &laquo;ГОСТов&raquo; и стандартов 70-80-х годов прошлого столетия.&nbsp;</p>\n<p class=\"MsoNormal\">Эти лимонады были рождены именно как тонизирующие прохладительные напитки. Ведь в их состав входит не только вода, сахарный сироп и углекислота, а и натуральные экстракты трав и фруктов, которые придают им бодрящие свойства. Такая газировка не только утоляет жажду, но и снимает утомление.</p>\n<p class=\"MsoNormal\">Все напитки Золотой серии изготовлены на артезианской воде, на основе натуральных сахарных сиропов. В их производстве используются только натуральные красители.</p>\n<p class=\"MsoNormal\">За прошедшие 20 лет эти вкусы стали Золотым стандартом на рынке нашей страны и занимают первое место в сегменте традиционных лимонадов. Их рецептуры остаются неизменными, как и любовь наших потребителей. Ведь по-прежнему, 50% сладких напитков, производимых нашей компанией, &ndash; это лимонады Золотой серии. Каждый день в Украине покупают около 100 000 бутылок сладких напитков нашего производства.&nbsp;</p>\n<p class=\"MsoNormal\">Сегодня лимонады БОН БУАССОН&nbsp; &ndash; это не просто ретро-лимонады советского периода - это КЛАССИЧЕСКИЕ ЛИМОНАДЫ С СОБСТВЕННОЙ РЕПУТАЦИЕЙ И ИСТОРИЕЙ.&nbsp;</p>\n<p class=\"MsoNormal\">В 2018 году они обрели новый внешний вид и продолжают радовать своего потребителя стабильным качеством, освежающим тонизирующим вкусом&nbsp; и ярким современным дизайном!</p>', '', '', 'klassicheskie-limonady', NULL, 'categories\\May2019\\4YDhG8zxYOxr2JSuGlXU.png', '2019-05-31 12:57:00', '2019-07-12 11:13:17', 20, 2, 'categories/June2019/OSnW2S9Kzf5zqrIDzpwp.jpg'),
(14, 'Квас Боярский', '', '<p>Квас &laquo;Боярский&raquo; ― натуральный продукт брожения, приготовленный из натуральных продуктов с сахаром.</p>\n<p>Квас &laquo;Боярский&raquo; имеет кисло-сладкий вкус с оттенками ржаного хлеба. Фильтрованный, пастеризованный, среднегазированный.</p>', '', '', 'kvas-boyarskij', NULL, 'categories\\May2019\\KzY4j2iI0v7DPVN7wpk3.png', '2019-05-31 13:09:00', '2019-06-03 14:43:18', 7, 8, 'categories/June2019/Zul4tqEYshReQ1j4m402.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Виница', 'vinica', '2019-04-11 05:28:00', '2019-05-13 11:22:59'),
(2, 'Херсон', 'herson', '2019-04-12 05:12:16', '2019-05-13 11:22:48'),
(3, 'Львов', 'l-vov', '2019-04-12 05:12:26', '2019-05-13 11:22:36'),
(4, 'Чернигов', 'chernigov', '2019-04-12 05:12:41', '2019-05-13 11:22:23'),
(5, 'Киев', 'kiev', '2019-04-12 05:27:19', '2019-05-13 11:22:12'),
(6, 'Днепр', 'dnepr', '2019-05-07 11:03:03', '2019-05-13 11:22:01'),
(7, 'Полтава', 'poltava', '2019-05-07 11:03:14', '2019-05-13 11:21:50'),
(8, 'Харьков', 'har-kov', '2019-05-07 11:03:24', '2019-05-13 11:21:37'),
(9, 'Васильевка', 'vasil-evka', '2019-06-04 11:09:06', '2019-06-04 11:09:06'),
(10, 'Черкассы', 'cherkassy', '2019-06-04 11:09:51', '2019-06-04 11:09:51'),
(11, 'Одесса', 'odessa', '2019-06-04 11:10:20', '2019-06-04 11:10:20'),
(12, 'Умань', 'uman', '2019-06-04 11:10:44', '2019-06-04 11:10:44'),
(13, 'Запорожье', 'zaporozh-e', '2019-06-04 11:11:01', '2019-06-04 11:11:01'),
(14, 'Винница', 'vinnica', '2019-06-04 11:11:22', '2019-06-04 11:11:22'),
(15, 'Николаев', 'nikolaev', '2019-06-04 11:28:13', '2019-06-04 11:28:13'),
(16, 'Новомосковск', 'novomoskovsk', '2019-06-07 12:31:27', '2019-06-07 12:31:27'),
(17, 'Сумы', 'sumy', '2019-07-09 11:22:18', '2019-07-09 11:22:18'),
(18, 'Лозовая', 'lozovaya', '2019-07-09 11:22:44', '2019-07-09 11:22:44'),
(19, 'Прилуки', 'priluki', '2019-07-09 11:23:49', '2019-07-09 11:23:49'),
(20, 'Нежин', 'nezhin', '2019-07-09 11:23:57', '2019-07-09 11:23:57'),
(21, 'Новая Каховка', 'novaya-kahovka', '2019-07-09 11:34:23', '2019-07-09 11:34:23'),
(22, 'Краматорск', 'kramatorsk', '2019-07-09 11:36:36', '2019-07-09 11:36:36'),
(23, 'Северодонецк', 'severodoneck', '2019-07-09 11:36:51', '2019-07-09 11:36:51'),
(24, 'Кропивницкий', 'kropivnickij', '2019-07-09 12:01:25', '2019-07-09 12:01:25'),
(25, 'Александрия', 'aleksandriya', '2019-07-09 12:01:41', '2019-07-09 12:01:41'),
(26, 'Первомайск', 'pervomajsk', '2019-07-09 12:02:13', '2019-07-09 12:02:13'),
(27, 'Павлоград', 'pavlograd', '2019-07-09 12:57:00', '2019-07-09 12:57:00'),
(28, 'Лубны', 'lubny', '2019-07-09 12:57:26', '2019-07-09 12:57:26'),
(29, 'Тернополь', 'ternopol', '2019-07-09 12:57:44', '2019-07-09 12:57:44'),
(30, 'Хмельницкий', 'hmel-nickij', '2019-07-09 12:57:52', '2019-07-09 12:57:52'),
(31, 'Бердянск', 'berdyansk', '2019-07-11 09:01:27', '2019-07-11 09:01:27'),
(32, 'Мелитополь', 'melitopol', '2019-07-11 09:01:49', '2019-07-11 09:01:49'),
(33, 'Мариуполь', 'mariupol', '2019-07-11 09:01:59', '2019-07-11 09:01:59');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Дата добавления', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Автор', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Дата добавления', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Автор', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 4),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(48, 6, 'body', 'hidden', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 6),
(49, 6, 'slug', 'text', 'SEO URL', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 7),
(50, 6, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 10),
(53, 6, 'created_at', 'timestamp', 'Дата добавления', 0, 1, 1, 0, 0, 0, '{}', 11),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(55, 6, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{}', 3),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'created_at', 'timestamp', 'Дата добавления', 0, 0, 1, 0, 0, 1, '{}', 3),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(60, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 8, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(62, 8, 'requirements', 'rich_text_box', 'Requirements', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This field is required\"}}}', 3),
(63, 8, 'responsibilities', 'rich_text_box', 'Responsibilities', 0, 0, 1, 1, 1, 1, '{}', 4),
(64, 8, 'manager_id', 'select_dropdown', 'Менеджер', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"page_slug\":\"admin\\/manager\"},\"validation\":{\"rule\":\"required\"}}', 6),
(65, 8, 'city_id', 'text', 'Город', 1, 1, 1, 1, 1, 1, '{}', 8),
(66, 8, 'created_at', 'timestamp', 'Дата добавления', 0, 1, 1, 1, 0, 1, '{}', 9),
(67, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(68, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 9, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, '{}', 3),
(70, 9, 'position', 'text', 'Должность', 1, 1, 1, 1, 1, 1, '{}', 4),
(71, 9, 'image', 'image', 'Фото', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 2),
(72, 9, 'created_at', 'timestamp', 'Дата добавления', 0, 0, 1, 0, 0, 1, '{}', 8),
(73, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(74, 9, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(75, 9, 'phone', 'text', 'Телефон', 1, 1, 1, 1, 1, 1, '{}', 6),
(76, 9, 'skype', 'text', 'Skype', 1, 1, 1, 1, 1, 1, '{}', 7),
(78, 10, 'author_id', 'select_dropdown', 'Автор', 1, 0, 1, 0, 0, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 3),
(79, 10, 'category_id', 'select_dropdown', 'Категория', 0, 0, 0, 0, 0, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(80, 10, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(81, 10, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(82, 10, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '\"\"', 5),
(83, 10, 'body', 'rich_text_box', 'Текст', 1, 0, 1, 1, 1, 1, '\"\"', 7),
(84, 10, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"crop\":{\"width\":\"270\",\"height\":\"206\"}},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(85, 10, 'slug', 'text', 'SEO URL', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:blog_posts,slug\"}}', 9),
(86, 10, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '\"\"', 10),
(87, 10, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 12),
(88, 10, 'created_at', 'timestamp', 'Дата добавления', 0, 1, 1, 0, 0, 0, '\"\"', 13),
(89, 10, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 15),
(90, 10, 'tags', 'text_area', 'Tags', 0, 0, 1, 1, 1, 1, '\"\"', 16),
(91, 10, 'published_date', 'timestamp', 'Дата публикации', 0, 1, 1, 1, 1, 1, '{\"format\":\"%Y-%m-%d\",\"validation\":{\"rules\":[\"required_if:status:PUBLISHED\",\"date_format:YYYY-MM-DD\"]}}', 17),
(92, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(93, 6, 'layout', 'text', 'Layout', 0, 0, 1, 0, 0, 1, '{}', 12),
(94, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(95, 11, 'street', 'text', 'Адрес', 1, 1, 1, 1, 1, 1, '{}', 4),
(96, 11, 'phone', 'text', 'Телефон', 1, 1, 1, 1, 1, 1, '{}', 5),
(97, 11, 'coordinates', 'coordinates', 'Координаты', 1, 1, 1, 1, 1, 1, '{}', 7),
(98, 11, 'created_at', 'timestamp', 'Дата добавления', 0, 1, 1, 1, 0, 1, '{}', 9),
(99, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(100, 11, 'city_id', 'select_dropdown', 'Город', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 3),
(101, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 13, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 5),
(103, 13, 'description', 'rich_text_box', 'Описание', 0, 0, 1, 1, 1, 1, '{}', 6),
(104, 13, 'meta_description', 'text_area', 'Мета-тег Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(105, 13, 'slug', 'text', 'SEO URL', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:products,slug\"}}', 13),
(106, 13, 'meta_keywords', 'text', 'Мета-тег Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(107, 13, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 2),
(108, 13, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 7),
(109, 13, 'category_id', 'text', 'Категория', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}', 4),
(110, 13, 'created_at', 'timestamp', 'Дата добавления', 0, 0, 1, 1, 0, 1, '{}', 17),
(111, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(112, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 14, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 5),
(114, 14, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 6),
(115, 14, 'description', 'rich_text_box', 'Описание', 1, 0, 1, 1, 1, 1, '{}', 7),
(116, 14, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(117, 14, 'parent_id', 'select_dropdown', 'Родительская категория', 0, 0, 0, 0, 0, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}', 4),
(118, 14, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 2),
(119, 14, 'created_at', 'timestamp', 'Дата добавления', 0, 0, 1, 1, 0, 1, '{}', 12),
(120, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(121, 14, 'slug', 'text', 'SEO URL', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:categories,slug\"}}', 10),
(122, 14, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(123, 13, 'site', 'text', 'Site', 0, 0, 1, 1, 1, 1, '{}', 14),
(124, 13, 'facebook', 'text', 'Facebook', 0, 0, 1, 1, 1, 1, '{}', 15),
(125, 13, 'instagram', 'text', 'Instagram', 0, 0, 1, 1, 1, 1, '{}', 16),
(126, 8, 'vacancy_hasone_city_relationship', 'relationship', 'Город', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blog_posts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(127, 8, 'vacancy_belongsto_manager_relationship', 'relationship', 'Менеджер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Manager\",\"table\":\"managers\",\"type\":\"belongsTo\",\"column\":\"manager_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blog_posts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(128, 13, 'product_belongsto_category_relationship', 'relationship', 'Категория', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blog_posts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(129, 11, 'office_belongsto_city_relationship', 'relationship', 'cities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blog_posts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(130, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(131, 15, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(132, 15, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 3),
(133, 15, 'created_at', 'timestamp', 'Дата добавления', 0, 1, 0, 0, 0, 1, '{}', 4),
(134, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(138, 13, 'product_belongstomany_badge_relationship', 'relationship', 'Знаки качества', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Badge\",\"table\":\"badges\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"badge_products\",\"pivot\":\"1\",\"taggable\":\"on\"}', 10),
(139, 6, 'page_hasone_page_relationship', 'relationship', 'Родительская страница', 0, 0, 1, 1, 1, 1, '{\"model\":\"Pvtl\\\\VoyagerPageBlocks\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"badge_products\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(140, 6, 'parent_id', 'text', 'Parent Id', 0, 0, 1, 1, 1, 1, '{}', 13),
(141, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 17, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 17, 'image', 'file', 'Изображение', 0, 1, 1, 1, 1, 1, '{}', 3),
(144, 17, 'created_at', 'timestamp', 'Дата добавления', 0, 0, 1, 0, 0, 1, '{}', 4),
(145, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(146, 13, 'product_belongstomany_size_relationship', 'relationship', 'Объём', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_sizes\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(148, 10, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(149, 10, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 14),
(152, 10, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 11),
(153, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(154, 18, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 3),
(155, 18, 'seo_title', 'text', 'SEO тайтл', 0, 0, 1, 1, 1, 1, '{}', 4),
(156, 18, 'description', 'text_area', 'Описание', 0, 0, 1, 1, 1, 1, '{}', 5),
(157, 18, 'body', 'rich_text_box', 'Текст', 1, 0, 1, 1, 1, 1, '{}', 6),
(158, 18, 'meta_description', 'text_area', 'Мета-тег Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(159, 18, 'meta_keywords', 'text', 'Мета-тег Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(160, 18, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 2),
(161, 18, 'slug', 'text', 'SEO URL', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:projects,slug\"}}', 9),
(162, 18, 'created_at', 'timestamp', 'Дата добавления', 0, 1, 1, 1, 0, 1, '{}', 10),
(163, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(164, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(165, 19, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(166, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 4),
(167, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(168, 14, 'category_hasone_product_relationship', 'relationship', 'Главный товар', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"main_product\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"badge_products\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(169, 14, 'main_product', 'text', 'Main Product', 0, 1, 1, 1, 1, 1, '{}', 14),
(170, 8, 'slug', 'text', 'SEO URL', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:vacancies,slug\"}}', 7),
(171, 7, 'slug', 'text', 'SEO URL', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:cities,slug\"}}', 3),
(172, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(173, 21, 'year', 'number', 'Год', 1, 1, 1, 1, 1, 1, '{}', 3),
(174, 21, 'text', 'text_area', 'Текст', 1, 1, 1, 1, 1, 1, '{}', 4),
(175, 21, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 2),
(176, 21, 'align', 'select_dropdown', 'Выравнивание текста', 1, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043f\\u043e \\u043b\\u0435\\u0432\\u043e\\u043c\\u0443 \\u043a\\u0440\\u0430\\u044e\",\"1\":\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u043e\\u043c\\u0443 \\u043a\\u0440\\u0430\\u044e\"}}', 5),
(177, 21, 'created_at', 'timestamp', 'Дата добавления', 0, 0, 1, 1, 0, 1, '{}', 6),
(178, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(179, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(180, 22, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 2),
(181, 22, 'text', 'text_area', 'Текст', 0, 1, 1, 1, 1, 1, '{}', 3),
(182, 22, 'btn_text', 'text', 'Текст кнопки', 0, 1, 1, 1, 1, 1, '{}', 4),
(183, 22, 'btn_link', 'text', 'Ссылка кнопки', 0, 1, 1, 1, 1, 1, '{}', 5),
(184, 22, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 6),
(185, 22, 'created_at', 'timestamp', 'Дата добавления', 0, 1, 1, 1, 0, 1, '{}', 7),
(186, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(187, 11, 'office_type', 'select_dropdown', 'Тип офиса', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"---\",\"1\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u044b\\u0439 \\u043e\\u0444\\u0438\\u0441\",\"2\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\"}}', 8),
(188, 19, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|email\"}}', 3),
(189, 14, 'sort', 'number', 'Сортировка', 0, 1, 1, 1, 1, 1, '{}', 15),
(190, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(191, 23, 'text', 'text', 'Текст', 1, 1, 1, 1, 1, 1, '{}', 2),
(192, 23, 'image', 'image', 'Фоновое изображение', 0, 1, 1, 1, 1, 1, '{}', 3),
(193, 23, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 4),
(194, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(195, 14, 'background', 'image', 'Фон заголовка', 0, 1, 1, 1, 1, 1, '{}', 11),
(196, 11, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Пользователь', 'Пользователи', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-11 05:19:42', '2019-04-12 05:32:50'),
(2, 'menus', 'menus', 'Меню', 'Меню', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-11 05:19:42', '2019-04-12 05:31:37'),
(3, 'roles', 'roles', 'Роль', 'Роли', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-11 05:19:42', '2019-04-12 05:35:28'),
(5, 'posts', 'posts', 'Пост', 'Новости', 'voyager-news', 'App\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-11 05:22:00', '2019-04-16 12:43:46'),
(6, 'pages', 'pages', 'Страница', 'Страницы', 'voyager-file-text', 'App\\Page', NULL, '\\Pvtl\\VoyagerPageBlocks\\Http\\Controllers\\PageController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-11 05:22:00', '2019-05-28 11:24:47'),
(7, 'cities', 'cities', 'Город', 'Города', NULL, 'App\\City', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-11 05:27:03', '2019-05-13 11:21:00'),
(8, 'vacancies', 'vacancies', 'Вакансия', 'Вакансии', NULL, 'App\\Vacancy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-11 06:21:20', '2019-06-04 11:16:13'),
(9, 'managers', 'managers', 'Менеджер', 'Менеджеры', 'voyager-people', 'App\\Manager', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-11 06:55:28', '2019-04-12 05:34:42'),
(10, 'blog_posts', 'blog_posts', 'Blog Post', 'Blog Posts', 'voyager-news', 'Pvtl\\VoyagerBlog\\BlogPost', NULL, '\\Pvtl\\VoyagerBlog\\Http\\Controllers\\PostController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-12 05:22:38', '2019-05-28 12:51:09'),
(11, 'offices', 'offices', 'Офис', 'Представительства', 'voyager-company', 'App\\Office', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-12 06:10:56', '2019-06-07 13:01:41'),
(12, 'page_blocks', 'page-blocks', 'Page Block', 'Page Blocks', 'voyager-file-text', 'Pvtl\\VoyagerPageBlocks\\PageBlock', NULL, '\\Pvtl\\VoyagerPageBlocks\\Http\\Controllers\\PageBlockController', NULL, 1, 0, NULL, '2019-04-12 07:48:02', '2019-04-12 07:48:02'),
(13, 'products', 'products', 'Продукт', 'Продукция', 'voyager-tag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-12 10:44:42', '2019-05-06 12:54:11'),
(14, 'categories', 'categories', 'Категория', 'Категории', 'voyager-categories', 'App\\Category', NULL, '\\TCG\\Voyager\\Http\\Controllers\\VoyagerBaseController', NULL, 1, 0, '{\"order_column\":\"sort\",\"order_display_column\":\"sort\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-12 12:27:35', '2019-07-18 13:31:36'),
(15, 'badges', 'badges', 'Знак качества', 'Знаки качества', NULL, 'App\\Badge', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-16 06:39:02', '2019-04-16 08:02:22'),
(16, 'size', 'size', 'Объём', 'Объёмы', NULL, 'App\\Size', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-04-17 04:15:36', '2019-04-17 04:15:36'),
(17, 'sizes', 'sizes', 'Объём', 'Объёмы', 'voyager-cup', 'App\\Size', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-17 04:21:25', '2019-07-03 15:05:26'),
(18, 'projects', 'projects', 'Проект', 'Проекты', NULL, 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-17 12:03:15', '2019-04-17 12:39:00'),
(19, 'departments', 'departments', 'Отдел', 'Отделы', NULL, 'App\\Department', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-07 11:28:41', '2019-05-20 11:29:08'),
(20, 'history', 'history', 'History', 'History', NULL, 'App\\History', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-05-15 05:24:34', '2019-05-15 05:24:34'),
(21, 'histories', 'histories', 'Историю', 'История', 'voyager-trophy', 'App\\History', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-15 05:52:31', '2019-05-15 06:11:17'),
(22, 'sliders', 'sliders', 'Слайдер', 'Слайдеры', 'voyager-code', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-16 10:07:59', '2019-05-16 10:12:15'),
(23, 'carousels', 'carousels', 'Слайд', 'Карусель', 'voyager-photos', 'App\\Carousel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-28 13:45:51', '2019-05-28 13:47:35');

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Маркетинг', '2019-05-13 04:37:00', '2019-05-20 11:32:02', 'sekretar@bon-boisson.com.ua'),
(2, 'Руководство', '2019-05-13 04:37:00', '2019-05-20 11:31:52', 'sekretar@bon-boisson.com.ua'),
(3, 'Технический отдел', '2019-05-13 04:37:00', '2019-05-20 11:31:41', 'sekretar@bon-boisson.com.ua'),
(4, 'Продажи', '2019-05-13 04:38:00', '2019-05-20 11:31:29', 'sekretar@bon-boisson.com.ua'),
(5, 'ВЭД', '2019-05-13 04:38:00', '2019-05-20 11:31:14', 'sekretar@bon-boisson.com.ua');

-- --------------------------------------------------------

--
-- Структура таблицы `histories`
--

CREATE TABLE `histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `align` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `histories`
--

INSERT INTO `histories` (`id`, `year`, `text`, `image`, `align`, `created_at`, `updated_at`) VALUES
(1, 2017, 'Выход на смежные рынки - запуск слабоалкогольных коктейлей TROPIC BAR и Black Alco', 'histories\\May2019\\fnFfrsDzYRn74mHsFUyK.png', 0, '2019-05-15 05:59:00', '2019-07-09 08:54:20'),
(2, 2016, 'Вывод на рынок лимонадов Bon Lemon – натуральных, изготовленных по европейским традициям с ярко выраженным лимонным вкусом и без искусственных красителей и ароматизаторов.', 'histories\\May2019\\XCvXDyDzQRfhiUMaSfzf.png', 1, '2019-05-15 06:01:00', '2019-05-15 06:02:23'),
(3, 2015, 'Компания приобретает Новомосковский завод минеральных вод и с этого момента 100% воды Бон Буассон добывается из минерального источника Новотроицкое в курортной зоне Соленый Лиман и разливается непосредственно на месте добычи.', 'histories\\May2019\\lTvwLdvQceyZ4jFhkLcz.png', 0, '2019-05-15 06:03:00', '2019-07-09 08:53:44'),
(4, 2009, 'Благодаря соединению произвдственных технологий и маркетинговых стратегий впервые в Украине на рынок вышел энергетический напиток в PET упаковке - TM Black. Стратегия сработала - сегодня Black №1 по продажам на рынке энергетиков Украины (по данным компании Nielsen)', 'histories\\May2019\\GDFysYxMkbUKP6Rmj9vf.png', 1, '2019-05-15 06:05:00', '2019-07-09 11:52:17'),
(5, 2003, 'Ввод в эксплуатацию второй линии производства, расширение ассортимента лимонадов', 'histories\\May2019\\oyoyNzVB8iCP3iEpqJCg.png', 0, '2019-05-15 06:07:00', '2019-07-09 11:51:48'),
(6, 1998, 'Вывод на рынок легендарной Золотой Серией лимонадов с классическими вкусами. На них выросло не одно поколение украинцев, а эта серия стала безоговорочным лидером за 20 лет своего существования в сегменте классических лимонадов.', 'histories\\May2019\\y2QBMXKoWWmmn24eY53k.png', 1, '2019-05-15 06:07:00', '2019-07-09 11:51:34'),
(7, 1997, 'Запуск производства в Днепропетровске. Первым из продуктов компании стала вода бон буассон, которая и сегодня присутствует в портфеле брендов и прошла через много изменений за эти 20 лет.', 'histories\\May2019\\E0O7RLgu7cs5XdDikOYM.png', 0, '2019-05-15 06:08:00', '2019-07-09 11:48:31');

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE `managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`id`, `name`, `position`, `image`, `email`, `skype`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'Виктория Минеральная', 'HR-менеджер', 'managers/June2019/XQuaLVFFxbBRZngUjPvD.png', 'bonbouasson@gmail.com', 'bonbouasson', '+38(095)489-68-79', '2019-04-12 05:15:06', '2019-06-04 15:25:15');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(2, 'primary', '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(3, 'social', '2019-04-12 05:22:51', '2019-04-12 05:22:51'),
(4, 'top_left', '2019-05-06 05:53:56', '2019-05-06 05:53:56'),
(5, 'top_right', '2019-05-06 05:54:12', '2019-05-06 05:54:12'),
(6, 'sidebar', '2019-05-13 08:24:10', '2019-05-13 08:24:10');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель управления', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2019-04-11 05:19:42', '2019-04-12 09:51:49', 'voyager.dashboard', 'null'),
(2, 1, 'Медиа', '', '_self', 'voyager-images', '#000000', NULL, 2, '2019-04-11 05:19:42', '2019-04-12 10:18:21', 'voyager.media.index', 'null'),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', '#000000', 49, 1, '2019-04-11 05:19:42', '2019-04-16 12:25:24', 'voyager.users.index', 'null'),
(4, 1, 'Роли', '', '_self', 'voyager-lock', '#000000', 49, 2, '2019-04-11 05:19:42', '2019-04-16 12:25:28', 'voyager.roles.index', 'null'),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', '#000000', NULL, 12, '2019-04-11 05:19:42', '2019-05-28 13:46:41', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', '#000000', 5, 1, '2019-04-11 05:19:42', '2019-04-11 06:14:48', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-04-11 05:19:42', '2019-04-11 06:14:48', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-04-11 05:19:42', '2019-04-11 06:14:48', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-04-11 05:19:42', '2019-04-11 06:14:48', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 13, '2019-04-11 05:19:42', '2019-05-28 13:46:44', 'voyager.settings.index', 'null'),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', '#000000', 5, 5, '2019-04-11 05:19:42', '2019-04-11 06:14:48', 'voyager.hooks', 'null'),
(14, 1, 'Страницы', '', '_self', 'voyager-file-text', '#000000', NULL, 4, '2019-04-11 05:22:00', '2019-04-17 12:20:42', 'voyager.pages.index', 'null'),
(15, 1, 'Города', '', '_self', 'voyager-company', '#000000', 44, 2, '2019-04-11 05:27:03', '2019-04-16 04:46:50', 'voyager.cities.index', 'null'),
(16, 1, 'Вакансии', '', '_self', 'voyager-certificate', '#000000', NULL, 6, '2019-04-11 06:21:20', '2019-04-17 12:20:42', 'voyager.vacancies.index', 'null'),
(17, 1, 'Менеджеры', '', '_self', 'voyager-people', '#000000', 44, 3, '2019-04-11 06:55:28', '2019-04-12 10:30:23', 'voyager.managers.index', 'null'),
(31, 1, 'Новости', '', '_self', 'voyager-news', '#000000', NULL, 5, '2019-04-12 05:22:39', '2019-04-17 12:20:42', 'voyager.blog_posts.index', 'null'),
(35, 2, 'О компании', '/about', '_self', NULL, '#000000', NULL, 1, '2019-04-12 05:22:50', '2019-05-24 12:09:24', NULL, ''),
(36, 2, 'Контакты', '/contacts', '_self', NULL, '#000000', NULL, 6, '2019-04-12 05:22:51', '2019-05-31 14:27:53', NULL, ''),
(37, 3, 'Facebook', 'https://www.facebook.com/wearepvtl', '_blank', 'fa-facebook-square', NULL, NULL, 1, '2019-04-12 05:22:51', '2019-04-12 05:22:51', NULL, NULL),
(38, 3, 'Twitter', 'https://twitter.com/wearepvtl', '_blank', 'fa-twitter-square', NULL, NULL, 2, '2019-04-12 05:22:51', '2019-04-12 05:22:51', NULL, NULL),
(39, 3, 'Instagram', 'https://www.instagram.com/wearepvtl/', '_blank', 'fa-instagram', NULL, NULL, 3, '2019-04-12 05:22:51', '2019-04-12 05:22:51', NULL, NULL),
(40, 3, 'Google+', 'https://plus.google.com/100970850483584616344', '_blank', 'fa-google-plus-square', NULL, NULL, 4, '2019-04-12 05:22:51', '2019-04-12 05:22:51', NULL, NULL),
(41, 3, 'LinkedIn', 'https://www.linkedin.com/company/pivotal-agency', '_blank', 'fa-linkedin', NULL, NULL, 5, '2019-04-12 05:22:51', '2019-04-12 05:22:51', NULL, NULL),
(42, 1, 'Офисы', '', '_self', 'voyager-company', '#000000', 44, 1, '2019-04-12 06:10:57', '2019-04-16 04:46:50', 'voyager.offices.index', 'null'),
(44, 1, 'Представительства', '', '_self', 'voyager-company', '#000000', NULL, 8, '2019-04-12 10:29:51', '2019-05-15 05:29:28', NULL, ''),
(45, 1, 'Каталог', '', '_self', 'voyager-categories', '#000000', NULL, 3, '2019-04-12 10:38:15', '2019-04-12 10:39:13', NULL, ''),
(46, 1, 'Продукция', '', '_self', 'voyager-window-list', '#000000', 45, 2, '2019-04-12 10:44:43', '2019-04-16 07:59:54', 'voyager.products.index', 'null'),
(47, 1, 'Категории', '', '_self', 'voyager-categories', NULL, 45, 1, '2019-04-12 12:27:37', '2019-04-12 12:28:16', 'voyager.categories.index', NULL),
(48, 1, 'Знаки качества', '', '_self', 'voyager-tag', '#000000', 45, 3, '2019-04-16 06:39:03', '2019-04-16 07:57:47', 'voyager.badges.index', 'null'),
(49, 1, 'Пользователи', '', '_self', 'voyager-person', '#000000', NULL, 14, '2019-04-16 12:25:10', '2019-05-28 13:46:45', NULL, ''),
(51, 2, 'Продукция', '/products', '_self', NULL, '#000000', NULL, 2, '2019-04-16 13:30:33', '2019-05-24 12:09:25', NULL, ''),
(53, 1, 'Объёмы', '', '_self', 'voyager-cup', NULL, 45, 4, '2019-04-17 04:21:27', '2019-04-17 11:50:53', 'voyager.sizes.index', NULL),
(58, 1, 'Проекты', '', '_self', 'voyager-book', '#000000', NULL, 7, '2019-04-17 12:03:18', '2019-04-17 12:40:24', 'voyager.projects.index', 'null'),
(59, 2, 'Социальные проекты', '/projects', '_self', NULL, '#000000', NULL, 4, '2019-04-18 12:49:07', '2019-04-18 12:49:17', NULL, ''),
(63, 4, 'О компании', '/about', '_self', NULL, '#000000', NULL, 12, '2019-05-06 05:56:54', '2019-05-06 06:11:57', NULL, ''),
(64, 4, 'Продукция', '/products', '_self', NULL, '#000000', NULL, 13, '2019-05-06 05:57:13', '2019-05-06 06:12:14', NULL, ''),
(65, 4, 'Производство', '/mineral-naya-voda', '_self', NULL, '#000000', NULL, 14, '2019-05-06 05:57:26', '2019-05-17 12:27:07', NULL, ''),
(66, 5, 'Социальные проекты', '/projects', '_self', NULL, '#000000', NULL, 15, '2019-05-06 05:58:53', '2019-05-06 06:13:29', NULL, ''),
(67, 5, 'Представительства', '/offices', '_self', NULL, '#000000', NULL, 16, '2019-05-06 05:59:17', '2019-05-07 04:40:42', NULL, ''),
(68, 5, 'Контакты', '/contacts', '_self', NULL, '#000000', NULL, 17, '2019-05-06 05:59:35', '2019-05-07 11:46:23', NULL, ''),
(70, 1, 'Отделы', '', '_self', 'voyager-list', '#000000', 44, 4, '2019-05-07 11:28:43', '2019-05-07 11:32:27', 'voyager.departments.index', 'null'),
(71, 6, 'Философия', '/filosofiya', '_self', NULL, '#000000', NULL, 1, '2019-05-13 08:28:17', '2019-05-21 04:41:54', NULL, ''),
(72, 6, 'История компании', '/history', '_self', NULL, '#000000', NULL, 2, '2019-05-13 08:28:56', '2019-05-21 04:41:55', NULL, ''),
(73, 6, 'Производство', '#', '_self', NULL, '#000000', NULL, 3, '2019-05-13 08:29:17', '2019-05-21 04:41:55', NULL, ''),
(74, 6, 'Вакансии', '/vacancies', '_self', NULL, '#000000', NULL, 4, '2019-05-13 08:29:56', '2019-05-21 04:41:56', NULL, ''),
(75, 6, 'Новости', '/news', '_self', NULL, '#000000', NULL, 5, '2019-05-13 08:30:07', '2019-05-21 08:07:11', NULL, ''),
(77, 1, 'История компании', '', '_self', 'voyager-trophy', '#000000', NULL, 9, '2019-05-15 05:52:33', '2019-05-16 10:08:57', 'voyager.histories.index', 'null'),
(78, 1, 'Слайдеры', '', '_self', 'voyager-code', '#000000', NULL, 10, '2019-05-16 10:08:02', '2019-05-16 10:08:57', 'voyager.sliders.index', 'null'),
(79, 6, 'Минеральная вода', '/mineral-naya-voda', '_self', NULL, '#000000', 73, 1, '2019-05-21 04:41:46', '2019-05-21 04:41:55', NULL, ''),
(80, 6, 'Безалкогольные напитки', '/bezalkogol-nye-napitki', '_self', NULL, '#000000', 73, 2, '2019-05-21 04:42:36', '2019-05-21 11:13:44', NULL, ''),
(81, 2, 'Производство', '/mineral-naya-voda', '_self', NULL, '#000000', NULL, 3, '2019-05-24 12:09:10', '2019-05-24 12:09:25', NULL, ''),
(82, 1, 'Карусель', '', '_self', 'voyager-photos', NULL, NULL, 11, '2019-05-28 13:45:58', '2019-05-28 13:46:40', 'voyager.carousels.index', NULL),
(83, 2, 'Представительства', '/offices', '_self', NULL, '#000000', NULL, 5, '2019-05-31 14:27:43', '2019-05-31 14:27:52', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2018_04_18_000000_create_blog_posts_table', 3),
(28, '2018_04_18_000000_create_pages_table', 3),
(29, '2018_04_19_224316_add_fields_to_pages_table', 3),
(30, '2018_05_09_000000_create_categories_table', 3),
(31, '2018_05_11_000000_remove_blog_keywords_field', 3),
(32, '2018_05_11_000001_remove_pages_keywords_field', 3),
(33, '2018_02_11_224531_create_page_blocks_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `offices`
--

CREATE TABLE `offices` (
  `id` int(10) UNSIGNED NOT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` point NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `office_type` tinyint(4) DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `offices`
--

INSERT INTO `offices` (`id`, `street`, `phone`, `coordinates`, `created_at`, `updated_at`, `city_id`, `office_type`, `email`) VALUES
(3, ' ул. Фабричная 1', '+38 (067) 524 85 29', '\0\0\0\0\0\0\0�_vOnA@��V�/;H@', '2019-05-07 06:17:00', '2019-07-09 11:35:16', 21, 0, NULL),
(4, 'ул. Лесная, 6', '+38 (067) 524 61 10', '\0\0\0\0\0\0\0�_vOnA@��V�/;H@', '2019-05-07 06:20:00', '2019-07-09 11:28:02', 18, 0, NULL),
(6, 'ул. Федоренко 4Б', '+38 (067) 524 66 67', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-04 11:18:00', '2019-07-09 11:38:46', 23, 0, NULL),
(7, 'ул. Маяковского 3А', '+38 (067) 524 57 91', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-04 11:29:00', '2019-07-09 11:38:11', 22, 0, NULL),
(8, 'ул. Путивльская, 19/1', '+38 (067) 611 47 03', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-04 11:29:00', '2019-07-09 11:26:52', 17, 0, NULL),
(9, 'пр. Гагарина, 183А', '+38 (067) 611 46 98', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-04 11:30:00', '2019-07-09 11:25:48', 8, 0, NULL),
(10, 'ул. Пирятинская, 115', '+38 (067) 550 62 83, +38 (095) 870 36 69', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-04 11:31:00', '2019-07-09 11:30:15', 19, 0, NULL),
(11, 'ул. Черниговская, 112 а', '+38 (067) 550 62 83, +38 (095) 870 36 69', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-04 11:32:00', '2019-07-09 11:31:36', 20, 0, NULL),
(12, 'ул. Церковная, 19', '+38 (067) 552 79 07', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-04 11:33:00', '2019-07-09 11:32:46', 11, 0, NULL),
(13, 'ул. Данила Галицкого, 3а', '+38 (067) 500 45 89', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-07 12:23:44', '2019-06-07 12:23:44', 5, 0, NULL),
(14, 'ул. Некрасова 2', '+38 (067) 627 65 23', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-07 12:24:00', '2019-07-09 11:33:50', 2, 0, NULL),
(15, 'ул. Данила Галицкого, 3а', '+38 (067) 500 45 89', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-07 12:25:33', '2019-06-07 12:25:33', 1, 0, NULL),
(16, 'ул. Малая Морская 108/5', '+38 (067) 552 79 10', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-07 12:26:00', '2019-07-09 11:36:04', 15, 0, NULL),
(17, 'ул. Громадская, 47', '+38 ( 095) 870 36 69', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-07 12:27:00', '2019-07-09 11:28:47', 4, 0, NULL),
(18, 'ул. Данилы Галыцького, 3а', '+ 38 (067) 483 44 94', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-07 12:29:00', '2019-07-09 12:56:16', 6, 0, NULL),
(19, 'ул. Смелянская 131', '+38 (067) 524 79 91', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-06-07 12:33:00', '2019-07-11 09:30:59', 10, 0, NULL),
(21, 'ул. Городецкая 367', '+38 (097) 810 67 31, +38 (098) 831 10 16', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 11:41:57', '2019-07-09 11:41:57', 3, 0, NULL),
(22, 'пр-т Инженеров 10', '+38 (067) 524 66 02', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 12:05:05', '2019-07-09 12:05:05', 24, 0, NULL),
(23, 'пер. Знаменский 14а', '+38 (067) 524 66 06', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 12:06:13', '2019-07-09 12:06:13', 25, 0, NULL),
(24, 'ул. Старицкого 5', '+38 (067) 627 65 36', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 12:07:00', '2019-07-09 12:07:00', 12, 0, NULL),
(25, 'ул. Голтянская 101а', '38 (067) 552 78 91', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 12:07:37', '2019-07-09 12:07:37', 26, 0, NULL),
(26, 'ул. Днепровская 294 Д', '+38 (067) 635 26 06', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 12:59:03', '2019-07-09 12:59:03', 27, 0, NULL),
(27, 'проул. Перспективный 10', '+38 (067) 524 63 54', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 12:59:41', '2019-07-09 12:59:41', 7, 0, NULL),
(28, 'ул. Фабричная 4г', '+38 (067) 524 63 54', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 13:00:11', '2019-07-09 13:00:11', 28, 0, NULL),
(29, 'ул. Подлесная 27', '+38 (098) 213 97 56', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-09 13:01:20', '2019-07-09 13:01:20', 29, 0, NULL),
(30, 'ул.Кооперативная, 5', '+38 (067) 990 52 58', '\0\0\0\0\0\0\0����M6A@��u�9H@', '2019-07-09 13:01:00', '2019-07-18 15:26:34', 30, 0, NULL),
(31, 'ул. Карпенко карого 47', '+38 ((067) 627 79 52', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-11 09:01:10', '2019-07-11 09:01:10', 13, 0, NULL),
(32, 'ул. Шмидта 116/1', '+38 (067) 524 60 58', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-11 09:03:49', '2019-07-11 09:03:49', 32, 0, NULL),
(33, 'ул. Бахчиванджи 69', '+38 (096) 773 67 09', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-11 09:05:00', '2019-07-11 09:05:00', 33, 0, NULL),
(34, 'ул. Лихачёва 2А', '+38 (097) 984 53 14', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-11 09:05:33', '2019-07-11 09:05:33', 9, 0, NULL),
(35, 'ул. Симферопольская 17', '+38 (056) 376 71 63', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-11 09:08:20', '2019-07-11 09:08:20', 6, 1, 'sekretar@bon-boisson.com.ua'),
(36, 'ул. Пацаєва, 2/1', '+38 (047) 271 13 91, +38 (047) 271 05 80', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-11 09:10:27', '2019-07-11 09:10:27', 10, 2, NULL),
(37, 'ул. Жукова, 1а', '+38 (056) 767 57 20', '\0\0\0\0\0\0\0���ynA@X)�E1;H@', '2019-07-11 09:11:42', '2019-07-11 09:11:42', 16, 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `layout` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `status`, `created_at`, `updated_at`, `layout`, `parent_id`) VALUES
(10, 1, 'Главная', 'This is the excerpt for the Lorem Ipsum Page', '<p>&nbsp;</p>\n<h3 class=\"text-center\">This is the body of the lorem ipsum page</h3>\n<p class=\"text-center\">This is the body of the lorem ipsum page</p>\n<p>&nbsp;</p>', 'pages/page1.jpg', 'home', 'This is the meta description', 'ACTIVE', '2019-04-17 09:20:59', '2019-08-14 19:35:23', 'main-page', NULL),
(11, 1, 'О компании', 'This is the excerpt for the Lorem Ipsum Page', '<p><br /></p><h3 class=\"text-center\">This is the body of the lorem ipsum page</h3><p class=\"text-center\">This is the body of the lorem ipsum page</p><p><br /></p>', 'posts/post2.jpg', 'about', 'This is the meta description for about', 'ACTIVE', '2019-04-17 09:20:59', '2019-07-09 08:27:32', 'sidebar', NULL),
(12, 1, 'Контакты', 'This is the excerpt for the Lorem Ipsum Page', '<p><br /></p><h3 class=\"text-center\">This is the body of the lorem ipsum page</h3><p class=\"text-center\">This is the body of the lorem ipsum page</p><p><br /></p>', 'posts/post2.jpg', 'contacts', 'This is the meta description for contact', 'ACTIVE', '2019-04-17 09:20:59', '2019-05-13 08:50:37', 'contacts', NULL),
(13, 1, 'Философия', '', '', NULL, 'filosofiya', '', 'ACTIVE', '2019-05-13 08:51:10', '2019-07-09 08:48:45', 'sidebar', NULL),
(14, 1, 'История компании', '', '', NULL, 'istoriya-kompanii', '', 'ACTIVE', '2019-05-13 08:51:46', '2019-06-06 10:10:48', 'sidebar', NULL),
(15, 1, 'Минеральная вода', '', '', NULL, 'mineral-naya-voda', '', 'ACTIVE', '2019-05-17 12:25:12', '2019-06-07 11:36:37', 'sidebar', NULL),
(16, 1, 'Безалкогольные напитки', '', '', NULL, 'bezalkogol-nye-napitki', '', 'ACTIVE', '2019-05-21 04:37:33', '2019-07-15 10:11:50', 'sidebar', NULL),
(17, 1, 'Политика конфиденциальности', '', '', NULL, 'politika-konfidencial-nosti', '', 'ACTIVE', '2019-05-27 13:21:22', '2019-06-03 09:26:47', 'blank', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `page_blocks`
--

CREATE TABLE `page_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `type` enum('template','include') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'include',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_minimized` tinyint(1) NOT NULL DEFAULT '0',
  `is_delete_denied` tinyint(1) NOT NULL DEFAULT '0',
  `cache_ttl` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '10000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `page_blocks`
--

INSERT INTO `page_blocks` (`id`, `page_id`, `type`, `path`, `data`, `is_hidden`, `is_minimized`, `is_delete_denied`, `cache_ttl`, `order`, `created_at`, `updated_at`) VALUES
(2, 2, 'template', 'testimonial', '{\"content\":\"Company X is both attractive and highly adaptable. Company X has really helped our business thrive - I can\'t wait to see what comes next for us.\",\"title\":\"John Smith\",\"sub_title\":\"Founder &amp; CEO\",\"br_1\":null,\"image\":\"blocks\\/DYXP78TGaETxu29xOVqVufe1vtMXwnnT03XzB13C.jpeg\",\"br_2\":null,\"spaces\":\"0\",\"animate\":\"on\"}', 0, 0, 0, 0, 10000, '2019-04-17 07:57:43', '2019-04-17 07:57:55'),
(25, 14, 'template', 'heading', '{\"text\":\"\\u042d\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"link\":\"\",\"tag\":\"\",\"align\":\"\",\"background\":\"\",\"font_size\":\"\",\"line_height\":\"\",\"font\":\"\",\"animation\":\"\",\"margin\":\"\",\"padding\":\"\",\"id\":\"\",\"class\":\"\"}', 0, 1, 0, 0, 10000, '2019-05-16 08:23:23', '2019-06-06 10:10:47'),
(36, 11, 'template', 'text', '{\"text_ru\":\"<p>\\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0411\\u0435\\u0432\\u0435\\u0440\\u0438\\u0434\\u0436 &mdash; \\u043e\\u0434\\u0438\\u043d \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0431\\u0435\\u0437\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0432 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0435. \\u0417\\u0430 20 \\u043b\\u0435\\u0442 \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0434\\u043e\\u0431\\u0438\\u043b\\u0430\\u0441\\u044c \\u043b\\u0438\\u0434\\u0435\\u0440\\u0441\\u0442\\u0432\\u0430 \\u0432 \\u0441\\u0435\\u0433\\u043c\\u0435\\u043d\\u0442\\u0435 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043e\\u0432 \\u0441 \\u0417\\u043e\\u043b\\u043e\\u0442\\u043e\\u0439 \\u0441\\u0435\\u0440\\u0438\\u0435\\u0439 \\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0438 \\u0432 \\u0441\\u0435\\u0433\\u043c\\u0435\\u043d\\u0442\\u0435 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u043a\\u043e\\u0432 \\u0441 \\u0422\\u041c Black.<br \\/><br \\/>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f &mdash; \\u044d\\u0442\\u043e 10 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0440\\u043e\\u043a, 2 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430, 47 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430 \\u0438 \\u0431\\u043e\\u043b\\u0435\\u0435 50 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432.<\\/p>\",\"text_ua\":\"<p>\\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0411\\u0435\\u0432\\u0435\\u0440\\u0438\\u0434\\u0436 &mdash; \\u043e\\u0434\\u0438\\u043d \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0431\\u0435\\u0437\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0432 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0435. \\u0417\\u0430 20 \\u043b\\u0435\\u0442 \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0434\\u043e\\u0431\\u0438\\u043b\\u0430\\u0441\\u044c \\u043b\\u0438\\u0434\\u0435\\u0440\\u0441\\u0442\\u0432\\u0430 \\u0432 \\u0441\\u0435\\u0433\\u043c\\u0435\\u043d\\u0442\\u0435 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043e\\u0432 \\u0441 \\u0417\\u043e\\u043b\\u043e\\u0442\\u043e\\u0439 \\u0441\\u0435\\u0440\\u0438\\u0435\\u0439 \\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0438 \\u0432 \\u0441\\u0435\\u0433\\u043c\\u0435\\u043d\\u0442\\u0435 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u043a\\u043e\\u0432 \\u0441 \\u0422\\u041c Black.<br \\/><br \\/>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f &mdash; \\u044d\\u0442\\u043e 10 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0440\\u043e\\u043a, 2 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430, 47 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430 \\u0438 \\u0431\\u043e\\u043b\\u0435\\u0435 50 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432.<\\/p>\",\"text_en\":\"<p class=\\\"MsoNormal\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: \'Arial\',\'sans-serif\'; mso-ansi-language: EN-US;\\\">Bon Boisson Beverage is one of the largest producers of non-alcoholic beverages in Ukraine. During<span style=\\\"mso-spacerun: yes;\\\">&nbsp; <\\/span>20 years of its history the company has achieved the leadership in the segment of traditional lemonades with the TM &ldquo;Gold series of Bon Boisson&rdquo; and in the segment of energetic drinks<span style=\\\"mso-spacerun: yes;\\\">&nbsp; <\\/span>with TM &ldquo;Black&rdquo;.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: \'Arial\',\'sans-serif\'; mso-ansi-language: EN-US;\\\">The company today is 10 own trademarks, 2 large industrial sites, 44 sales offices and more than 50 thousand customers.<\\/span><\\/p>\",\"margin\":null,\"padding\":null,\"animation\":\"none\",\"id\":\"36\",\"class\":null}', 0, 0, 0, 0, 1, '2019-05-21 06:02:35', '2019-07-09 08:26:10'),
(37, 11, 'template', 'counter', '{\"number_1\":\"20\",\"text_after_ru_1\":null,\"text_after_ua_1\":null,\"text_after_en_1\":null,\"text_below_ru_1\":\"\\u043b\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435\",\"text_below_ua_1\":\"\\u043b\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435\",\"text_below_en_1\":\"\\u043b\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435\",\"br_1\":null,\"number_2\":\"1.6K\",\"text_after_ru_2\":null,\"text_after_ua_2\":null,\"text_after_en_2\":null,\"text_below_ru_2\":\"\\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432\",\"text_below_ua_2\":\"\\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432\",\"text_below_en_2\":\"\\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432\",\"br_2\":null,\"number_3\":\"47\",\"text_after_ru_3\":null,\"text_after_ua_3\":null,\"text_after_en_3\":null,\"text_below_ru_3\":\"\\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\",\"text_below_ua_3\":\"\\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\",\"text_below_en_3\":\"\\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\",\"br_3\":null,\"number_4\":\"50K\",\"text_after_ru_4\":null,\"text_after_ua_4\":null,\"text_after_en_4\":null,\"text_below_ru_4\":\"\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432\",\"text_below_ua_4\":\"\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432\",\"text_below_en_4\":\"\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432\",\"br_4\":null,\"number_5\":\"2\",\"text_after_ru_5\":null,\"text_after_ua_5\":null,\"text_after_en_5\":null,\"text_below_ru_5\":\"\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430\",\"text_below_ua_5\":\"\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430\",\"text_below_en_5\":\"\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430\",\"br_5\":null,\"number_6\":\"10\",\"text_after_ru_6\":null,\"text_after_ua_6\":null,\"text_after_en_6\":null,\"text_below_ru_6\":\"\\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0440\\u043e\\u043a\",\"text_below_ua_6\":\"\\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0440\\u043e\\u043a\",\"text_below_en_6\":\"\\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0440\\u043e\\u043a\",\"br_6\":null,\"animation\":\"none\",\"id\":\"id\",\"class\":null}', 0, 1, 0, 0, 2, '2019-05-21 06:20:31', '2019-05-31 15:28:54'),
(38, 11, 'template', 'text', '{\"text_ru\":\"<p>\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432\\u044b\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0430\\u0445 \\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0411\\u0435\\u0432\\u0435\\u0440\\u0438\\u0434\\u0436 &mdash; \\u044d\\u0442\\u043e \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b, \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430, \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438, \\u0441\\u043e\\u043a\\u043e\\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0449\\u0438\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438, \\u0441\\u043b\\u0430\\u0431\\u043e\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438.<\\/p>\",\"text_ua\":\"<p>\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432\\u044b\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0430\\u0445 \\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0411\\u0435\\u0432\\u0435\\u0440\\u0438\\u0434\\u0436 &mdash; \\u044d\\u0442\\u043e \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b, \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430, \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438, \\u0441\\u043e\\u043a\\u043e\\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0449\\u0438\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438, \\u0441\\u043b\\u0430\\u0431\\u043e\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438.<\\/p>\",\"text_en\":\"<p class=\\\"MsoNormal\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: \'Arial\',\'sans-serif\'; mso-ansi-language: EN-US;\\\">List of products being produced at Bon Boisson Beverage plants includes lemonade, mineral water, energy drinks, juice-containing drinks and low alcohol drinks.<\\/span><\\/p>\",\"margin\":null,\"padding\":null,\"animation\":\"none\",\"id\":\"38\",\"class\":null}', 0, 0, 0, 0, 3, '2019-05-21 07:28:43', '2019-07-09 08:26:45'),
(39, 11, 'template', 'heading', '{\"text_ru\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b\",\"text_ua\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b\",\"text_en\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b\",\"link\":null,\"tag\":\"h1\",\"align\":\"left\",\"background\":\"blocks\\/BuGwqcMl3XQGNhewHb2PkBR2hqn9GkEqf514jrkj.jpeg\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTBold\",\"animation\":\"none\",\"margin\":\"0px\",\"padding\":null,\"id\":\"39\",\"class\":\"hedingTitle\"}', 0, 0, 0, 0, 4, '2019-05-21 07:38:33', '2019-06-03 07:31:15'),
(40, 11, 'template', 'heading', '{\"text_ru\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"text_ua\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"text_en\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"link\":null,\"tag\":\"h1\",\"align\":\"left\",\"background\":\"blocks\\/HiSDf4CWJq1menDdnkuvbZGlzrqSVVtrO0OcRe8o.jpeg\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTBold\",\"animation\":\"none\",\"margin\":\"0 0 50px 0\",\"padding\":null,\"id\":\"40\",\"class\":\"hedingTitle\"}', 0, 0, 0, 0, 5, '2019-05-21 07:43:34', '2019-07-09 08:27:06'),
(42, 11, 'template', 'heading', '{\"text_ru\":\"\\u042d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435\",\"text_ua\":\"\\u042d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435\",\"text_en\":\"\\u042d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435\",\"link\":null,\"tag\":\"h1\",\"align\":\"left\",\"background\":\"blocks\\/GPEprpKvsa9HjDlThO9Dr1aP53XV6l9LDg1bUMnO.jpeg\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTBold\",\"animation\":\"none\",\"margin\":\"0px\",\"padding\":null,\"id\":\"42\",\"class\":\"hedingTitle\"}', 0, 1, 0, 0, 8, '2019-05-21 07:49:27', '2019-06-03 07:30:10'),
(43, 11, 'template', 'heading', '{\"text_ru\":\"\\u0421\\u043b\\u0430\\u0431\\u043e\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435\",\"text_ua\":\"\\u0421\\u043b\\u0430\\u0431\\u043e\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435\",\"text_en\":\"\\u0421\\u043b\\u0430\\u0431\\u043e\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435\",\"link\":null,\"tag\":\"h1\",\"align\":\"left\",\"background\":\"blocks\\/luNXAykT11Aa66SsloNCfvinrN2uH5kBH76FtNMk.jpeg\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTBold\",\"animation\":\"none\",\"margin\":\"0 0 50px 0\",\"padding\":null,\"id\":\"43\",\"class\":\"hedingTitle\"}', 0, 1, 0, 0, 9, '2019-05-21 07:50:43', '2019-06-03 07:29:54'),
(44, 11, 'template', 'text', '{\"text_ru\":\"<p>\\u041e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0447\\u0435\\u0440\\u0442\\u043e\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0439 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f \\u0431\\u0435\\u0437\\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u043e\\u0447\\u043d\\u043e\\u0433\\u043e \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430, \\u0447\\u0435\\u043c\\u0443 \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u0441\\u043b\\u0443\\u0436\\u0438\\u0442 \\u0442\\u043e\\u0442 \\u0444\\u0430\\u043a\\u0442, \\u0447\\u0442\\u043e \\u0437\\u0430 20 \\u043b\\u0435\\u0442\\u043d\\u044e\\u044e \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u044e \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043e\\u0432 \\u0438\\u0445 \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u0443\\u0440\\u0430 \\u043d\\u0438 \\u0440\\u0430\\u0437\\u0443 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u043b\\u0430\\u0441\\u044c.<br \\/><br \\/>\\u041c\\u044b \\u043e\\u0447\\u0435\\u043d\\u044c \\u0434\\u043e\\u0440\\u043e\\u0436\\u0438\\u043c \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0435\\u043c \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0438 \\u043f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u043e\\u0432 \\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u043c \\u0441\\u0432\\u043e\\u044e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0442\\u0430\\u043a, \\u0447\\u0442\\u043e\\u0431\\u044b \\u044d\\u0442\\u043e \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0435 \\u043e\\u043f\\u0440\\u0430\\u0432\\u0434\\u0430\\u0442\\u044c.<\\/p>\",\"text_ua\":\"<p>\\u041e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0447\\u0435\\u0440\\u0442\\u043e\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0439 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f \\u0431\\u0435\\u0437\\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u043e\\u0447\\u043d\\u043e\\u0433\\u043e \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430, \\u0447\\u0435\\u043c\\u0443 \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u0441\\u043b\\u0443\\u0436\\u0438\\u0442 \\u0442\\u043e\\u0442 \\u0444\\u0430\\u043a\\u0442, \\u0447\\u0442\\u043e \\u0437\\u0430 20 \\u043b\\u0435\\u0442\\u043d\\u044e\\u044e \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u044e \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043e\\u0432 \\u0438\\u0445 \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u0443\\u0440\\u0430 \\u043d\\u0438 \\u0440\\u0430\\u0437\\u0443 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u043b\\u0430\\u0441\\u044c.<br \\/><br \\/>\\u041c\\u044b \\u043e\\u0447\\u0435\\u043d\\u044c \\u0434\\u043e\\u0440\\u043e\\u0436\\u0438\\u043c \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0435\\u043c \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0438 \\u043f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u043e\\u0432 \\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u043c \\u0441\\u0432\\u043e\\u044e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0442\\u0430\\u043a, \\u0447\\u0442\\u043e\\u0431\\u044b \\u044d\\u0442\\u043e \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0435 \\u043e\\u043f\\u0440\\u0430\\u0432\\u0434\\u0430\\u0442\\u044c.<\\/p>\",\"text_en\":\"<p class=\\\"MsoNormal\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: \'Arial\',\'sans-serif\'; mso-ansi-language: EN-US;\\\">The distinctive feature of our company is the principle of uncompromised quality which is confirmed by the fact that our recipes have never changed during the 20 years history of traditional lemonades.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: \'Arial\',\'sans-serif\'; mso-ansi-language: EN-US;\\\">We greatly value the trust of our customers and partners and organize our work so that to justify this trust.<\\/span><\\/p>\",\"margin\":null,\"padding\":null,\"animation\":\"none\",\"id\":\"44\",\"class\":null}', 0, 0, 0, 0, 10, '2019-05-21 07:51:45', '2019-07-09 08:27:32'),
(45, 15, 'template', 'heading', '{\"text_ru\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"text_ua\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"text_en\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"link\":null,\"tag\":\"h1\",\"align\":\"left\",\"background\":\"\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTDemi\",\"animation\":\"bounceInUp\",\"margin\":null,\"padding\":null,\"id\":\"45\",\"class\":null}', 0, 0, 0, 0, 1, '2019-05-21 08:10:40', '2019-06-05 14:31:25'),
(46, 15, 'template', 'heading', '{\"text_ru\":\"\\u041d\\u043e\\u0432\\u043e\\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0417\\u0430\\u0432\\u043e\\u0434 \\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0412\\u043e\\u0434\",\"text_ua\":\"\\u041d\\u043e\\u0432\\u043e\\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0417\\u0430\\u0432\\u043e\\u0434 \\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0412\\u043e\\u0434\",\"text_en\":\"\\u041d\\u043e\\u0432\\u043e\\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0417\\u0430\\u0432\\u043e\\u0434 \\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0412\\u043e\\u0434\",\"link\":null,\"tag\":\"h2\",\"align\":\"left\",\"background\":\"\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTDemi\",\"animation\":\"bounceInUp\",\"margin\":null,\"padding\":null,\"id\":\"46\",\"class\":null}', 0, 0, 0, 0, 2, '2019-05-21 08:11:28', '2019-06-05 14:31:34'),
(47, 15, 'template', 'counter', '{\"number_1\":\"55\",\"text_after_ru_1\":\"\\u043b\\u0435\\u0442\",\"text_after_ua_1\":\"\\u043b\\u0435\\u0442\",\"text_after_en_1\":\"\\u043b\\u0435\\u0442\",\"text_below_ru_1\":\"\\u043d\\u0435\\u0438\\u0437\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0432\\u043e\\u0434\\u044b\",\"text_below_ua_1\":\"\\u043d\\u0435\\u0438\\u0437\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0432\\u043e\\u0434\\u044b\",\"text_below_en_1\":\"\\u043d\\u0435\\u0438\\u0437\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0432\\u043e\\u0434\\u044b\",\"br_1\":null,\"number_2\":\"1\",\"text_after_ru_2\":\"\\u043c\\u043b\\u0440\\u0434\",\"text_after_ua_2\":\"\\u043c\\u043b\\u0440\\u0434\",\"text_after_en_2\":\"\\u043c\\u043b\\u0440\\u0434\",\"text_below_ru_2\":\"\\u043b\\u0438\\u0442\\u0440\\u043e\\u0432 \\u0434\\u043e\\u0431\\u044b\\u0442\\u043e \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0432\\u043e\\u0434\\u044b \\u0441 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442\\u0430 \\u0437\\u0430\\u043f\\u0443\\u0441\\u043a\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0430\",\"text_below_ua_2\":\"\\u043b\\u0438\\u0442\\u0440\\u043e\\u0432 \\u0434\\u043e\\u0431\\u044b\\u0442\\u043e \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0432\\u043e\\u0434\\u044b \\u0441 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442\\u0430 \\u0437\\u0430\\u043f\\u0443\\u0441\\u043a\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0430\",\"text_below_en_2\":\"\\u043b\\u0438\\u0442\\u0440\\u043e\\u0432 \\u0434\\u043e\\u0431\\u044b\\u0442\\u043e \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0432\\u043e\\u0434\\u044b \\u0441 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442\\u0430 \\u0437\\u0430\\u043f\\u0443\\u0441\\u043a\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0430\",\"br_2\":null,\"number_3\":\"0\",\"text_after_ru_3\":\"\\u043c\",\"text_after_ua_3\":\"\\u043c\",\"text_after_en_3\":\"\\u043c\",\"text_below_ru_3\":\"\\u0440\\u0430\\u0441\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438 \\u0434\\u043e \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0430 \\u0432\\u043e\\u0434\\u044b \\u043d\\u0430 \\u043f\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043b\\u0438\\u043d\\u0438\\u0438\",\"text_below_ua_3\":\"\\u0440\\u0430\\u0441\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438 \\u0434\\u043e \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0430 \\u0432\\u043e\\u0434\\u044b \\u043d\\u0430 \\u043f\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043b\\u0438\\u043d\\u0438\\u0438\",\"text_below_en_3\":\"\\u0440\\u0430\\u0441\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438 \\u0434\\u043e \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0430 \\u0432\\u043e\\u0434\\u044b \\u043d\\u0430 \\u043f\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043b\\u0438\\u043d\\u0438\\u0438\",\"br_3\":null,\"number_4\":null,\"text_after_ru_4\":null,\"text_after_ua_4\":null,\"text_after_en_4\":null,\"text_below_ru_4\":null,\"text_below_ua_4\":null,\"text_below_en_4\":null,\"br_4\":null,\"number_5\":null,\"text_after_ru_5\":null,\"text_after_ua_5\":null,\"text_after_en_5\":null,\"text_below_ru_5\":null,\"text_below_ua_5\":null,\"text_below_en_5\":null,\"br_5\":null,\"number_6\":null,\"text_after_ru_6\":null,\"text_after_ua_6\":null,\"text_after_en_6\":null,\"text_below_ru_6\":null,\"text_below_ua_6\":null,\"text_below_en_6\":null,\"br_6\":null,\"animation\":\"bounceInUp\",\"id\":\"bubbleStyle\",\"class\":\"numLeft\"}', 0, 0, 0, 0, 4, '2019-05-21 08:12:59', '2019-06-05 14:31:49'),
(48, 15, 'template', 'image', '{\"title_ru\":null,\"title_ua\":null,\"title_en\":null,\"image\":\"blocks\\/5jBqqkZMaBMFOGfsWZP9jm0Ua1Vp7nYuhmBQkSR3.png\",\"link\":null,\"width\":\"100\",\"align\":\"center\",\"animation\":\"bounceInUp\",\"id\":\"48\",\"class\":\"large-img\"}', 0, 0, 0, 0, 6, '2019-05-21 08:15:27', '2019-06-05 14:32:31'),
(49, 15, 'template', 'text', '{\"text_ru\":\"<p>\\u041d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043e \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435, \\u043e\\u0442\\u0432\\u0435\\u0447\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u0430\\u043c ISO 22000 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0441\\u0432\\u043e\\u0439\\u0441\\u0442\\u0432 \\u0432\\u043e\\u0434\\u044b.<\\/p>\",\"text_ua\":\"<p>\\u041d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043e \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435, \\u043e\\u0442\\u0432\\u0435\\u0447\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u0430\\u043c ISO 22000 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0441\\u0432\\u043e\\u0439\\u0441\\u0442\\u0432 \\u0432\\u043e\\u0434\\u044b.<\\/p>\",\"text_en\":\"<p>\\u041d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043e \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435, \\u043e\\u0442\\u0432\\u0435\\u0447\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u0430\\u043c ISO 22000 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0441\\u0432\\u043e\\u0439\\u0441\\u0442\\u0432 \\u0432\\u043e\\u0434\\u044b.<\\/p>\",\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"49\",\"class\":\"animateVaweClass novomoskovsk-main__discription\"}', 0, 0, 0, 0, 9, '2019-05-21 08:17:41', '2019-06-05 14:33:22'),
(50, 15, 'template', 'image', '{\"title_ru\":null,\"title_ua\":null,\"title_en\":null,\"image\":\"blocks\\/cIDmrHF3hH3tSEHoajBRl89HF0sWPW2FsOrNXXUy.png\",\"link\":null,\"width\":\"100\",\"align\":\"left\",\"animation\":\"bounceInUp\",\"id\":\"50\",\"class\":\"large-img\"}', 0, 0, 0, 0, 10, '2019-05-21 08:20:55', '2019-06-06 08:25:11'),
(51, 15, 'template', 'content_two_columns', '{\"html_content_ru_1\":null,\"html_content_ua_1\":null,\"html_content_en_1\":null,\"class_1\":null,\"html_content_ru_2\":\"<p>\\u0417\\u0430\\u0432\\u043e\\u0434 \\u043f\\u043e \\u0434\\u043e\\u0431\\u044b\\u0447\\u0435 \\u0438 \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0443 \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0432\\u043e\\u0434\\u044b \\u0432 \\u0433 \\u041d\\u043e\\u0432\\u043e\\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u0435 \\u0431\\u044b\\u043b \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442 \\u0432 1961\\u0433, \\u0430 \\u043f\\u0435\\u0440\\u0432\\u0430\\u044f \\u0441\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0431\\u0443\\u0440\\u0435\\u043d\\u0430 \\u0435\\u0449\\u0435 \\u0440\\u0430\\u043d\\u044c\\u0448\\u0435 &ndash; \\u0432 1954 \\u0433\\u043e\\u0434\\u0443<\\/p>\",\"html_content_ua_2\":\"<p>\\u0417\\u0430\\u0432\\u043e\\u0434 \\u043f\\u043e \\u0434\\u043e\\u0431\\u044b\\u0447\\u0435 \\u0438 \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0443 \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0432\\u043e\\u0434\\u044b \\u0432 \\u0433 \\u041d\\u043e\\u0432\\u043e\\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u0435 \\u0431\\u044b\\u043b \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442 \\u0432 1961\\u0433, \\u0430 \\u043f\\u0435\\u0440\\u0432\\u0430\\u044f \\u0441\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0431\\u0443\\u0440\\u0435\\u043d\\u0430 \\u0435\\u0449\\u0435 \\u0440\\u0430\\u043d\\u044c\\u0448\\u0435 &ndash; \\u0432 1954 \\u0433\\u043e\\u0434\\u0443<\\/p>\",\"html_content_en_2\":\"<p>\\u0417\\u0430\\u0432\\u043e\\u0434 \\u043f\\u043e \\u0434\\u043e\\u0431\\u044b\\u0447\\u0435 \\u0438 \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0443 \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0432\\u043e\\u0434\\u044b \\u0432 \\u0433 \\u041d\\u043e\\u0432\\u043e\\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u0435 \\u0431\\u044b\\u043b \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442 \\u0432 1961\\u0433, \\u0430 \\u043f\\u0435\\u0440\\u0432\\u0430\\u044f \\u0441\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0431\\u0443\\u0440\\u0435\\u043d\\u0430 \\u0435\\u0449\\u0435 \\u0440\\u0430\\u043d\\u044c\\u0448\\u0435 &ndash; \\u0432 1954 \\u0433\\u043e\\u0434\\u0443<\\/p>\",\"class_2\":null,\"margin\":\"0 0 5% 0\",\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"51\",\"class\":null,\"spaces\":\"0\",\"animate\":null}', 0, 0, 0, 0, 3, '2019-05-21 08:52:56', '2019-06-05 14:31:39'),
(52, 15, 'template', 'content_two_columns', '{\"html_content_ru_1\":\"<p>\\u0421\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d\\u0430, \\u0438\\u0437 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043e-\\u043e\\u0445\\u0440\\u0430\\u043d\\u043d\\u043e\\u0439 \\u043a\\u0443\\u0440\\u043e\\u0440\\u0442\\u043d\\u043e\\u0439 \\u0437\\u043e\\u043d\\u0435<\\/p>\",\"html_content_ua_1\":\"<p>\\u0421\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d\\u0430, \\u0438\\u0437 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043e-\\u043e\\u0445\\u0440\\u0430\\u043d\\u043d\\u043e\\u0439 \\u043a\\u0443\\u0440\\u043e\\u0440\\u0442\\u043d\\u043e\\u0439 \\u0437\\u043e\\u043d\\u0435<\\/p>\",\"html_content_en_1\":\"<p>\\u0421\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d\\u0430, \\u0438\\u0437 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043e-\\u043e\\u0445\\u0440\\u0430\\u043d\\u043d\\u043e\\u0439 \\u043a\\u0443\\u0440\\u043e\\u0440\\u0442\\u043d\\u043e\\u0439 \\u0437\\u043e\\u043d\\u0435<\\/p>\",\"class_1\":\"animateVaweClass novomoskovsk-main__discription\",\"html_content_ru_2\":null,\"html_content_ua_2\":null,\"html_content_en_2\":null,\"class_2\":null,\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"52\",\"class\":null,\"spaces\":\"0\",\"animate\":null}', 0, 0, 0, 0, 5, '2019-05-21 09:13:30', '2019-06-05 14:32:13'),
(53, 15, 'template', 'content_two_columns', '{\"html_content_ru_1\":null,\"html_content_ua_1\":null,\"html_content_en_1\":null,\"class_1\":null,\"html_content_ru_2\":\"<p>\\u0412\\u043e\\u0434\\u0430 \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438\\u0437 \\u0432\\u043e\\u0434\\u043e\\u043d\\u043e\\u0441\\u043d\\u043e\\u0433\\u043e \\u0433\\u043e\\u0440\\u0438\\u0437\\u043e\\u043d\\u0442\\u0430 \\u043f\\u0435\\u043b\\u0435\\u043e\\u0433\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0441\\u044f \\u0431\\u043e\\u043b\\u0435\\u0435 66 \\u043c\\u043b\\u043d \\u043b\\u0435\\u0442 \\u0442\\u043e\\u043c\\u0443 \\u043d\\u0430\\u0437\\u0430\\u0434.<\\/p>\",\"html_content_ua_2\":\"<p>\\u0412\\u043e\\u0434\\u0430 \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438\\u0437 \\u0432\\u043e\\u0434\\u043e\\u043d\\u043e\\u0441\\u043d\\u043e\\u0433\\u043e \\u0433\\u043e\\u0440\\u0438\\u0437\\u043e\\u043d\\u0442\\u0430 \\u043f\\u0435\\u043b\\u0435\\u043e\\u0433\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0441\\u044f \\u0431\\u043e\\u043b\\u0435\\u0435 66 \\u043c\\u043b\\u043d \\u043b\\u0435\\u0442 \\u0442\\u043e\\u043c\\u0443 \\u043d\\u0430\\u0437\\u0430\\u0434.<\\/p>\",\"html_content_en_2\":\"<p>\\u0412\\u043e\\u0434\\u0430 \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438\\u0437 \\u0432\\u043e\\u0434\\u043e\\u043d\\u043e\\u0441\\u043d\\u043e\\u0433\\u043e \\u0433\\u043e\\u0440\\u0438\\u0437\\u043e\\u043d\\u0442\\u0430 \\u043f\\u0435\\u043b\\u0435\\u043e\\u0433\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0441\\u044f \\u0431\\u043e\\u043b\\u0435\\u0435 66 \\u043c\\u043b\\u043d \\u043b\\u0435\\u0442 \\u0442\\u043e\\u043c\\u0443 \\u043d\\u0430\\u0437\\u0430\\u0434.<\\/p>\",\"class_2\":\"animateVaweClass novomoskovsk-main__discription\",\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"53\",\"class\":null,\"spaces\":\"0\",\"animate\":null}', 0, 0, 0, 0, 7, '2019-05-21 09:32:59', '2019-06-05 14:32:47'),
(54, 15, 'template', 'image_text', '{\"image_text_ru\":\"<p>\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043c\\u0435\\u0441\\u0442\\u0435 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438, \\u0431\\u0435\\u0437 \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e-\\u043b\\u0438\\u0431\\u043e \\u0432\\u043c\\u0435\\u0448\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430. \\u042d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u043e\\u0441\\u043d\\u043e\\u0432\\u0435\\u043d\\u0438\\u0435 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u0432\\u043e\\u0434\\u044b \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f \\u043a\\u0440\\u044b\\u0448\\u043a\\u0438.<\\/p>\",\"image_text_ua\":\"<p>\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043c\\u0435\\u0441\\u0442\\u0435 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438, \\u0431\\u0435\\u0437 \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e-\\u043b\\u0438\\u0431\\u043e \\u0432\\u043c\\u0435\\u0448\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430. \\u042d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u043e\\u0441\\u043d\\u043e\\u0432\\u0435\\u043d\\u0438\\u0435 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u0432\\u043e\\u0434\\u044b \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f \\u043a\\u0440\\u044b\\u0448\\u043a\\u0438.<\\/p>\",\"image_text_en\":\"<p>\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043c\\u0435\\u0441\\u0442\\u0435 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438, \\u0431\\u0435\\u0437 \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e-\\u043b\\u0438\\u0431\\u043e \\u0432\\u043c\\u0435\\u0448\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430. \\u042d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u043e\\u0441\\u043d\\u043e\\u0432\\u0435\\u043d\\u0438\\u0435 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u0432\\u043e\\u0434\\u044b \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f \\u043a\\u0440\\u044b\\u0448\\u043a\\u0438.<\\/p>\",\"image\":\"blocks\\/a1zAeiPCEotGkeKeQD2OMSprdohgiGtAQweemAy8.png\",\"image_align\":\"left\",\"width\":\"100\",\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"54\",\"class\":null}', 0, 0, 0, 0, 11, '2019-05-21 10:19:34', '2019-06-07 11:36:36'),
(55, 15, 'template', 'text', '{\"text_ru\":\"<p>\\u041f\\u0440\\u0435\\u0434\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0435 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0443\\u044e \\u0430\\u0442\\u0442\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0435\\u0440\\u0441\\u0442\\u0432\\u043e\\u043c \\u0437\\u0434\\u0440\\u0430\\u0432\\u043e\\u043e\\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u044f \\u043b\\u0430\\u0431\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u0438\\u044e (\\u0441\\u0432\\u0438\\u0434\\u0435\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u043e \\u2116 \\u041f\\u0427 - 198\\/2011), \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442 \\u043a\\u0440\\u0443\\u0433\\u043b\\u043e\\u0441\\u0443\\u0442\\u043e\\u0447\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043d\\u0442\\u0440\\u043e\\u043b\\u044c \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u0430 \\u0432\\u043e\\u0434\\u044b.<\\/p>\",\"text_ua\":\"<p>\\u041f\\u0440\\u0435\\u0434\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0435 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0443\\u044e \\u0430\\u0442\\u0442\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0435\\u0440\\u0441\\u0442\\u0432\\u043e\\u043c \\u0437\\u0434\\u0440\\u0430\\u0432\\u043e\\u043e\\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u044f \\u043b\\u0430\\u0431\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u0438\\u044e (\\u0441\\u0432\\u0438\\u0434\\u0435\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u043e \\u2116 \\u041f\\u0427 - 198\\/2011), \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442 \\u043a\\u0440\\u0443\\u0433\\u043b\\u043e\\u0441\\u0443\\u0442\\u043e\\u0447\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043d\\u0442\\u0440\\u043e\\u043b\\u044c \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u0430 \\u0432\\u043e\\u0434\\u044b.<\\/p>\",\"text_en\":\"<p>\\u041f\\u0440\\u0435\\u0434\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0435 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0443\\u044e \\u0430\\u0442\\u0442\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0435\\u0440\\u0441\\u0442\\u0432\\u043e\\u043c \\u0437\\u0434\\u0440\\u0430\\u0432\\u043e\\u043e\\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u044f \\u043b\\u0430\\u0431\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u0438\\u044e (\\u0441\\u0432\\u0438\\u0434\\u0435\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u043e \\u2116 \\u041f\\u0427 - 198\\/2011), \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442 \\u043a\\u0440\\u0443\\u0433\\u043b\\u043e\\u0441\\u0443\\u0442\\u043e\\u0447\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043d\\u0442\\u0440\\u043e\\u043b\\u044c \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u0430 \\u0432\\u043e\\u0434\\u044b.<\\/p>\",\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"55\",\"class\":\"animateVaweClass novomoskovsk-main__discription\"}', 0, 0, 0, 0, 12, '2019-05-21 10:37:11', '2019-06-05 14:33:35'),
(56, 15, 'template', 'image_text', '{\"image_text_ru\":\"<p>\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043c\\u0435\\u0441\\u0442\\u0435 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438, \\u0431\\u0435\\u0437 \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e-\\u043b\\u0438\\u0431\\u043e \\u0432\\u043c\\u0435\\u0448\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430. \\u042d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u043e\\u0441\\u043d\\u043e\\u0432\\u0435\\u043d\\u0438\\u0435 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u0432\\u043e\\u0434\\u044b \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f \\u043a\\u0440\\u044b\\u0448\\u043a\\u0438.<\\/p>\",\"image_text_ua\":\"<p>\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043c\\u0435\\u0441\\u0442\\u0435 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438, \\u0431\\u0435\\u0437 \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e-\\u043b\\u0438\\u0431\\u043e \\u0432\\u043c\\u0435\\u0448\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430. \\u042d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u043e\\u0441\\u043d\\u043e\\u0432\\u0435\\u043d\\u0438\\u0435 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u0432\\u043e\\u0434\\u044b \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f \\u043a\\u0440\\u044b\\u0448\\u043a\\u0438.<\\/p>\",\"image_text_en\":\"<p>\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0443\\u044e \\u0432\\u043e\\u0434\\u0443 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043c\\u0435\\u0441\\u0442\\u0435 \\u0434\\u043e\\u0431\\u044b\\u0447\\u0438, \\u0431\\u0435\\u0437 \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e-\\u043b\\u0438\\u0431\\u043e \\u0432\\u043c\\u0435\\u0448\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430. \\u042d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u043e\\u0441\\u043d\\u043e\\u0432\\u0435\\u043d\\u0438\\u0435 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u0432\\u043e\\u0434\\u044b \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f \\u043a\\u0440\\u044b\\u0448\\u043a\\u0438.<\\/p>\",\"image\":\"blocks\\/ifOp0BtH9gr6eL0PKpVwnOZfzdqmfJLW509uMiqg.png\",\"image_align\":\"right\",\"width\":\"100\",\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"56\",\"class\":null}', 0, 0, 0, 0, 8, '2019-05-21 10:41:00', '2019-06-05 14:33:05'),
(57, 16, 'template', 'heading', '{\"text_ru\":\"\\u0411\\u0435\\u0437\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438\",\"text_ua\":\"\\u0411\\u0435\\u0437\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438\",\"text_en\":\"\\u0411\\u0435\\u0437\\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438\",\"link\":null,\"tag\":\"h1\",\"align\":\"left\",\"background\":\"\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTDemi\",\"animation\":\"bounceInUp\",\"margin\":null,\"padding\":null,\"id\":\"57\",\"class\":null}', 0, 0, 0, 0, 1, '2019-05-21 11:12:39', '2019-07-15 10:03:37'),
(58, 16, 'template', 'heading', '{\"text_ru\":\"\\u0417\\u0430\\u0432\\u043e\\u0434 \\u00ab\\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0411\\u0435\\u0432\\u0435\\u0440\\u0438\\u0434\\u0436\\u00bb\",\"text_ua\":\"\\u0417\\u0430\\u0432\\u043e\\u0434 \\u00ab\\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0411\\u0435\\u0432\\u0435\\u0440\\u0438\\u0434\\u0436\\u00bb\",\"text_en\":\"Plant \\\"Bon Boisson Beveridge\\\"\",\"link\":null,\"tag\":\"h2\",\"align\":\"left\",\"background\":\"\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTDemi\",\"animation\":\"bounceInUp\",\"margin\":null,\"padding\":null,\"id\":\"58\",\"class\":null}', 0, 0, 0, 0, 2, '2019-05-21 11:15:09', '2019-07-15 10:05:34');
INSERT INTO `page_blocks` (`id`, `page_id`, `type`, `path`, `data`, `is_hidden`, `is_minimized`, `is_delete_denied`, `cache_ttl`, `order`, `created_at`, `updated_at`) VALUES
(59, 16, 'template', 'content_two_columns', '{\"html_content_ru_1\":null,\"html_content_ua_1\":null,\"html_content_en_1\":null,\"class_1\":null,\"html_content_ru_2\":\"<p>\\u0417\\u0430\\u0432\\u043e\\u0434, \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0432\\u0441\\u0435 \\u0441\\u043b\\u0430\\u0434\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438, \\u043a\\u0432\\u0430\\u0441 \\u0438 \\u0434\\u0435\\u0442\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430, \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d \\u0432 &laquo;\\u0441\\u0435\\u0440\\u0434\\u0446\\u0435&raquo; \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b - \\u0433. \\u0427\\u0435\\u0440\\u043a\\u0430\\u0441\\u0441\\u0430\\u0445<\\/p>\",\"html_content_ua_2\":\"<p>\\u0417\\u0430\\u0432\\u043e\\u0434, \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0432\\u0441\\u0435 \\u0441\\u043b\\u0430\\u0434\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438, \\u043a\\u0432\\u0430\\u0441 \\u0438 \\u0434\\u0435\\u0442\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430, \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d \\u0432 &laquo;\\u0441\\u0435\\u0440\\u0434\\u0446\\u0435&raquo; \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b - \\u0433. \\u0427\\u0435\\u0440\\u043a\\u0430\\u0441\\u0441\\u0430\\u0445<\\/p>\",\"html_content_en_2\":\"<p>\\u0417\\u0430\\u0432\\u043e\\u0434, \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0432\\u0441\\u0435 \\u0441\\u043b\\u0430\\u0434\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438, \\u043a\\u0432\\u0430\\u0441 \\u0438 \\u0434\\u0435\\u0442\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430, \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d \\u0432 &laquo;\\u0441\\u0435\\u0440\\u0434\\u0446\\u0435&raquo; \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b - \\u0433. \\u0427\\u0435\\u0440\\u043a\\u0430\\u0441\\u0441\\u0430\\u0445<\\/p>\",\"class_2\":null,\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"59\",\"class\":\"cherkasy-main__discription\",\"spaces\":\"0\",\"animate\":null}', 0, 0, 0, 0, 3, '2019-05-21 11:16:58', '2019-07-15 10:07:04'),
(60, 16, 'template', 'counter', '{\"number_1\":\"3\",\"text_after_ru_1\":null,\"text_after_ua_1\":null,\"text_after_en_1\":null,\"text_below_ru_1\":\"\\u043b\\u0438\\u043d\\u0438\\u0438 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e 24\\/7\",\"text_below_ua_1\":\"\\u043b\\u0438\\u043d\\u0438\\u0438 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e 24\\/7\",\"text_below_en_1\":\"\\u043b\\u0438\\u043d\\u0438\\u0438 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e 24\\/7\",\"br_1\":null,\"number_2\":\"500\",\"text_after_ru_2\":\"\\u0442\\u044b\\u0441\",\"text_after_ua_2\":\"\\u0442\\u044b\\u0441\",\"text_after_en_2\":\"\\u0442\\u044b\\u0441\",\"text_below_ru_2\":\"\\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e\",\"text_below_ua_2\":\"\\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e\",\"text_below_en_2\":\"\\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e\",\"br_2\":null,\"number_3\":\"0\",\"text_after_ru_3\":\"\\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\",\"text_after_ua_3\":\"\\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\",\"text_after_en_3\":\"\\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\",\"text_below_ru_3\":\"\\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u043c \\u0432 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u0435 \\u0435\\u0433\\u043e \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"text_below_ua_3\":\"\\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u043c \\u0432 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u0435 \\u0435\\u0433\\u043e \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"text_below_en_3\":\"\\u0441\\u043e\\u043f\\u0440\\u0438\\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u043c \\u0432 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u0435 \\u0435\\u0433\\u043e \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"br_3\":null,\"number_4\":null,\"text_after_ru_4\":null,\"text_after_ua_4\":null,\"text_after_en_4\":null,\"text_below_ru_4\":null,\"text_below_ua_4\":null,\"text_below_en_4\":null,\"br_4\":null,\"number_5\":null,\"text_after_ru_5\":null,\"text_after_ua_5\":null,\"text_after_en_5\":null,\"text_below_ru_5\":null,\"text_below_ua_5\":null,\"text_below_en_5\":null,\"br_5\":null,\"number_6\":null,\"text_after_ru_6\":null,\"text_after_ua_6\":null,\"text_after_en_6\":null,\"text_below_ru_6\":null,\"text_below_ua_6\":null,\"text_below_en_6\":null,\"br_6\":null,\"animation\":\"bounceInUp\",\"id\":\"60\",\"class\":\"numLeft\"}', 0, 0, 0, 0, 4, '2019-05-21 11:19:19', '2019-07-15 10:09:25'),
(61, 16, 'template', 'video', '{\"title_ru\":null,\"title_ua\":null,\"title_en\":null,\"link\":\"http:\\/\\/www.youtube.com\\/embed\\/fk2G9DKsIDU\",\"width\":\"100\",\"aspect\":\"0\",\"align\":\"left\",\"animation\":\"bounceInUp\",\"id\":\"61\",\"class\":null}', 0, 0, 0, 0, 5, '2019-05-21 11:22:14', '2019-06-06 08:26:28'),
(62, 16, 'template', 'text', '{\"text_ru\":\"<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0430 - \\u0435\\u0433\\u043e \\u0432\\u043e\\u0434\\u0430. \\u0412 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435 \\u0432\\u0441\\u0435\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0441\\u044f \\u0430\\u0440\\u0442\\u0435\\u0437\\u0438\\u0430\\u043d\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0438\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0438\\u0437 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0441\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d. \\u0412\\u0441\\u044f \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u0443 \\u0441 \\u0446\\u0435\\u043b\\u044c\\u044e \\u0435\\u0435 \\u043e\\u0447\\u0438\\u0441\\u0442\\u043a\\u0438 \\u0438 \\u0441\\u043c\\u044f\\u0433\\u0447\\u0435\\u043d\\u0438\\u044f.<\\/p>\",\"text_ua\":\"<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0430 - \\u0435\\u0433\\u043e \\u0432\\u043e\\u0434\\u0430. \\u0412 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435 \\u0432\\u0441\\u0435\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0441\\u044f \\u0430\\u0440\\u0442\\u0435\\u0437\\u0438\\u0430\\u043d\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0438\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0438\\u0437 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0441\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d. \\u0412\\u0441\\u044f \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u0443 \\u0441 \\u0446\\u0435\\u043b\\u044c\\u044e \\u0435\\u0435 \\u043e\\u0447\\u0438\\u0441\\u0442\\u043a\\u0438 \\u0438 \\u0441\\u043c\\u044f\\u0433\\u0447\\u0435\\u043d\\u0438\\u044f.<\\/p>\",\"text_en\":\"<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0430 - \\u0435\\u0433\\u043e \\u0432\\u043e\\u0434\\u0430. \\u0412 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435 \\u0432\\u0441\\u0435\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0441\\u044f \\u0430\\u0440\\u0442\\u0435\\u0437\\u0438\\u0430\\u043d\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0438\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0438\\u0437 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0441\\u043a\\u0432\\u0430\\u0436\\u0438\\u043d. \\u0412\\u0441\\u044f \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u0443 \\u0441 \\u0446\\u0435\\u043b\\u044c\\u044e \\u0435\\u0435 \\u043e\\u0447\\u0438\\u0441\\u0442\\u043a\\u0438 \\u0438 \\u0441\\u043c\\u044f\\u0433\\u0447\\u0435\\u043d\\u0438\\u044f.<\\/p>\",\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"62\",\"class\":\"animateVaweClass novomoskovsk-main__discription\"}', 0, 0, 0, 0, 6, '2019-05-21 11:28:45', '2019-07-15 10:11:23'),
(63, 16, 'template', 'text', '{\"text_ru\":\"<p>\\u0421\\u0430\\u043c\\u0430\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u043b\\u0438\\u043d\\u0438\\u044f \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u0442\\u044c \\u0434\\u043e 20 \\u0442\\u044b\\u0441 \\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u0432 \\u0447\\u0430\\u0441 &ndash; \\u0431\\u043e\\u043b\\u0435\\u0435 150 \\u043c\\u043b\\u043d \\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u0432 \\u0433\\u043e\\u0434<\\/p>\",\"text_ua\":\"<p>\\u0421\\u0430\\u043c\\u0430\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u043b\\u0438\\u043d\\u0438\\u044f \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u0442\\u044c \\u0434\\u043e 20 \\u0442\\u044b\\u0441 \\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u0432 \\u0447\\u0430\\u0441 &ndash; \\u0431\\u043e\\u043b\\u0435\\u0435 150 \\u043c\\u043b\\u043d \\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u0432 \\u0433\\u043e\\u0434<\\/p>\",\"text_en\":\"<p>\\u0421\\u0430\\u043c\\u0430\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u043b\\u0438\\u043d\\u0438\\u044f \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u0442\\u044c \\u0434\\u043e 20 \\u0442\\u044b\\u0441 \\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u0432 \\u0447\\u0430\\u0441 &ndash; \\u0431\\u043e\\u043b\\u0435\\u0435 150 \\u043c\\u043b\\u043d \\u0431\\u0443\\u0442\\u044b\\u043b\\u043e\\u043a \\u0432 \\u0433\\u043e\\u0434<\\/p>\",\"margin\":\"0 0 90px 0\",\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"63\",\"class\":null}', 0, 0, 0, 0, 9, '2019-05-21 11:30:05', '2019-06-05 14:39:45'),
(64, 16, 'template', 'image_text', '{\"image_text_ru\":\"<p>\\u0412\\u0441\\u0435 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b \\u0430\\u0432\\u0442\\u043e\\u043c\\u0430\\u0442\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u044b \\u0438 \\u043f\\u043e\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u044b \\u043f\\u043e \\u043c\\u0435\\u0436\\u0434\\u0443\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u044b\\u043c \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u0430\\u043c IFS, \\u0447\\u0442\\u043e \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0430 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0430 \\u0432 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u0435 \\u0435\\u0433\\u043e \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0430.<\\/p>\",\"image_text_ua\":\"<p>\\u0412\\u0441\\u0435 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b \\u0430\\u0432\\u0442\\u043e\\u043c\\u0430\\u0442\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u044b \\u0438 \\u043f\\u043e\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u044b \\u043f\\u043e \\u043c\\u0435\\u0436\\u0434\\u0443\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u044b\\u043c \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u0430\\u043c IFS, \\u0447\\u0442\\u043e \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0430 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0430 \\u0432 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u0435 \\u0435\\u0433\\u043e \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0430.<\\/p>\",\"image_text_en\":\"<p>\\u0412\\u0441\\u0435 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b \\u0430\\u0432\\u0442\\u043e\\u043c\\u0430\\u0442\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u044b \\u0438 \\u043f\\u043e\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u044b \\u043f\\u043e \\u043c\\u0435\\u0436\\u0434\\u0443\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u044b\\u043c \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u0430\\u043c IFS, \\u0447\\u0442\\u043e \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0430 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430 \\u0438 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0430 \\u0432 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u0435 \\u0435\\u0433\\u043e \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0430.<\\/p>\",\"image\":\"blocks\\/xSnRxNFxDIKnGJjc0BZQw6AZrwOQySRiPKlyFg2d.png\",\"image_align\":\"right\",\"width\":\"100\",\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"64\",\"class\":null}', 0, 0, 0, 0, 10, '2019-05-21 11:31:37', '2019-06-05 14:39:59'),
(65, 16, 'template', 'text', '{\"text_ru\":\"<p>\\u0412\\u0441\\u0435 \\u0430\\u0440\\u043e\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0432\\u0435\\u0449\\u0435\\u0441\\u0442\\u0432\\u0430, \\u044d\\u043a\\u0441\\u0442\\u0440\\u0430\\u043a\\u0442\\u044b \\u0442\\u0440\\u0430\\u0432 \\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432. \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0437\\u0430\\u043a\\u0443\\u043f\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430\\u0445 \\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0421\\u043e\\u044e\\u0437\\u0430.<\\/p>\",\"text_ua\":\"<p>\\u0412\\u0441\\u0435 \\u0430\\u0440\\u043e\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0432\\u0435\\u0449\\u0435\\u0441\\u0442\\u0432\\u0430, \\u044d\\u043a\\u0441\\u0442\\u0440\\u0430\\u043a\\u0442\\u044b \\u0442\\u0440\\u0430\\u0432 \\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432. \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0437\\u0430\\u043a\\u0443\\u043f\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430\\u0445 \\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0421\\u043e\\u044e\\u0437\\u0430.<\\/p>\",\"text_en\":\"<p>\\u0412\\u0441\\u0435 \\u0430\\u0440\\u043e\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0432\\u0435\\u0449\\u0435\\u0441\\u0442\\u0432\\u0430, \\u044d\\u043a\\u0441\\u0442\\u0440\\u0430\\u043a\\u0442\\u044b \\u0442\\u0440\\u0430\\u0432 \\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432. \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0437\\u0430\\u043a\\u0443\\u043f\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430\\u0445 \\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0421\\u043e\\u044e\\u0437\\u0430.<\\/p>\",\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"65\",\"class\":\"animateVaweClass novomoskovsk-main__discription\"}', 0, 0, 0, 0, 11, '2019-05-21 11:34:19', '2019-06-05 14:40:13'),
(67, 10, 'template', 'counter', '{\"number_1\":\"20\",\"text_after_ru_1\":null,\"text_after_ua_1\":null,\"text_after_en_1\":null,\"text_below_ru_1\":\"\\u043b\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435\",\"text_below_ua_1\":\"\\u043b\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435\",\"text_below_en_1\":\"\\u043b\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435\",\"br_1\":null,\"number_2\":\"1.6K\",\"text_after_ru_2\":null,\"text_after_ua_2\":null,\"text_after_en_2\":null,\"text_below_ru_2\":\"\\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432\",\"text_below_ua_2\":\"\\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432\",\"text_below_en_2\":\"\\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432\",\"br_2\":null,\"number_3\":\"47\",\"text_after_ru_3\":null,\"text_after_ua_3\":null,\"text_after_en_3\":null,\"text_below_ru_3\":\"\\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\",\"text_below_ua_3\":\"\\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\",\"text_below_en_3\":\"\\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\",\"br_3\":null,\"number_4\":\"50K\",\"text_after_ru_4\":null,\"text_after_ua_4\":null,\"text_after_en_4\":null,\"text_below_ru_4\":\"\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432\",\"text_below_ua_4\":\"\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432\",\"text_below_en_4\":\"\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432\",\"br_4\":null,\"number_5\":\"2\",\"text_after_ru_5\":null,\"text_after_ua_5\":null,\"text_after_en_5\":null,\"text_below_ru_5\":\"\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430\",\"text_below_ua_5\":\"\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430\",\"text_below_en_5\":\"\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430\",\"br_5\":null,\"number_6\":\"10\",\"text_after_ru_6\":null,\"text_after_ua_6\":null,\"text_after_en_6\":null,\"text_below_ru_6\":\"\\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0440\\u043e\\u043a\",\"text_below_ua_6\":\"\\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0440\\u043e\\u043a\",\"text_below_en_6\":\"\\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0440\\u043e\\u043a\",\"br_6\":null,\"animation\":\"bounceInUp\",\"id\":\"67\",\"class\":null}', 0, 1, 0, 0, 3, '2019-05-21 11:52:36', '2019-07-18 13:55:07'),
(68, 10, 'template', 'heading', '{\"text_ru\":\"\\u0426\\u0438\\u0444\\u0440\\u044b\",\"text_ua\":\"\\u0426\\u0438\\u0444\\u0440\\u044b\",\"text_en\":\"\\u0426\\u0438\\u0444\\u0440\\u044b\",\"link\":null,\"tag\":\"h1\",\"align\":\"center\",\"background\":\"\",\"font_size\":null,\"line_height\":null,\"font\":\"FuturaPTDemi\",\"animation\":\"bounceInUp\",\"margin\":null,\"padding\":null,\"id\":\"68\",\"class\":\"h1-third-section\"}', 0, 0, 0, 0, 2, '2019-05-21 11:55:02', '2019-08-14 19:28:40'),
(69, 10, 'template', 'button', '{\"text_ru\":\"\\u041e \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\",\"text_ua\":\"\\u041e \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\",\"text_en\":\"\\u041e \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\",\"link\":\"\\/about\",\"align\":\"left\",\"animation\":\"none\",\"id\":\"id\",\"class\":null}', 0, 1, 0, 0, 4, '2019-05-22 05:07:15', '2019-07-18 13:54:43'),
(70, 10, 'template', 'banners_masonry', '{\"banner_1\":\"blocks\\/2l7NWptSjKC5AvS8LpBhFGe0yYMXPDNB4vrlghKp.png\",\"banner_2\":\"blocks\\/a1ptOjwuxL7P1ufUtCwSX7Wlb6q5UQoeRiooSFUU.jpeg\",\"banner_3\":\"blocks\\/DZNVFdcdHBFXTIwPpAGg8kZD7tjqjdWWWN2zwE6c.png\",\"title_ru\":\"\\u041d\\u043e\\u0432\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b \\u043e\\u0442  <span class=\\\"ssp2\\\">\\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0411\\u0435\\u0432\\u0435\\u0440\\u0438\\u0434\\u0436<\\/span>\",\"title_ua\":\"\\u041d\\u043e\\u0432\\u0456 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0438 \\u0432\\u0456\\u0434 <span class = \\\"ssp2\\\">\\u0411\\u043e\\u043d \\u0411\\u0443\\u0430\\u0441\\u0441\\u043e\\u043d \\u0411\\u0435\\u0432\\u0435\\u0440\\u0438\\u0434\\u0436<\\/span>\",\"title_en\":\"New Products From <span class = \\\"ssp2\\\">Bon Boisson Beverage<\\/span>\",\"animation\":\"bounceInUp\",\"margin\":null,\"padding\":null,\"id\":\"70\",\"class\":null}', 0, 0, 0, 0, 1, '2019-05-22 08:22:16', '2019-08-14 19:21:23'),
(71, 10, 'template', 'media_grid', '{\"heading_ru\":\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f\",\"heading_ua\":\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f\",\"heading_en\":\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f\",\"url_1\":\"mineral-naya-voda\",\"image_1\":\"blocks\\/fYHRfYDSzOrPVKR5dMertTauQ0MOtifpHcp3n2a7.png\",\"title_ru_1\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"title_ua_1\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"title_en_1\":\"\\u041c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430\",\"text_ru_1\":\"\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043a\\u0443\\u0440\\u043e\\u0440\\u0442\\u043d\\u043e\\u0439 \\u0437\\u043e\\u043d\\u0435 \\u0438 \\u0443\\u0436\\u0435 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 50 \\u043b\\u0435\\u0442 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043d\\u0435\\u0438\\u0437\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\",\"text_ua_1\":\"\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043a\\u0443\\u0440\\u043e\\u0440\\u0442\\u043d\\u043e\\u0439 \\u0437\\u043e\\u043d\\u0435 \\u0438 \\u0443\\u0436\\u0435 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 50 \\u043b\\u0435\\u0442 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043d\\u0435\\u0438\\u0437\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\",\"text_en_1\":\"\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043a\\u0443\\u0440\\u043e\\u0440\\u0442\\u043d\\u043e\\u0439 \\u0437\\u043e\\u043d\\u0435 \\u0438 \\u0443\\u0436\\u0435 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 50 \\u043b\\u0435\\u0442 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043d\\u0435\\u0438\\u0437\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\",\"br_1\":null,\"url_2\":\"sokosoderzhashie-napitki-bon-buasson\",\"image_2\":\"blocks\\/fZDbA07NqSJOg8lVrM6luuikZs0KmU7qn4lIjNi6.png\",\"title_ru_2\":\"\\u0421\\u043e\\u043a\\u043e\\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0449\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438\",\"title_ua_2\":\"\\u0421\\u043e\\u043a\\u043e\\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0449\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438\",\"title_en_2\":\"\\u0421\\u043e\\u043a\\u043e\\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0449\\u0438\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438\",\"text_ru_2\":\"\\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043d\\u0430 \\u0430\\u0440\\u0442\\u0435\\u0437\\u0438\\u0430\\u043d\\u0441\\u043a\\u043e\\u0439 \\u0432\\u043e\\u0434\\u0435 \\u0438 \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0440\\u043e\\u043f\\u0430\\u0445  \\u0441 \\u0434\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u043a\\u0430  - \\u0440\\u0430\\u0434\\u0443\\u044e\\u0442 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0438 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0432\\u043a\\u0443\\u0441\\u0430\\u043c\\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432\",\"text_ua_2\":\"\\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043d\\u0430 \\u0430\\u0440\\u0442\\u0435\\u0437\\u0438\\u0430\\u043d\\u0441\\u043a\\u043e\\u0439 \\u0432\\u043e\\u0434\\u0435 \\u0438 \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0440\\u043e\\u043f\\u0430\\u0445  \\u0441 \\u0434\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u043a\\u0430  - \\u0440\\u0430\\u0434\\u0443\\u044e\\u0442 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0438 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0432\\u043a\\u0443\\u0441\\u0430\\u043c\\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432\",\"text_en_2\":\"\\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043d\\u0430 \\u0430\\u0440\\u0442\\u0435\\u0437\\u0438\\u0430\\u043d\\u0441\\u043a\\u043e\\u0439 \\u0432\\u043e\\u0434\\u0435 \\u0438 \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0440\\u043e\\u043f\\u0430\\u0445  \\u0441 \\u0434\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u043a\\u0430  - \\u0440\\u0430\\u0434\\u0443\\u044e\\u0442 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0438 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0432\\u043a\\u0443\\u0441\\u0430\\u043c\\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432\",\"br_2\":null,\"url_3\":\"detskaya-voda-karapuz\",\"image_3\":\"blocks\\/xA8MF52wh94IHabnc5Ntx5r6zGONeqXhggHf4Q3r.png\",\"title_ru_3\":\"\\u0414\\u0435\\u0442\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u041a\\u0430\\u0440\\u0430\\u043f\\u0443\\u0437\",\"title_ua_3\":\"\\u0414\\u0435\\u0442\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u041a\\u0430\\u0440\\u0430\\u043f\\u0443\\u0437\",\"title_en_3\":\"\\u0414\\u0435\\u0442\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u041a\\u0430\\u0440\\u0430\\u043f\\u0443\\u0437\",\"text_ru_3\":\"\\u0412\\u043e\\u0434\\u0430 \\u0434\\u043b\\u044f \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043c\\u0430\\u043b\\u0435\\u043d\\u044c\\u043a\\u0438\\u0445 \\u0441 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0445 \\u0434\\u043d\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u0411\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u0430 \\u0438 \\u043f\\u043e\\u043b\\u0435\\u0437\\u043d\\u0430, \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0434\\u043b\\u044f \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u0442\\u0441\\u043a\\u043e\\u0433\\u043e \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f\",\"text_ua_3\":\"\\u0412\\u043e\\u0434\\u0430 \\u0434\\u043b\\u044f \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043c\\u0430\\u043b\\u0435\\u043d\\u044c\\u043a\\u0438\\u0445 \\u0441 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0445 \\u0434\\u043d\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u0411\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u0430 \\u0438 \\u043f\\u043e\\u043b\\u0435\\u0437\\u043d\\u0430, \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0434\\u043b\\u044f \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u0442\\u0441\\u043a\\u043e\\u0433\\u043e \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f\",\"text_en_3\":\"\\u0412\\u043e\\u0434\\u0430 \\u0434\\u043b\\u044f \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043c\\u0430\\u043b\\u0435\\u043d\\u044c\\u043a\\u0438\\u0445 \\u0441 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0445 \\u0434\\u043d\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u0411\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u0430 \\u0438 \\u043f\\u043e\\u043b\\u0435\\u0437\\u043d\\u0430, \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0434\\u043b\\u044f \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u0442\\u0441\\u043a\\u043e\\u0433\\u043e \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f\",\"br_3\":null,\"url_4\":\"hapitok-black\\/ice\",\"image_4\":\"blocks\\/7oN1U90s1A6BbbHlVlZV9sra7gXnVyVDngNGKFkI.png\",\"title_ru_4\":\"\\u042d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043e\\u043a Black\",\"title_ua_4\":\"\\u042d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043e\\u043a Black\",\"title_en_4\":\"\\u042d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043e\\u043a Black\",\"text_ru_4\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043e\\u043a - \\u21161 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b. \\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u043d\\u0438\\u0437\\u0438\\u0440\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b \\u0438 \\u0441\\u043b\\u0430\\u0432\\u0438\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0438\\u043c \\u0432\\u043a\\u0443\\u0441\\u043e\\u043c\",\"text_ua_4\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043e\\u043a - \\u21161 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b. \\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u043d\\u0438\\u0437\\u0438\\u0440\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b \\u0438 \\u0441\\u043b\\u0430\\u0432\\u0438\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0438\\u043c \\u0432\\u043a\\u0443\\u0441\\u043e\\u043c\",\"text_en_4\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043e\\u043a - \\u21161 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b. \\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u043d\\u0438\\u0437\\u0438\\u0440\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b \\u0438 \\u0441\\u043b\\u0430\\u0432\\u0438\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0438\\u043c \\u0432\\u043a\\u0443\\u0441\\u043e\\u043c\",\"br_4\":null,\"url_5\":\"klassicheskie-limonady\",\"image_5\":\"blocks\\/IHvKwRePeHjuMon8EYR6Knfkkct6coYg97weND2o.png\",\"title_ru_5\":\"\\u041a\\u043b\\u0430\\u0441\\u0441\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b\",\"title_ua_5\":\"\\u041a\\u043b\\u0430\\u0441\\u0441\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b\",\"title_en_5\":\"\\u041a\\u043b\\u0430\\u0441\\u0441\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b\",\"text_ru_5\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0438 \\u043b\\u0435\\u0433\\u0435\\u043d\\u0434\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0443\\u0436\\u0435 \\u0431\\u043e\\u043b\\u0435\\u0435 20 \\u043b\\u0435\\u0442 \\u0440\\u0430\\u0434\\u0443\\u044e\\u0442 \\u0443\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0442\\u0440\\u0435\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439\",\"text_ua_5\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0438 \\u043b\\u0435\\u0433\\u0435\\u043d\\u0434\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0443\\u0436\\u0435 \\u0431\\u043e\\u043b\\u0435\\u0435 20 \\u043b\\u0435\\u0442 \\u0440\\u0430\\u0434\\u0443\\u044e\\u0442 \\u0443\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0442\\u0440\\u0435\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439\",\"text_en_5\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0438 \\u043b\\u0435\\u0433\\u0435\\u043d\\u0434\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0443\\u0436\\u0435 \\u0431\\u043e\\u043b\\u0435\\u0435 20 \\u043b\\u0435\\u0442 \\u0440\\u0430\\u0434\\u0443\\u044e\\u0442 \\u0443\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0442\\u0440\\u0435\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439\",\"br_5\":null,\"url_6\":\"limonady-bon-limon\",\"image_6\":\"blocks\\/Tm1P6nKE7TzFMr7wUowzkQJl6U3Act0v5SU7Kh3W.png\",\"title_ru_6\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b \\u0411\\u043e\\u043d \\u041b\\u0438\\u043c\\u043e\\u043d\",\"title_ua_6\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b \\u0411\\u043e\\u043d \\u041b\\u0438\\u043c\\u043e\\u043d\",\"title_en_6\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b \\u0411\\u043e\\u043d \\u041b\\u0438\\u043c\\u043e\\u043d\",\"text_ru_6\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b  \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u043c \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u0430\\u043c - \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0430\\u0440\\u043e\\u043c\\u0430\\u0442\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u044b \\u0438 \\u043a\\u0440\\u0430\\u0441\\u0438\\u0442\\u0435\\u043b\\u0438 \\u0438 \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u043e\\u043a \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\",\"text_ua_6\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b  \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u043c \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u0430\\u043c - \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0430\\u0440\\u043e\\u043c\\u0430\\u0442\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u044b \\u0438 \\u043a\\u0440\\u0430\\u0441\\u0438\\u0442\\u0435\\u043b\\u0438 \\u0438 \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u043e\\u043a \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\",\"text_en_6\":\"\\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u044b  \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u043c \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u0430\\u043c - \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0430\\u0440\\u043e\\u043c\\u0430\\u0442\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u044b \\u0438 \\u043a\\u0440\\u0430\\u0441\\u0438\\u0442\\u0435\\u043b\\u0438 \\u0438 \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u043e\\u043a \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\",\"br_6\":null,\"url_7\":\"napitki-chudo-sad\",\"image_7\":\"blocks\\/ijcgmzsK8aPFXtI9zvZ4dg1vYOiGo10jD6BH0Caw.png\",\"title_ru_7\":\"\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u0427\\u0443\\u0434\\u043e-\\u0421\\u0430\\u0434\",\"title_ua_7\":\"\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u0427\\u0443\\u0434\\u043e-\\u0421\\u0430\\u0434\",\"title_en_7\":\"napitki-chudo-sad\",\"text_ru_7\":\"\\u041d\\u0430\\u043f\\u0438\\u0442\\u041d\\u0438\\u0437\\u043a\\u043e\\u043a\\u0430\\u043b\\u043e\\u0440\\u0438\\u0439\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u0441 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u043c\\u0438 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432\\u044b\\u043c\\u0438 \\u0432\\u043a\\u0443\\u0441\\u0430\\u043c\\u0438 \\u0434\\u043b\\u044f \\u0442\\u0435\\u0445, \\u043a\\u0442\\u043e \\u0441\\u043b\\u0435\\u0434\\u0438\\u0442 \\u0437\\u0430 \\u0444\\u0438\\u0433\\u0443\\u0440\\u043e\\u0439\\u043a\\u0438 \\u0427\\u0443\\u0434\\u043e-\\u0421\\u0430\\u0434\",\"text_ua_7\":\"\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u0427\\u0443\\u0434\\u043e-\\u0421\\u0430\\u0434\\u041d\\u0438\\u0437\\u043a\\u043e\\u043a\\u0430\\u043b\\u043e\\u0440\\u0438\\u0439\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u0441 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u043c\\u0438 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432\\u044b\\u043c\\u0438 \\u0432\\u043a\\u0443\\u0441\\u0430\\u043c\\u0438 \\u0434\\u043b\\u044f \\u0442\\u0435\\u0445, \\u043a\\u0442\\u043e \\u0441\\u043b\\u0435\\u0434\\u0438\\u0442 \\u0437\\u0430 \\u0444\\u0438\\u0433\\u0443\\u0440\\u043e\\u0439\",\"text_en_7\":\"\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u0427\\u0443\\u0434\\u043e-\\u0421\\u041d\\u0438\\u0437\\u043a\\u043e\\u043a\\u0430\\u043b\\u043e\\u0440\\u0438\\u0439\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438 \\u0441 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u043c\\u0438 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0444\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432\\u044b\\u043c\\u0438 \\u0432\\u043a\\u0443\\u0441\\u0430\\u043c\\u0438 \\u0434\\u043b\\u044f \\u0442\\u0435\\u0445, \\u043a\\u0442\\u043e \\u0441\\u043b\\u0435\\u0434\\u0438\\u0442 \\u0437\\u0430 \\u0444\\u0438\\u0433\\u0443\\u0440\\u043e\\u0439\\u0434\",\"br_7\":null,\"url_8\":null,\"image_8\":\"blocks\\/tzgxDTZgRTrwhpPyiYQ9qaPuVnz0Ims97ke5Jzji.png\",\"title_ru_8\":\"Bon Boisson    Balance\",\"title_ua_8\":\"Bon Boisson    Balance\",\"title_en_8\":\"Bon Boisson    Balance\",\"text_ru_8\":\"\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0430\\u044f \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u0441 \\u0434\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u043a\\u0430, \\u043e\\u0431\\u043b\\u0430\\u0434\\u0430\\u0435\\u0442 \\u043b\\u0435\\u0433\\u043a\\u0438\\u043c \\u043e\\u0441\\u0432\\u0435\\u0436\\u0430\\u044e\\u0449\\u0438\\u043c \\u0432\\u043a\\u0443\\u0441\\u043e\\u043c \\u0438 \\u043d\\u0435 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u043b\\u0438\\u0448\\u043d\\u0438\\u0445 \\u043a\\u0430\\u043b\\u043e\\u0440\\u0438\\u0439\",\"text_ua_8\":\"bon-boisson-balance\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0430\\u044f \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u0441 \\u0434\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u043a\\u0430, \\u043e\\u0431\\u043b\\u0430\\u0434\\u0430\\u0435\\u0442 \\u043b\\u0435\\u0433\\u043a\\u0438\\u043c \\u043e\\u0441\\u0432\\u0435\\u0436\\u0430\\u044e\\u0449\\u0438\\u043c \\u0432\\u043a\\u0443\\u0441\\u043e\\u043c \\u0438 \\u043d\\u0435 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u043b\\u0438\\u0448\\u043d\\u0438\\u0445 \\u043a\\u0430\\u043b\\u043e\\u0440\\u0438\\u0439\",\"text_en_8\":\"\\u041f\\u0440\\u0438\\u0440\\u043e\\u0434\\u043d\\u0430\\u044f \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0432\\u043e\\u0434\\u0430 \\u0441 \\u0434\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u043a\\u0430, \\u043e\\u0431\\u043b\\u0430\\u0434\\u0430\\u0435\\u0442 \\u043b\\u0435\\u0433\\u043a\\u0438\\u043c \\u043e\\u0441\\u0432\\u0435\\u0436\\u0430\\u044e\\u0449\\u0438\\u043c \\u0432\\u043a\\u0443\\u0441\\u043e\\u043c \\u0438 \\u043d\\u0435 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u043b\\u0438\\u0448\\u043d\\u0438\\u0445 \\u043a\\u0430\\u043b\\u043e\\u0440\\u0438\\u0439\",\"br_8\":null,\"animation\":\"bounceInUp\",\"id\":\"71\",\"class\":null}', 0, 0, 0, 0, 10000, '2019-05-22 10:03:01', '2019-08-14 19:35:22'),
(72, 10, 'template', 'news_grid', '{\"title_ru\":\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"title_ua\":\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"title_en\":\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"total\":\"4\",\"animation\":\"bounceInUp\",\"id\":\"72\",\"class\":null}', 0, 1, 0, 0, 10000, '2019-05-22 11:20:22', '2019-07-09 08:22:43'),
(73, 10, 'template', 'carousel', '{\"image_1\":\"blocks\\/bzdf1Zcu1sRFgmsqNiJdvGTpG5HaKnhZkH3opT2l.jpeg\",\"title_ru_1\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_ua_1\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_en_1\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"br_1\":null,\"image_2\":\"blocks\\/uA9hknea234zWkaTXfLkRj9aJUBt6QJ08wIpdV7p.jpeg\",\"title_ru_2\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_ua_2\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_en_2\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"br_2\":null,\"image_3\":\"blocks\\/dJuQgsT2a5I3jNZlNzkEpywocZ67spe7q23Hx09n.jpeg\",\"title_ru_3\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_ua_3\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_en_3\":null,\"br_3\":null,\"image_4\":\"blocks\\/QD2hHuvdHMRKxC8TZDWBSA9l0pqvAaO0KGaTvs3A.jpeg\",\"title_ru_4\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_ua_4\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_en_4\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"br_4\":null,\"image_5\":\"blocks\\/aT4X1d6j34m0kgDhUHGXEvVx8ipRffDQHEPQVWAq.jpeg\",\"title_ru_5\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_ua_5\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"title_en_5\":\"\\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438\\u043d\\u0433\\u0440\\u0438\\u0434\\u0438\\u0435\\u043d\\u0442\\u044b\",\"br_5\":null,\"animation\":\"bounceInUp\",\"id\":\"73\",\"class\":null}', 0, 0, 0, 0, 10000, '2019-05-22 12:15:50', '2019-06-24 08:00:26');
INSERT INTO `page_blocks` (`id`, `page_id`, `type`, `path`, `data`, `is_hidden`, `is_minimized`, `is_delete_denied`, `cache_ttl`, `order`, `created_at`, `updated_at`) VALUES
(77, 13, 'template', 'masonry', '{\"image_1\":\"blocks\\/5JVvRhlwjZjvWcE4wFkyYjlyRPk89R8ShEQ5Kzmq.png\",\"title_ru_1\":null,\"title_ua_1\":null,\"title_en_1\":null,\"text_ru_1\":null,\"text_ua_1\":null,\"text_en_1\":null,\"element_width_1\":\"1\",\"featured_1\":null,\"br_1\":null,\"image_2\":\"\",\"title_ru_2\":\"\\u0420\\u0435\\u043f\\u0443\\u0442\\u0430\\u0446\\u0438\\u044f \\u043a\\u0430\\u043a \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b\",\"title_ua_2\":\"\\u0420\\u0435\\u043f\\u0443\\u0442\\u0430\\u0446\\u0438\\u044f \\u043a\\u0430\\u043a \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b\",\"title_en_2\":\"REPUTATION AS THE CAPITAL\",\"text_ru_2\":\"\\u041d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 20 \\u043b\\u0435\\u0442. \\u041d\\u0435\\u0442 \\u043d\\u0438\\u0447\\u0435\\u0433\\u043e \\u0432\\u0430\\u0436\\u043d\\u0435\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u044f \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439. \\u041c\\u044b \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u043b\\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0441\\u0442\\u044b\\u0435 \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0430 \\u043a\\u0440\\u0438\\u0437\\u0438\\u0441\\u043e\\u0432 \\u0438 \\u0441\\u043f\\u0430\\u0434\\u043e\\u0432, \\u043d\\u043e \\u043d\\u0435 \\u043f\\u043e\\u0434\\u0434\\u0430\\u043b\\u0438\\u0441\\u044c \\u0438\\u0441\\u043a\\u0443\\u0448\\u0435\\u043d\\u0438\\u044e \\u0443\\u043f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0442\\u044c \\u0438\\u043b\\u0438 \\u0443\\u0434\\u0435\\u0448\\u0435\\u0432\\u0438\\u0442\\u044c \\u043d\\u0430\\u0448 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442. \\u0420\\u0435\\u043f\\u0443\\u0442\\u0430\\u0446\\u0438\\u044f \\u2013 \\u043d\\u0430\\u0448 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0439 \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b \\u0438 \\u043d\\u0430\\u0448\\u0430 \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430.\",\"text_ua_2\":\"\\u041d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 20 \\u043b\\u0435\\u0442. \\u041d\\u0435\\u0442 \\u043d\\u0438\\u0447\\u0435\\u0433\\u043e \\u0432\\u0430\\u0436\\u043d\\u0435\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u044f \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439. \\u041c\\u044b \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u043b\\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0441\\u0442\\u044b\\u0435 \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0430 \\u043a\\u0440\\u0438\\u0437\\u0438\\u0441\\u043e\\u0432 \\u0438 \\u0441\\u043f\\u0430\\u0434\\u043e\\u0432, \\u043d\\u043e \\u043d\\u0435 \\u043f\\u043e\\u0434\\u0434\\u0430\\u043b\\u0438\\u0441\\u044c \\u0438\\u0441\\u043a\\u0443\\u0448\\u0435\\u043d\\u0438\\u044e \\u0443\\u043f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0442\\u044c \\u0438\\u043b\\u0438 \\u0443\\u0434\\u0435\\u0448\\u0435\\u0432\\u0438\\u0442\\u044c \\u043d\\u0430\\u0448 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442. \\u0420\\u0435\\u043f\\u0443\\u0442\\u0430\\u0446\\u0438\\u044f \\u2013 \\u043d\\u0430\\u0448 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0439 \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b \\u0438 \\u043d\\u0430\\u0448\\u0430 \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430.\",\"text_en_2\":\"Our products are represented on the Ukrainian market for over 20 years. Nothing is more important for us than the trust of our customers. We have experienced difficult times of crises and recessions but did not succumb to the temptation to simplify or cheapen our product. Reputation is our core capital and our paradigm.\",\"element_width_2\":\"1\",\"featured_2\":null,\"br_2\":null,\"image_3\":\"blocks\\/v9VJipkpCx1RCkxauFHfrhqcDnnej01WfENfWasV.png\",\"title_ru_3\":null,\"title_ua_3\":null,\"title_en_3\":null,\"text_ru_3\":null,\"text_ua_3\":null,\"text_en_3\":null,\"element_width_3\":\"1\",\"featured_3\":null,\"br_3\":null,\"image_4\":\"\",\"title_ru_4\":\"\\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442 \\u043a\\u0430\\u043a \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0434\\u0435\\u0441\\u0442\\u0432\\u0438\\u0439\",\"title_ua_4\":\"\\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442 \\u043a\\u0430\\u043a \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0434\\u0435\\u0441\\u0442\\u0432\\u0438\\u0439\",\"title_en_4\":\"RESULT AS A SYSTEM OF ACTIONS\",\"text_ru_4\":\"\\u041c\\u044b \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044f\\u0435\\u043c \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0445\\u043e\\u0442\\u0438\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0447, \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0432\\u044b\\u0441\\u0442\\u0440\\u0430\\u0438\\u0432\\u0430\\u0435\\u043c \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b \\u0434\\u043b\\u044f \\u0435\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f. \\u041b\\u044e\\u0431\\u043e\\u0435 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0434\\u043e\\u043b\\u0436\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0430\\u0442\\u044c \\u043d\\u0430\\u0441 \\u043a \\u0446\\u0435\\u043b\\u0438. \\u041f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b \\u0441\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0441\\u0435\\u0431\\u0435 \\u043d\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b.\",\"text_ua_4\":\"\\u041c\\u044b \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044f\\u0435\\u043c \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0445\\u043e\\u0442\\u0438\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0447, \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0432\\u044b\\u0441\\u0442\\u0440\\u0430\\u0438\\u0432\\u0430\\u0435\\u043c \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b \\u0434\\u043b\\u044f \\u0435\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f. \\u041b\\u044e\\u0431\\u043e\\u0435 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0434\\u043e\\u043b\\u0436\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0430\\u0442\\u044c \\u043d\\u0430\\u0441 \\u043a \\u0446\\u0435\\u043b\\u0438. \\u041f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b \\u0441\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0441\\u0435\\u0431\\u0435 \\u043d\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b.\",\"text_en_4\":\"We determine the result we want to achieve and only after that we build the processes to achieve it. Any action should bring us closer to the aim. The processes themselves are not interesting.\",\"element_width_4\":\"1\",\"featured_4\":null,\"br_4\":null,\"image_5\":\"blocks\\/wkeSY2nq0jbMM0ZnhUEJqrUvkpaw5kp9am73Ev0g.png\",\"title_ru_5\":null,\"title_ua_5\":null,\"title_en_5\":null,\"text_ru_5\":null,\"text_ua_5\":null,\"text_en_5\":null,\"element_width_5\":\"2\",\"featured_5\":null,\"br_5\":null,\"image_6\":\"blocks\\/h8E24YcaqF87kLIU7RHPula4KNaOvZ6Qt4ClN3Dq.png\",\"title_ru_6\":null,\"title_ua_6\":null,\"title_en_6\":null,\"text_ru_6\":null,\"text_ua_6\":null,\"text_en_6\":null,\"element_width_6\":\"1\",\"featured_6\":null,\"br_6\":null,\"image_7\":\"\",\"title_ru_7\":\"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u043a\\u0430\\u043a \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\",\"title_ua_7\":\"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u043a\\u0430\\u043a \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\",\"title_en_7\":\"TEAM AS A COMPANY MODEL\",\"text_ru_7\":\"\\u041a\\u0430\\u043a\\u0438\\u043c \\u0431\\u044b \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u043d\\u0435 \\u0431\\u044b\\u043b \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442, \\u043e\\u0434\\u0438\\u043d - \\u043e\\u043d \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0435. \\u041c\\u044b \\u043e\\u043f\\u0438\\u0440\\u0430\\u0435\\u043c\\u0441\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u0438\\u0445 \\u043a\\u043e\\u043b\\u043b\\u0435\\u0433 \\u0438 \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043c\\u0441\\u044f \\u043a \\u043d\\u0430\\u0448\\u0435\\u0439 \\u0446\\u0435\\u043b\\u0438. \\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0441\\u0442\\u0440\\u0435\\u043c\\u0438\\u0442\\u0441\\u044f \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043d\\u0430\\u0438\\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0432\\u043a\\u043b\\u0430\\u0434 \\u0432 \\u043e\\u0431\\u0449\\u0435\\u0435 \\u0434\\u0435\\u043b\\u043e. \\u041c\\u044b \\u0446\\u0435\\u043d\\u0438\\u043c \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0438 \\u0433\\u043e\\u0440\\u0434\\u0438\\u043c\\u0441\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u043e\\u0439\",\"text_ua_7\":\"\\u041a\\u0430\\u043a\\u0438\\u043c \\u0431\\u044b \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u043d\\u0435 \\u0431\\u044b\\u043b \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442, \\u043e\\u0434\\u0438\\u043d - \\u043e\\u043d \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0435. \\u041c\\u044b \\u043e\\u043f\\u0438\\u0440\\u0430\\u0435\\u043c\\u0441\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u0438\\u0445 \\u043a\\u043e\\u043b\\u043b\\u0435\\u0433 \\u0438 \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043c\\u0441\\u044f \\u043a \\u043d\\u0430\\u0448\\u0435\\u0439 \\u0446\\u0435\\u043b\\u0438. \\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0441\\u0442\\u0440\\u0435\\u043c\\u0438\\u0442\\u0441\\u044f \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043d\\u0430\\u0438\\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0432\\u043a\\u043b\\u0430\\u0434 \\u0432 \\u043e\\u0431\\u0449\\u0435\\u0435 \\u0434\\u0435\\u043b\\u043e. \\u041c\\u044b \\u0446\\u0435\\u043d\\u0438\\u043c \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0438 \\u0433\\u043e\\u0440\\u0434\\u0438\\u043c\\u0441\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u043e\\u0439\",\"text_en_7\":\"No matter how professional the specialist is, acting alone he will always lose to the team. We rely on our colleagues and together move towards our aim. Everyone wants to make the best contribution to the joint efforts. We value everyone and we are proud of our team.\",\"element_width_7\":\"1\",\"featured_7\":null,\"br_7\":null,\"image_8\":\"\",\"title_ru_8\":\"\\u041f\\u0435\\u0440\\u0441\\u043f\\u0435\\u043a\\u0442\\u0438\\u0432\\u044b \\u043a\\u0430\\u043a \\u0430\\u043c\\u0431\\u0438\\u0446\\u0438\\u0438\",\"title_ua_8\":\"\\u041f\\u0435\\u0440\\u0441\\u043f\\u0435\\u043a\\u0442\\u0438\\u0432\\u044b \\u043a\\u0430\\u043a \\u0430\\u043c\\u0431\\u0438\\u0446\\u0438\\u0438\",\"title_en_8\":\"PROSPECTS AS AMBITIONS\",\"text_ru_8\":\"\\u041c\\u044b \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043b\\u0438 \\u0437\\u0430 20 \\u043b\\u0435\\u0442. \\u041c\\u044b \\u0441\\u0442\\u0430\\u043b\\u0438 \\u044d\\u0442\\u0430\\u043b\\u043e\\u043d\\u043e\\u043c \\u0432 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043e\\u0432 \\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043b\\u0438\\u0434\\u0435\\u0440\\u043e\\u043c \\u0440\\u044b\\u043d\\u043a\\u0430 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432. \\u041d\\u043e \\u043c\\u044b \\u0436\\u0438\\u0432\\u0435\\u043c \\u0431\\u0443\\u0434\\u0443\\u0449\\u0438\\u043c. \\u041c\\u044b \\u0432\\u0438\\u0434\\u0438\\u043c \\u043f\\u0435\\u0440\\u0441\\u043f\\u0435\\u043a\\u0442\\u0438\\u0432\\u044b \\u0440\\u044b\\u043d\\u043a\\u043e\\u0432 \\u0438 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0435\\u0440\\u0441\\u043f\\u0435\\u043a\\u0442\\u0438\\u0432\\u044b. \\u0418 \\u044d\\u0442\\u0438 \\u0432\\u044b\\u0437\\u043e\\u0432\\u044b \\u043f\\u043e\\u0434\\u043e\\u0433\\u0440\\u0435\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430\\u0448\\u0438 \\u0430\\u043c\\u0431\\u0438\\u0446\\u0438\\u0438.\",\"text_ua_8\":\"\\u041c\\u044b \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043b\\u0438 \\u0437\\u0430 20 \\u043b\\u0435\\u0442. \\u041c\\u044b \\u0441\\u0442\\u0430\\u043b\\u0438 \\u044d\\u0442\\u0430\\u043b\\u043e\\u043d\\u043e\\u043c \\u0432 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u043b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\u043e\\u0432 \\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043b\\u0438\\u0434\\u0435\\u0440\\u043e\\u043c \\u0440\\u044b\\u043d\\u043a\\u0430 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432. \\u041d\\u043e \\u043c\\u044b \\u0436\\u0438\\u0432\\u0435\\u043c \\u0431\\u0443\\u0434\\u0443\\u0449\\u0438\\u043c. \\u041c\\u044b \\u0432\\u0438\\u0434\\u0438\\u043c \\u043f\\u0435\\u0440\\u0441\\u043f\\u0435\\u043a\\u0442\\u0438\\u0432\\u044b \\u0440\\u044b\\u043d\\u043a\\u043e\\u0432 \\u0438 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0435\\u0440\\u0441\\u043f\\u0435\\u043a\\u0442\\u0438\\u0432\\u044b. \\u0418 \\u044d\\u0442\\u0438 \\u0432\\u044b\\u0437\\u043e\\u0432\\u044b \\u043f\\u043e\\u0434\\u043e\\u0433\\u0440\\u0435\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430\\u0448\\u0438 \\u0430\\u043c\\u0431\\u0438\\u0446\\u0438\\u0438.\",\"text_en_8\":\"We have achieved a lot during 20 years. We have become the benchmark in the category of traditional soft drinks and become the market leader in energy drinks. But we strive to the future. We see market prospects and our prospects. And these challenges fuel our ambitions.\",\"element_width_8\":\"1\",\"featured_8\":\"on\",\"br_8\":null,\"image_9\":\"\",\"title_ru_9\":\"\\u041e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043a\\u0430\\u043a \\u043c\\u043e\\u0442\\u0438\\u0432\\u0430\\u0446\\u0438\\u044f\",\"title_ua_9\":\"\\u041e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043a\\u0430\\u043a \\u043c\\u043e\\u0442\\u0438\\u0432\\u0430\\u0446\\u0438\\u044f\",\"title_en_9\":\"RESPONSIBILITY AS A MOTIVATION\",\"text_ru_9\":\"\\u041c\\u044b \\u043d\\u0435\\u0441\\u0435\\u043c \\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u043d\\u0430\\u0448\\u0438\\u043c\\u0438 \\u043f\\u043e\\u0442\\u0440\\u0435\\u0431\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438 \\u0437\\u0430 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430 \\u0438 \\u043d\\u0430\\u0448\\u0438 \\u043e\\u0431\\u0435\\u0449\\u0430\\u043d\\u0438\\u044f. \\u041c\\u044b \\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0441\\u0432\\u043e\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0437\\u0430 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430\\u0438\\u043b\\u0443\\u0447\\u0448\\u0438\\u043c \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043e\\u043c \\u043f\\u0440\\u043e\\u044f\\u0432\\u043b\\u044f\\u0442\\u044c \\u0441\\u0432\\u043e\\u0438 \\u0442\\u0430\\u043b\\u0430\\u043d\\u0442\\u044b \\u0438 \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0434\\u043b\\u044f \\u0441\\u0432\\u043e\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439.\",\"text_ua_9\":\"\\u041c\\u044b \\u043d\\u0435\\u0441\\u0435\\u043c \\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u043d\\u0430\\u0448\\u0438\\u043c\\u0438 \\u043f\\u043e\\u0442\\u0440\\u0435\\u0431\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438 \\u0437\\u0430 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430 \\u0438 \\u043d\\u0430\\u0448\\u0438 \\u043e\\u0431\\u0435\\u0449\\u0430\\u043d\\u0438\\u044f. \\u041c\\u044b \\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0441\\u0432\\u043e\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0437\\u0430 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430\\u0438\\u043b\\u0443\\u0447\\u0448\\u0438\\u043c \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043e\\u043c \\u043f\\u0440\\u043e\\u044f\\u0432\\u043b\\u044f\\u0442\\u044c \\u0441\\u0432\\u043e\\u0438 \\u0442\\u0430\\u043b\\u0430\\u043d\\u0442\\u044b \\u0438 \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0434\\u043b\\u044f \\u0441\\u0432\\u043e\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439.\",\"text_en_9\":\"We are responsible for the quality of our product and our promises to our customers. We are responsible to our employees for the best way to display their talents and skills as well as to provide a decent standard of living for their families. We are responsible to the society and participate in charity events to bring joy to those who are deprived of it. This responsibility motivates us and gives us the strength.\",\"element_width_9\":\"2\",\"featured_9\":null,\"br_9\":null,\"image_10\":\"blocks\\/bleFwpluxtpFK6O2rQOCipnE2EIkCDfRx701FaZr.png\",\"title_ru_10\":null,\"title_ua_10\":null,\"title_en_10\":null,\"text_ru_10\":null,\"text_ua_10\":null,\"text_en_10\":null,\"element_width_10\":\"1\",\"featured_10\":null,\"br_10\":null,\"animation\":\"bounceInUp\",\"id\":\"77\",\"class\":null}', 0, 0, 0, 0, 10000, '2019-05-23 10:50:09', '2019-07-09 08:48:44'),
(78, 17, 'template', 'text', '{\"text_ru\":\"<h2 class=\\\"readmore\\\">\\u041f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0430 \\u043a\\u043e\\u043d\\u0444\\u0438\\u0434\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438<\\/h2>\\r\\n<p>1. \\u041e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0435\\u0440\\u043c\\u0438\\u043d\\u043e\\u0432<\\/p>\\r\\n<p>1.1 \\u0412 \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0435\\u0439 \\u041f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0435 \\u043a\\u043e\\u043d\\u0444\\u0438\\u0434\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u0442\\u0435\\u0440\\u043c\\u0438\\u043d\\u044b:<\\/p>\\r\\n<p>1.1.1. &laquo;\\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u0430 \\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430 (\\u0434\\u0430\\u043b\\u0435\\u0435 &ndash; \\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u0430) &raquo; &ndash; \\u0443\\u043f\\u043e\\u043b\\u043d\\u043e\\u043c\\u043e\\u0447\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0438 \\u043d\\u0430 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u043e\\u043c, \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043e\\u0442 \\u0438\\u043c\\u0435\\u043d\\u0438 \\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0443\\u044e\\u0442 \\u0438 (\\u0438\\u043b\\u0438) \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044f\\u0435\\u0442 \\u0446\\u0435\\u043b\\u0438 \\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445, \\u043f\\u043e\\u0434\\u043b\\u0435\\u0436\\u0430\\u0449\\u0438\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435, \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u044f (\\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438), \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0430\\u0435\\u043c\\u044b\\u0435 \\u0441 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438.<\\/p>\\r\\n<p>1.1.2. &laquo;\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0435&raquo; - \\u043b\\u044e\\u0431\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f, \\u043e\\u0442\\u043d\\u043e\\u0441\\u044f\\u0449\\u0430\\u044f\\u0441\\u044f \\u043a \\u043f\\u0440\\u044f\\u043c\\u043e \\u0438\\u043b\\u0438 \\u043a\\u043e\\u0441\\u0432\\u0435\\u043d\\u043d\\u043e \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u043e\\u043c\\u0443 \\u0438\\u043b\\u0438 \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044f\\u0435\\u043c\\u043e\\u043c\\u0443 \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u043c\\u0443 \\u043b\\u0438\\u0446\\u0443 (\\u0441\\u0443\\u0431\\u044a\\u0435\\u043a\\u0442\\u0443 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445).<\\/p>\\r\\n<p>1.1.3. &laquo;\\u041e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445&raquo; - \\u043b\\u044e\\u0431\\u043e\\u0435 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0435 (\\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f) \\u0438\\u043b\\u0438 \\u0441\\u043e\\u0432\\u043e\\u043a\\u0443\\u043f\\u043d\\u043e\\u0441\\u0442\\u044c \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0439 (\\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0439), \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0441 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432 \\u0430\\u0432\\u0442\\u043e\\u043c\\u0430\\u0442\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0438\\u043b\\u0438 \\u0431\\u0435\\u0437 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432 \\u0441 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438, \\u0432\\u043a\\u043b\\u044e\\u0447\\u0430\\u044f \\u0441\\u0431\\u043e\\u0440, \\u0437\\u0430\\u043f\\u0438\\u0441\\u044c, \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u0437\\u0430\\u0446\\u0438\\u044e, \\u043d\\u0430\\u043a\\u043e\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435, \\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0443\\u0442\\u043e\\u0447\\u043d\\u0435\\u043d\\u0438\\u0435 (\\u043e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435, \\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0435), \\u0438\\u0437\\u0432\\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435, \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435, \\u043f\\u0435\\u0440\\u0435\\u0434\\u0430\\u0447\\u0443 (\\u0440\\u0430\\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u0435, \\u043f\\u0440\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435, \\u043', 0, 0, 0, 0, 10000, '2019-05-27 13:21:48', '2019-06-03 09:26:47'),
(84, 19, 'template', 'video', '{\"title_ru\":\"\\u0412\\u0438\\u0434\\u0435\\u043e \\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"title_ua\":\"\\u0412\\u0438\\u0434\\u0435\\u043e \\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"title_en\":\"\\u0412\\u0438\\u0434\\u0435\\u043e \\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"link\":\"https:\\/\\/youtu.be\\/5_uy_SKu9TA\",\"width\":\"100\",\"aspect\":\"0\",\"align\":\"center\",\"animation\":\"none\",\"id\":\"84\",\"class\":null}', 0, 0, 0, 0, 10000, '2019-05-28 15:13:52', '2019-05-28 15:51:39'),
(86, 11, 'template', 'content_one_column', '{\"html_content_ru_1\":\"<p class=\\\"about-company-products-block__drinks-title\\\">\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438:<\\/p>\",\"html_content_ua_1\":\"<p class=\\\"about-company-products-block__drinks-title\\\">\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438:<\\/p>\",\"html_content_en_1\":\"<p class=\\\"about-company-products-block__drinks-title\\\">\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438:<\\/p>\",\"class_1\":null,\"margin\":null,\"padding\":null,\"animation\":\"none\",\"id\":\"86\",\"class\":null,\"spaces\":\"0\",\"animate\":\"on\"}', 0, 1, 0, 0, 7, '2019-05-31 15:27:45', '2019-07-09 08:27:09'),
(88, 16, 'template', 'html', '{\"html\":\"<div class=\\\"cherkasy-main__enterprise-banner wow bounceInUp\\\"data-wow-duration=\\\"2s\\\" data-wow-offset=\\\"350\\\">\\r\\n                                <div class=\\\"enterprise__banner1\\\">\\r\\n                                    <img src=\\\"\\/img\\/png\\/bottles01.png\\\" alt=\\\"\\\">\\r\\n                                    <div class=\\\"cherkasy-main__discription wave-block\\\">\\r\\n                                        \\r\\n                                        <p class=\\\"animateVaweClass\\\">\\u041d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043e 3 \\u043b\\u0438\\u043d\\u0438\\u0438 \\u043f\\u043e \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0443 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0432 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0435 \\u0435\\u043c\\u043a\\u043e\\u0441\\u0442\\u0438, \\u0447\\u0442\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043e\\u043c \\u0438 \\u0437\\u0430\\u043f\\u0430\\u0441\\u0430\\u043c\\u0438.<\\/p>\\r\\n                                        \\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                                <div class=\\\"enterprise__banner2\\\">\\r\\n                                    <img src=\\\"\\/img\\/png\\/bottles02.png\\\" alt=\\\"\\\">\\r\\n                                <\\/div>\\r\\n                            <\\/div>\"}', 0, 0, 0, 0, 7, '2019-06-03 08:46:20', '2019-07-15 10:11:50'),
(89, 16, 'template', 'content_one_column', '{\"html_content_ru_1\":\"<p>\\u041d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043e 3 \\u043b\\u0438\\u043d\\u0438\\u0438 \\u043f\\u043e \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0443 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0432 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0435 \\u0435\\u043c\\u043a\\u043e\\u0441\\u0442\\u0438, \\u0447\\u0442\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043e\\u043c \\u0438 \\u0437\\u0430\\u043f\\u0430\\u0441\\u0430\\u043c\\u0438.<\\/p>\",\"html_content_ua_1\":\"<p>\\u041d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043e 3 \\u043b\\u0438\\u043d\\u0438\\u0438 \\u043f\\u043e \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0443 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0432 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0435 \\u0435\\u043c\\u043a\\u043e\\u0441\\u0442\\u0438, \\u0447\\u0442\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043e\\u043c \\u0438 \\u0437\\u0430\\u043f\\u0430\\u0441\\u0430\\u043c\\u0438.<\\/p>\",\"html_content_en_1\":\"<p>\\u041d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043e 3 \\u043b\\u0438\\u043d\\u0438\\u0438 \\u043f\\u043e \\u0440\\u043e\\u0437\\u043b\\u0438\\u0432\\u0443 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432 \\u0432 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0435 \\u0435\\u043c\\u043a\\u043e\\u0441\\u0442\\u0438, \\u0447\\u0442\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043e\\u043c \\u0438 \\u0437\\u0430\\u043f\\u0430\\u0441\\u0430\\u043c\\u0438.<\\/p>\",\"class_1\":null,\"margin\":null,\"padding\":null,\"animation\":\"bounceInUp\",\"id\":\"89\",\"class\":\"animateVaweClass d-block d-lg-none d-xl-none d-sm-block d-md-none\",\"spaces\":\"0\",\"animate\":\"on\"}', 0, 0, 0, 0, 8, '2019-06-03 08:48:08', '2019-06-05 14:39:22');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(2, 'browse_bread', NULL, '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(3, 'browse_database', NULL, '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(4, 'browse_media', NULL, '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(5, 'browse_compass', NULL, '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(6, 'browse_menus', 'menus', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(7, 'read_menus', 'menus', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(8, 'edit_menus', 'menus', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(9, 'add_menus', 'menus', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(10, 'delete_menus', 'menus', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(11, 'browse_roles', 'roles', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(12, 'read_roles', 'roles', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(13, 'edit_roles', 'roles', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(14, 'add_roles', 'roles', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(15, 'delete_roles', 'roles', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(16, 'browse_users', 'users', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(17, 'read_users', 'users', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(18, 'edit_users', 'users', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(19, 'add_users', 'users', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(20, 'delete_users', 'users', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(21, 'browse_settings', 'settings', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(22, 'read_settings', 'settings', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(23, 'edit_settings', 'settings', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(24, 'add_settings', 'settings', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(25, 'delete_settings', 'settings', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(26, 'browse_hooks', NULL, '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(32, 'browse_posts', 'posts', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(33, 'read_posts', 'posts', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(34, 'edit_posts', 'posts', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(35, 'add_posts', 'posts', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(36, 'delete_posts', 'posts', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(37, 'browse_pages', 'pages', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(38, 'read_pages', 'pages', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(39, 'edit_pages', 'pages', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(40, 'add_pages', 'pages', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(41, 'delete_pages', 'pages', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(42, 'browse_cities', 'cities', '2019-04-11 05:27:03', '2019-04-11 05:27:03'),
(43, 'read_cities', 'cities', '2019-04-11 05:27:03', '2019-04-11 05:27:03'),
(44, 'edit_cities', 'cities', '2019-04-11 05:27:03', '2019-04-11 05:27:03'),
(45, 'add_cities', 'cities', '2019-04-11 05:27:03', '2019-04-11 05:27:03'),
(46, 'delete_cities', 'cities', '2019-04-11 05:27:03', '2019-04-11 05:27:03'),
(47, 'browse_vacancies', 'vacancies', '2019-04-11 06:21:20', '2019-04-11 06:21:20'),
(48, 'read_vacancies', 'vacancies', '2019-04-11 06:21:20', '2019-04-11 06:21:20'),
(49, 'edit_vacancies', 'vacancies', '2019-04-11 06:21:20', '2019-04-11 06:21:20'),
(50, 'add_vacancies', 'vacancies', '2019-04-11 06:21:20', '2019-04-11 06:21:20'),
(51, 'delete_vacancies', 'vacancies', '2019-04-11 06:21:20', '2019-04-11 06:21:20'),
(52, 'browse_managers', 'managers', '2019-04-11 06:55:28', '2019-04-11 06:55:28'),
(53, 'read_managers', 'managers', '2019-04-11 06:55:28', '2019-04-11 06:55:28'),
(54, 'edit_managers', 'managers', '2019-04-11 06:55:28', '2019-04-11 06:55:28'),
(55, 'add_managers', 'managers', '2019-04-11 06:55:28', '2019-04-11 06:55:28'),
(56, 'delete_managers', 'managers', '2019-04-11 06:55:28', '2019-04-11 06:55:28'),
(57, 'browse_blog_posts', NULL, '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(58, 'read_blog_posts', NULL, '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(59, 'edit_blog_posts', NULL, '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(60, 'add_blog_posts', NULL, '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(61, 'delete_blog_posts', NULL, '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(62, 'browse_blog_posts', 'blog_posts', '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(63, 'read_blog_posts', 'blog_posts', '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(64, 'edit_blog_posts', 'blog_posts', '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(65, 'add_blog_posts', 'blog_posts', '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(66, 'delete_blog_posts', 'blog_posts', '2019-04-12 05:22:39', '2019-04-12 05:22:39'),
(67, 'browse_pages', NULL, '2019-04-12 05:22:49', '2019-04-12 05:22:49'),
(68, 'read_pages', NULL, '2019-04-12 05:22:49', '2019-04-12 05:22:49'),
(69, 'edit_pages', NULL, '2019-04-12 05:22:50', '2019-04-12 05:22:50'),
(70, 'add_pages', NULL, '2019-04-12 05:22:50', '2019-04-12 05:22:50'),
(71, 'delete_pages', NULL, '2019-04-12 05:22:50', '2019-04-12 05:22:50'),
(72, 'browse_offices', 'offices', '2019-04-12 06:10:57', '2019-04-12 06:10:57'),
(73, 'read_offices', 'offices', '2019-04-12 06:10:57', '2019-04-12 06:10:57'),
(74, 'edit_offices', 'offices', '2019-04-12 06:10:57', '2019-04-12 06:10:57'),
(75, 'add_offices', 'offices', '2019-04-12 06:10:57', '2019-04-12 06:10:57'),
(76, 'delete_offices', 'offices', '2019-04-12 06:10:57', '2019-04-12 06:10:57'),
(77, 'browse_page_blocks', 'page_blocks', '2019-04-12 07:48:02', '2019-04-12 07:48:02'),
(78, 'read_page_blocks', 'page_blocks', '2019-04-12 07:48:02', '2019-04-12 07:48:02'),
(79, 'edit_page_blocks', 'page_blocks', '2019-04-12 07:48:03', '2019-04-12 07:48:03'),
(80, 'add_page_blocks', 'page_blocks', '2019-04-12 07:48:03', '2019-04-12 07:48:03'),
(81, 'delete_page_blocks', 'page_blocks', '2019-04-12 07:48:03', '2019-04-12 07:48:03'),
(82, 'browse_products', 'products', '2019-04-12 10:44:43', '2019-04-12 10:44:43'),
(83, 'read_products', 'products', '2019-04-12 10:44:43', '2019-04-12 10:44:43'),
(84, 'edit_products', 'products', '2019-04-12 10:44:43', '2019-04-12 10:44:43'),
(85, 'add_products', 'products', '2019-04-12 10:44:43', '2019-04-12 10:44:43'),
(86, 'delete_products', 'products', '2019-04-12 10:44:43', '2019-04-12 10:44:43'),
(87, 'browse_categories', 'categories', '2019-04-12 12:27:37', '2019-04-12 12:27:37'),
(88, 'read_categories', 'categories', '2019-04-12 12:27:37', '2019-04-12 12:27:37'),
(89, 'edit_categories', 'categories', '2019-04-12 12:27:37', '2019-04-12 12:27:37'),
(90, 'add_categories', 'categories', '2019-04-12 12:27:37', '2019-04-12 12:27:37'),
(91, 'delete_categories', 'categories', '2019-04-12 12:27:37', '2019-04-12 12:27:37'),
(92, 'browse_badges', 'badges', '2019-04-16 06:39:03', '2019-04-16 06:39:03'),
(93, 'read_badges', 'badges', '2019-04-16 06:39:03', '2019-04-16 06:39:03'),
(94, 'edit_badges', 'badges', '2019-04-16 06:39:03', '2019-04-16 06:39:03'),
(95, 'add_badges', 'badges', '2019-04-16 06:39:03', '2019-04-16 06:39:03'),
(96, 'delete_badges', 'badges', '2019-04-16 06:39:03', '2019-04-16 06:39:03'),
(97, 'browse_size', 'size', '2019-04-17 04:15:36', '2019-04-17 04:15:36'),
(98, 'read_size', 'size', '2019-04-17 04:15:36', '2019-04-17 04:15:36'),
(99, 'edit_size', 'size', '2019-04-17 04:15:37', '2019-04-17 04:15:37'),
(100, 'add_size', 'size', '2019-04-17 04:15:37', '2019-04-17 04:15:37'),
(101, 'delete_size', 'size', '2019-04-17 04:15:37', '2019-04-17 04:15:37'),
(102, 'browse_sizes', 'sizes', '2019-04-17 04:21:26', '2019-04-17 04:21:26'),
(103, 'read_sizes', 'sizes', '2019-04-17 04:21:26', '2019-04-17 04:21:26'),
(104, 'edit_sizes', 'sizes', '2019-04-17 04:21:26', '2019-04-17 04:21:26'),
(105, 'add_sizes', 'sizes', '2019-04-17 04:21:27', '2019-04-17 04:21:27'),
(106, 'delete_sizes', 'sizes', '2019-04-17 04:21:27', '2019-04-17 04:21:27'),
(107, 'browse_projects', 'projects', '2019-04-17 12:03:17', '2019-04-17 12:03:17'),
(108, 'read_projects', 'projects', '2019-04-17 12:03:17', '2019-04-17 12:03:17'),
(109, 'edit_projects', 'projects', '2019-04-17 12:03:17', '2019-04-17 12:03:17'),
(110, 'add_projects', 'projects', '2019-04-17 12:03:17', '2019-04-17 12:03:17'),
(111, 'delete_projects', 'projects', '2019-04-17 12:03:18', '2019-04-17 12:03:18'),
(112, 'browse_departments', 'departments', '2019-05-07 11:28:42', '2019-05-07 11:28:42'),
(113, 'read_departments', 'departments', '2019-05-07 11:28:42', '2019-05-07 11:28:42'),
(114, 'edit_departments', 'departments', '2019-05-07 11:28:42', '2019-05-07 11:28:42'),
(115, 'add_departments', 'departments', '2019-05-07 11:28:43', '2019-05-07 11:28:43'),
(116, 'delete_departments', 'departments', '2019-05-07 11:28:43', '2019-05-07 11:28:43'),
(117, 'browse_history', 'history', '2019-05-15 05:24:34', '2019-05-15 05:24:34'),
(118, 'read_history', 'history', '2019-05-15 05:24:35', '2019-05-15 05:24:35'),
(119, 'edit_history', 'history', '2019-05-15 05:24:35', '2019-05-15 05:24:35'),
(120, 'add_history', 'history', '2019-05-15 05:24:35', '2019-05-15 05:24:35'),
(121, 'delete_history', 'history', '2019-05-15 05:24:35', '2019-05-15 05:24:35'),
(122, 'browse_histories', 'histories', '2019-05-15 05:52:33', '2019-05-15 05:52:33'),
(123, 'read_histories', 'histories', '2019-05-15 05:52:33', '2019-05-15 05:52:33'),
(124, 'edit_histories', 'histories', '2019-05-15 05:52:33', '2019-05-15 05:52:33'),
(125, 'add_histories', 'histories', '2019-05-15 05:52:33', '2019-05-15 05:52:33'),
(126, 'delete_histories', 'histories', '2019-05-15 05:52:33', '2019-05-15 05:52:33'),
(127, 'browse_sliders', 'sliders', '2019-05-16 10:08:01', '2019-05-16 10:08:01'),
(128, 'read_sliders', 'sliders', '2019-05-16 10:08:01', '2019-05-16 10:08:01'),
(129, 'edit_sliders', 'sliders', '2019-05-16 10:08:01', '2019-05-16 10:08:01'),
(130, 'add_sliders', 'sliders', '2019-05-16 10:08:01', '2019-05-16 10:08:01'),
(131, 'delete_sliders', 'sliders', '2019-05-16 10:08:02', '2019-05-16 10:08:02'),
(132, 'browse_carousels', 'carousels', '2019-05-28 13:45:55', '2019-05-28 13:45:55'),
(133, 'read_carousels', 'carousels', '2019-05-28 13:45:56', '2019-05-28 13:45:56'),
(134, 'edit_carousels', 'carousels', '2019-05-28 13:45:57', '2019-05-28 13:45:57'),
(135, 'add_carousels', 'carousels', '2019-05-28 13:45:57', '2019-05-28 13:45:57'),
(136, 'delete_carousels', 'carousels', '2019-05-28 13:45:58', '2019-05-28 13:45:58');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(5, 1, 1, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца', '', '', '<p>Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КомерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов - крупные западные и российские фонды.</p>\n<p>&nbsp;</p>\n<p>Salford Capital Partners Inc. продает один из главных активов фонда VDP(его активы находятся под управлением Salford) - IDS Borjomi Beverages N. V., рассказал газете один из потенциальных покупателей. На продажу выставленны 100% акций IDS, 87,34% из которых принадлежат фонду, остальное - миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн.</p>\n<p>&nbsp;</p>\n<p>Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд близкий к Альфа Групп (его название не расскрывается).</p>\n<p>&nbsp;</p>\n<p>КомерсантЪ отмечает, что в TPG, Standart Capital, и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по разливу воды Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине.</p>\n<p>&nbsp;</p>\n<p>Основные марки - Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и Aqualife. Финпоказатели не расскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вина и минеральную воду.</p>', 'posts\\April2019\\5genQ1izoXOJD9umYZnm.png', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca', '', '', 'PUBLISHED', 0, '2019-04-16 13:19:53', '2019-04-16 13:19:53');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `meta_description`, `slug`, `meta_keywords`, `image`, `seo_title`, `category_id`, `site`, `facebook`, `instagram`, `updated_at`, `created_at`) VALUES
(1, 'Лимонад', '<p>Свежесть лимонов, которые утолят жажду, отсутствие искусственных красителей и сахара завершит чувство удовлетворения от этого напитка.</p>', '', 'limonad', '', 'products/July2019/8EEdE95SlzuCMRlwaAbE.png', '', 3, 'bon-boisson.com.ua', 'bon-boisson.com.ua', 'bon-boisson.com.ua', '2019-07-12 11:31:53', '2019-04-12 13:04:00'),
(3, 'Апельсин-грейпфрут', '<p><!-- [if gte mso 9]><xml>\n <o:OfficeDocumentSettings>\n  <o:RelyOnVML/>\n  <o:AllowPNG/>\n </o:OfficeDocumentSettings>\n</xml><![endif]--><!-- [if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves/>\n  <w:TrackFormatting/>\n  <w:PunctuationKerning/>\n  <w:ValidateAgainstSchemas/>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF/>\n  <w:LidThemeOther>RU</w:LidThemeOther>\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:BreakWrappedTables/>\n   <w:SnapToGridInCell/>\n   <w:WrapTextWithPunct/>\n   <w:UseAsianBreakRules/>\n   <w:DontGrowAutofit/>\n   <w:SplitPgBreakAndParaMark/>\n   <w:EnableOpenTypeKerning/>\n   <w:DontFlipMirrorIndents/>\n   <w:OverrideTableStyleHps/>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"/>\n   <m:brkBin m:val=\"before\"/>\n   <m:brkBinSub m:val=\"&#45;-\"/>\n   <m:smallFrac m:val=\"off\"/>\n   <m:dispDef/>\n   <m:lMargin m:val=\"0\"/>\n   <m:rMargin m:val=\"0\"/>\n   <m:defJc m:val=\"centerGroup\"/>\n   <m:wrapIndent m:val=\"1440\"/>\n   <m:intLim m:val=\"subSup\"/>\n   <m:naryLim m:val=\"undOvr\"/>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!-- [if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"371\">\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope return\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"line number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"page number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of authorities\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"macro\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"toa heading\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Closing\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Signature\"/>\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Message Header\"/>\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Salutation\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Date\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Heading\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Block Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Hyperlink\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"FollowedHyperlink\"/>\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Document Map\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Plain Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"E-mail Signature\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Top of Form\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Bottom of Form\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal (Web)\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"tru', '', 'apel-sin-grejpfrut', '', 'products/June2019/5ToQYHHJC9KP5D4u69uN.png', '', 11, NULL, NULL, NULL, '2019-06-04 15:19:41', '2019-05-08 11:23:00'),
(4, 'Лайм-мята', '<p><!-- [if gte mso 9]><xml>\n <o:OfficeDocumentSettings>\n  <o:RelyOnVML/>\n  <o:AllowPNG/>\n </o:OfficeDocumentSettings>\n</xml><![endif]--><!-- [if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves/>\n  <w:TrackFormatting/>\n  <w:PunctuationKerning/>\n  <w:ValidateAgainstSchemas/>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF/>\n  <w:LidThemeOther>RU</w:LidThemeOther>\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:BreakWrappedTables/>\n   <w:SnapToGridInCell/>\n   <w:WrapTextWithPunct/>\n   <w:UseAsianBreakRules/>\n   <w:DontGrowAutofit/>\n   <w:SplitPgBreakAndParaMark/>\n   <w:EnableOpenTypeKerning/>\n   <w:DontFlipMirrorIndents/>\n   <w:OverrideTableStyleHps/>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"/>\n   <m:brkBin m:val=\"before\"/>\n   <m:brkBinSub m:val=\"&#45;-\"/>\n   <m:smallFrac m:val=\"off\"/>\n   <m:dispDef/>\n   <m:lMargin m:val=\"0\"/>\n   <m:rMargin m:val=\"0\"/>\n   <m:defJc m:val=\"centerGroup\"/>\n   <m:wrapIndent m:val=\"1440\"/>\n   <m:intLim m:val=\"subSup\"/>\n   <m:naryLim m:val=\"undOvr\"/>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!-- [if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"371\">\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"/>', '', 'lajm-myata', '', 'products/June2019/mSqHYwOKdXuCuCnYA4Iw.png', '', 11, NULL, NULL, NULL, '2019-06-04 15:19:11', '2019-05-08 11:24:00'),
(5, 'Малина', '<p><!-- [if gte mso 9]><xml>\n <o:OfficeDocumentSettings>\n  <o:RelyOnVML/>\n  <o:AllowPNG/>\n </o:OfficeDocumentSettings>\n</xml><![endif]--><!-- [if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves/>\n  <w:TrackFormatting/>\n  <w:PunctuationKerning/>\n  <w:ValidateAgainstSchemas/>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF/>\n  <w:LidThemeOther>RU</w:LidThemeOther>\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:BreakWrappedTables/>\n   <w:SnapToGridInCell/>\n   <w:WrapTextWithPunct/>\n   <w:UseAsianBreakRules/>\n   <w:DontGrowAutofit/>\n   <w:SplitPgBreakAndParaMark/>\n   <w:EnableOpenTypeKerning/>\n   <w:DontFlipMirrorIndents/>\n   <w:OverrideTableStyleHps/>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"/>\n   <m:brkBin m:val=\"before\"/>\n   <m:brkBinSub m:val=\"&#45;-\"/>\n   <m:smallFrac m:val=\"off\"/>\n   <m:dispDef/>\n   <m:lMargin m:val=\"0\"/>\n   <m:rMargin m:val=\"0\"/>\n   <m:defJc m:val=\"centerGroup\"/>\n   <m:wrapIndent m:val=\"1440\"/>\n   <m:intLim m:val=\"subSup\"/>\n   <m:naryLim m:val=\"undOvr\"/>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!-- [if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"371\">\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope return\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"line number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"page number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of authorities\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"macro\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"toa heading\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Closing\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Signature\"/>\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Message Header\"/>\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Salutation\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Date\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Heading\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Block Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Hyperlink\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"FollowedHyperlink\"/>\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Document Map\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Plain Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"E-mail Signature\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Top of Form\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Bottom of Form\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal (Web)\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Acronym\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Address\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Cite\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Code\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Definition\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Keyboard\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Preformatted\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Sample\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Typewriter\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Variable\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Table\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation subject\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"No List\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 3\"/>\n  <w:LsdException Locked=\"false\" Se', '', 'malina', '', 'products/June2019/twPBdhwtSgqgbxHEulZI.png', '', 11, NULL, NULL, NULL, '2019-06-04 15:18:10', '2019-05-08 11:25:00'),
(6, 'Детская вода Карапуз', '<p>Це пояснюється тим, що організм дитини ще не до кінця сформований і засвоюваність продуктів (у тому числі і води) важка.</p>\n<p>Малюкам до 3 років рекомендують пити воду, в якій повинно бути 200-400 мг мінералів на 1 л, , інакше вода може спровокувати порушення обмінних процесів і відкладення солей. <br />Таку воду можна пити та бажано готувати на ній їжу для дитини.</p>\n<p>Що стосується води з колодязя та артезіанського джерела, то існує ймовірність наявності в ній нітратів, які потрапили з грунту.</p>\n<p>Фільтри зворотного осмосу настільки очищають воду, що в ній не залишається не тільки шкідливих речовин, але і корисних.</p>', 'Детская вода Карапуз', 'detskaya-voda-karapuz', '', 'products/June2019/ljjDpyd8om3lu6Hmmpwh.png', 'Детская вода Карапуз', 7, NULL, NULL, NULL, '2019-06-03 14:13:13', '2019-06-03 14:06:00'),
(7, 'Квас Боярский', '<p>Квас двойного брожения с кисло-сладким вкусом и ароматом корочки ржаного хлеба. Квас приготовлен из натуральных компонентов, он отлично освежает, придает силы и утоляет жажду.</p>', '', 'kvas-boyarskij', '', 'products/June2019/9LncqruJSILiZm3TjWQe.png', '', 14, NULL, NULL, NULL, '2019-06-03 15:02:15', '2019-06-03 14:39:00'),
(10, 'Тархун', '<p>Издавна известно, что напитки с травой Тархун утоляли жажду и придавали сил путешественникам. Мы взяли все лучшее от природы и сделали для Вас наш Тархун.</p>', '', 'tarhun', '', 'products/July2019/lcf7TNh8jQeOBnfsGhZi.png', '', 3, NULL, NULL, NULL, '2019-07-12 11:36:51', '2019-06-03 16:59:00'),
(11, 'Ситро', '<p>Само только название вызывает яркие воспоминания - удовольствие от стакана прохладительного напитка в знойный день. Напиток, утолит жажду и подарит вкус цитрусовых.</p>', '', 'krem-soda', '', 'products/July2019/zT1SCjv5OWmGKrfWdUOO.png', '', 3, NULL, NULL, NULL, '2019-07-12 11:37:42', '2019-06-03 16:59:00'),
(12, 'Байкал', '<p>Традиционный вкус, что знакомый многим с детства.</p>\n<p>Травы, корни и экстракты наполняют напиток непревзойденным вкусом.</p>\n<p>А главное, то вкус без калорий.</p>', '', 'baykal', '', 'products/July2019/CeAYtLNWbEE5lG0Rj0E7.png', '', 3, NULL, NULL, NULL, '2019-07-12 11:33:33', '2019-06-03 17:01:00'),
(14, 'Сильногазированная', '<p class=\"MsoNormal\">Сильногазированная природная минеральная вода добывается в курортной зоне &laquo;Соленый Лиман&raquo; и непосредственно в месте добычи <span style=\"mso-spacerun: yes;\">&nbsp;</span>разливается в бутылки без вмешательства человека.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Более 50 лет природная вода Бон Буассон сохраняет свой минеральный состав и наилучшим способом подходит для ежедневного употребления всеми членами семьи. Она не имеет противопоказаний и ограничений ввиду своей низкой минерализации.</p>\n<p class=\"MsoNormal\">Природная вода Бон Буассон имеет<span style=\"mso-spacerun: yes;\">&nbsp; </span>Экологичный сертификат,<span style=\"mso-spacerun: yes;\">&nbsp; </span>сертификаты Кошер и<span style=\"mso-spacerun: yes;\">&nbsp; </span>Халяль<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>', '', 'mineral-naya-voda-sil-nogazirovannaya', '', 'products/July2019/GC3TSBNMkOT8QBz2lIEl.png', '', 12, NULL, NULL, NULL, '2019-07-05 09:02:29', '2019-07-01 12:48:00'),
(15, 'Негазированная', '<p class=\"MsoNormal\">Негазированная<span style=\"mso-spacerun: yes;\">&nbsp; </span>природная минеральная вода добывается в курортной зоне &laquo;Соленый Лиман&raquo; и непосредственно в месте добычи<span style=\"mso-spacerun: yes;\">&nbsp; </span>разливается в бутылки без изменения своей формулы и вмешательства человека.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Более 50 лет природная вода Бон Буассон сохраняет свой минеральный состав и наилучшим способом подходит для ежедневного употребления всеми членами семьи. Она не имеет противопоказаний и ограничений ввиду своей низкой минерализации.</p>\n<p class=\"MsoNormal\">Природная вода Бон Буассон имеет<span style=\"mso-spacerun: yes;\">&nbsp; </span>Экологичный сертификат,<span style=\"mso-spacerun: yes;\">&nbsp; </span>сертификаты Кошер и<span style=\"mso-spacerun: yes;\">&nbsp; </span>Халяль<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>', '', 'mineral-naya-voda-negazirovannaya', '', 'products/July2019/NqeDHAkO9NW0GOW082FU.png', '', 12, NULL, NULL, NULL, '2019-07-05 09:02:02', '2019-07-01 13:03:00'),
(16, 'Слабогазированная', '<p class=\"MsoNormal\">Слабогазированная<span style=\"mso-spacerun: yes;\">&nbsp; </span>природная минеральная вода добывается в курортной зоне &laquo;Соленый Лиман&raquo; и непосредственно в месте добычи<span style=\"mso-spacerun: yes;\">&nbsp; </span>разливается в бутылки без вмешательства человека.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Более 50 лет природная вода Бон Буассон сохраняет свой минеральный состав и наилучшим способом подходит для ежедневного употребления всеми членами семьи. Она не имеет противопоказаний и ограничений ввиду своей низкой минерализации.</p>\n<p class=\"MsoNormal\">Природная вода Бон Буассон имеет<span style=\"mso-spacerun: yes;\">&nbsp; </span>Экологичный сертификат,<span style=\"mso-spacerun: yes;\">&nbsp; </span>сертификаты Кошер и<span style=\"mso-spacerun: yes;\">&nbsp; </span>Халяль<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>', '', 'slabogazirovannaya', '', 'products/July2019/bG96ZuXI7wZiLdXKwdFf.png', '', 12, NULL, NULL, NULL, '2019-07-05 09:16:42', '2019-07-01 13:31:00'),
(17, 'Со вкусом лимона', '<p class=\"MsoNormal\">Сильногазированная природная минеральная вода с добавлением аромата Лимона прекрасно утоляет жажду, тонизирует и не содержит сахара и калорий!</p>', '', 'so-vkusom-limona', '', 'products/July2019/Zm9YtILPJTvPvCtXxd97.png', '', 12, NULL, NULL, NULL, '2019-07-05 09:18:34', '2019-07-01 14:02:00'),
(18, 'Со вкусом яблока', '<p class=\"MsoNormal\">Сильногазированная природная минеральная вода с добавлением аромата&nbsp;<span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Calibri\',\'sans-serif\'; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Яблока </span>прекрасно утоляет жажду, тонизирует и не содержит сахара и калорий!</p>', '', 'so-vkusom-yabloka', '', 'products/July2019/vJBJF7gdy5tkyFWAoErN.png', '', 12, NULL, NULL, NULL, '2019-07-05 09:22:57', '2019-07-01 14:03:00'),
(19, 'Со вкусом малины', '<p class=\"MsoNormal\">Сильногазированная природная минеральная вода с добавлением аромата&nbsp;<span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Calibri\',\'sans-serif\'; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Малины </span>прекрасно утоляет жажду, тонизирует и не содержит сахара и калорий!</p>', '', 'so-vkusom-maliny', '', 'products/July2019/EAfvoJeeEBVn7o2BAnVD.png', '', 12, NULL, NULL, NULL, '2019-07-05 09:22:25', '2019-07-01 14:05:00'),
(20, 'Байкал', '<p>&laquo;БАЙКАЛ&raquo; - уникальный напиток, содержащий натуральные экстракты трав полыни, шалфея, кориандра, дягеля, корня солодки, цветов бузины, эфирные масла лавра, эвкалипта, хмеля&nbsp; и экстракт таежных корней. Травы, входящие в состав напитка давно известны в медицине своими лечебными свойствами: бузина&nbsp; - эффективное средство от простудных заболеваний;&nbsp; корень солодки - применяется для нормализации давления; шалфей лекарственный - снимает воспалительные процессы в организме; дягиль - богат на фосфор, кальций и железо. Напиток &laquo;Байкал&raquo; очень хорошо утоляет жажду и оказывает тонизирующее воздействие на организм.&nbsp;</p>', '', 'bajkal', '', 'products/July2019/0bw2qtDV9oBajv9Y010w.png', '', 13, NULL, NULL, NULL, '2019-07-12 11:17:17', '2019-07-03 11:06:00'),
(22, 'Крем сода', '<p>Только ТМ БОН БУАССОН в Украине производит ароматный десертный напиток &ndash; &laquo;КРЕМ-СОДА&raquo;. Это изюминка линейки &ndash; газировка со вкусом сливочного мороженного, а что еще нужно для хорошего настроения?!</p>', '', 'krem-soda1', '', 'products/July2019/rC5YTGnb6IFFnDvYKsP8.png', '', 13, NULL, NULL, NULL, '2019-07-12 11:26:22', '2019-07-03 11:11:00'),
(23, 'Лимонад', '<p>Классический &laquo;ЛИМОНАД&raquo;, созданный на натуральных сиропах и красителях, обладает освежающим и тонизирующим вкусом благодаря витамину С и лимонному экстракту.</p>', '', 'limonad1', '', 'products/July2019/9qTCvEzHXaumdngTauXv.png', '', 13, NULL, NULL, NULL, '2019-07-12 11:18:34', '2019-07-03 11:12:00'),
(24, 'Мохито', '<p>Коллекция классических лимонадов пополнилась одним из самых популярных коктейлей планеты - МОХИТО!</p>\n<p>МОХИТО появился на Кубе почти 100 лет назад, но как и ранее остается самым популярным летним освежающим напитком. Одно лишь его название будоражит воображение и освежает воспоминания о летнем отдыхе на берегу моря!</p>', '', 'mohito', '', 'products/July2019/NEwGO4G5ORyWfNo1QkKA.png', '', 13, NULL, NULL, NULL, '2019-07-12 11:27:05', '2019-07-03 11:12:00'),
(25, 'Ситро', '<p>Знакомый с детства вкус праздника воплотился в бодрящем и освежающем&nbsp; &laquo;СИТРО&raquo; благодаря сочетанию вкусов сочных спелых апельсинов и тонизирующих лимонов. Букет цитрусовых вкусов дополнен легким ароматом ванили, а натуральный экстракт апельсина добавляет яркости вкусу напитка.</p>', '', 'sitro', '', 'products/July2019/stnsYr6yuzhrgYwsAYkn.png', '', 13, NULL, NULL, NULL, '2019-07-12 11:25:16', '2019-07-03 11:13:00'),
(26, 'Тархун', '<p>В качестве основного компонента в напитке &laquo;ТАРХУН&raquo; используется настой эстрагона, произрастающего в Грузии, Армении, на Алтае. Эстрагон содержит огромное количество витаминов и минеральных веществ.&nbsp; Несмотря на сладковатый вкус, это уникальное растение относится к семейству полыни и давно известно своими лечебными свойствами. Тархун повышает аппетит, улучшает пищеварение, укрепляет стенки сосудов и даже помогает при бессоннице. &laquo;Тархун&raquo; относится к классу тонизирующих напитков.</p>', '', 'tarhun1', '', 'products/July2019/Ao3gVY3LfSVGiDSNvLEO.png', '', 13, NULL, NULL, NULL, '2019-07-12 11:19:16', '2019-07-03 11:14:00'),
(28, 'Ананас кокос', '<p>Ананас кокос</p>', '', 'ananas-kokos', '', 'products/July2019/yfEkSaFqT5a1Stfs7Lsg.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:00:46', '2019-07-03 12:00:46'),
(29, 'Апельсин', '<p>Апельсин</p>', '', 'apel-sin', '', 'products/July2019/TIZyBFBs8zEgCEvWzyCS.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:01:22', '2019-07-03 12:01:22'),
(30, 'Вишня', '<p>Вишня</p>', '', 'vishnya', '', 'products/July2019/kU2DbUlkamvhFW3J8c8N.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:02:01', '2019-07-03 12:02:01'),
(31, 'Лайм-Мята', '<p>Лайм-мята</p>', '', 'lajm-myata1', '', 'products/July2019/tDD2iYcZB82dBN3Pt85z.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:08:14', '2019-07-03 12:03:00'),
(32, 'Личи-Питайа', '<p>Личи-питая</p>', '', 'lichi-pitaya', '', 'products/July2019/lMu5vwKjwCdikELC3IPR.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:07:52', '2019-07-03 12:04:00'),
(33, 'Манго', '<p>Манго</p>', '', 'mango', '', 'products/July2019/jJi12VmouKyPUD3PbUdX.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:05:04', '2019-07-03 12:05:04'),
(34, 'Мультивамин', '<p>Мультивамин</p>', '', 'mul-tivamin', '', 'products/July2019/2HSSU2xtYzEGOMCDgAp2.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:05:58', '2019-07-03 12:05:58'),
(35, 'Агава-Маракуйя', '<p>Агава-Маракуйя</p>', '', 'agava-marakujya', '', 'products/July2019/fDglclT9n53tENntEOdv.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:07:17', '2019-07-03 12:07:17'),
(36, 'Яблуко-Саусеп', '<p>Яблуко-Саусеп</p>', '', 'yabluko-sausep', '', 'products/July2019/cbSgDf7NuQykci7vcB5h.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:09:19', '2019-07-03 12:09:19'),
(37, 'Фейхоа', '<p>Фейхоа</p>', '', 'fejhoa', '', 'products/July2019/UGMYK38X2VuvoYEb1J7o.png', '', 4, NULL, NULL, NULL, '2019-07-03 12:09:56', '2019-07-03 12:09:56'),
(38, 'Original', '<p>Black Original</p>', '', 'original', '', 'products/July2019/iqRToJ05fkcbCqFsgoKQ.png', '', 6, NULL, NULL, NULL, '2019-07-05 11:47:55', '2019-07-05 11:47:55'),
(39, 'Mojito', '<p>Black Mojito</p>', '', 'mojito', '', 'products/July2019/PUNdEQ8FlCUQ9ZdFlbL1.png', '', 6, NULL, NULL, NULL, '2019-07-05 11:49:10', '2019-07-05 11:49:10'),
(40, 'Extra', '<p>Black Extra</p>', '', 'extra', '', 'products/July2019/nCzj3zLzxXvYhkZu4NZZ.png', '', 6, NULL, NULL, NULL, '2019-07-05 11:49:50', '2019-07-05 11:49:50'),
(41, 'Tropic', '<p>Black Tropic</p>', '', 'tropic', '', 'products/July2019/xnS5ryhNSx2RpBNRlWqt.png', '', 6, NULL, NULL, NULL, '2019-07-05 11:50:25', '2019-07-05 11:50:25'),
(42, 'Nature', '<p>Black Nature</p>', '', 'nature', '', 'products/July2019/wL3g4jyd8mKYsJhy0NDB.png', '', 6, NULL, NULL, NULL, '2019-07-05 11:51:00', '2019-07-05 11:51:00'),
(43, 'Ice', '<p><span style=\"font-size: 14.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Э</span><span style=\"font-family: \'Times New Roman\', serif; font-size: 14pt;\">нергетический напиток со вкусом лесных ягод и клубники сопровождающийся прохлаждающим эффектом который появляется через 10 сек. После употребления напитка, кофеин – 30 мг. на 100 мл., с добавками ментола и комплекс витаминов группы В</span></p>', '', 'ice', '', 'products/July2019/rKxvtI7bJeuCYEzFqabG.png', '', 6, NULL, NULL, NULL, '2019-07-05 11:51:34', '2019-07-05 11:51:34'),
(44, 'Black alco energy', '<p>Black alco energy</p>', '', 'black-alco-energy', '', 'products/July2019/wD0gPomTRRdgqfYye06J.png', '', 10, NULL, NULL, NULL, '2019-07-05 12:07:54', '2019-07-05 12:07:54'),
(45, 'Cuba libre', '<p>Коктейль на основе рома и когда, считается одним из самых популярных коктейлей в мире. Коктейль входит в список &laquo;современной классики&raquo; международной барменской ассоциации (IBA) и классифицируется как &laquo;Лонг дринк&raquo;.</p>', '', 'cuba-libre', '', 'products/July2019/IyerFzPPrq0gr4FajePo.png', '', 9, NULL, NULL, NULL, '2019-07-05 12:20:34', '2019-07-05 12:13:00'),
(46, 'Gin-Tonic', '<p>Коктейль, содержащий джин и тоник, с добавлением лайма или лимона и льда.</p>', '', 'gin-tonic', '', 'products/July2019/FxY8PDEL37gtJdgEMO5h.png', '', 9, NULL, NULL, NULL, '2019-07-05 12:21:25', '2019-07-05 12:14:00'),
(47, 'Mojitoo', '<p>Коктейль на основе светлого рома и листьев мяты. Происходит с острова Куба, стал очень популярен в США в 1980-х. Коктейль входит в список &laquo;современной классики&raquo; международной ассоциации барменов (IBA) и классифицируется как &laquo;Лонг дринк&raquo;.</p>', '', 'mojitoo', '', 'products/July2019/4t6l8N1hp2t7Pgr2atfL.png', '', 9, NULL, NULL, NULL, '2019-07-05 12:20:21', '2019-07-05 12:14:00');
INSERT INTO `products` (`id`, `name`, `description`, `meta_description`, `slug`, `meta_keywords`, `image`, `seo_title`, `category_id`, `site`, `facebook`, `instagram`, `updated_at`, `created_at`) VALUES
(48, 'Pina Colada', '<p>&laquo;Пина Колада&raquo; - это традиционный карибский алкогольный коктейль на основе светлого рома, с кокосовым молоком и ананасовым соком. Коктейль классифицируется как &laquo;лонг дринк&raquo; и входит в число официальных коктейлей Международной ассоциации барменов (IBA). &laquo;Пина Колада&raquo; считается официальным напитком Пуэрто-Рико.</p>', '', 'pina-colada', '', 'products/July2019/lzhMhGlXuTtpmJqsJRbz.png', '', 9, NULL, NULL, NULL, '2019-07-05 12:22:25', '2019-07-05 12:15:00'),
(49, 'Tequila Sunrise', '<p>Алкогольный коктейль на основе текилы, гренадина и апельсинового сока. Классифицируется как &laquo;лонг дринк&raquo;. Входит в число официальных коктейлей Международной ассоциации барменов (IBA).</p>', '', 'tequila-sunrise', '', 'products/July2019/SavgKv8Wg1JrLPDZtWJY.png', '', 9, NULL, NULL, NULL, '2019-07-05 12:23:10', '2019-07-05 12:16:00'),
(50, 'Вишня', '<p>Яскравий аромат напою перенесе Вас в квітучий вишневий сад, а насичений смак стиглих соковитих ягід чудово освіжить і вгамує спрагу. Крім того, напій не містить цукру, що дозволяє максимально насолодитися смаком без калорій.</p>', '', 'vishnya1', '', 'products/July2019/jp6GvtKpR1k5QJjZhKdd.png', '', 3, NULL, NULL, NULL, '2019-07-12 11:40:20', '2019-07-12 11:40:20'),
(51, 'Яблоко-Эхинацея', '<p>Эхинацея известна своими полезными свойствами и тонизирующим эффектом. Её вкус гармоничносочетается с традиционным вкусом яблока. Прекрасный вкус еще и с пользой для здоровья.</p>', '', 'yabluko-ehinaceya', '', 'products/July2019/68Xho8RMtatVJxPSzGZH.png', '', 3, NULL, NULL, NULL, '2019-07-12 11:42:51', '2019-07-12 11:42:51'),
(52, 'Апельсин', '<p>Яскравий та соковитий апельсин тепер у зручному фоматі напою від ТМ Чудо-Сад! Смачне задоволення в кожній краплі!</p>', '', 'apel-sin1', '', 'products/July2019/ZyA7ctfLHrYLVp09N6x1.png', '', 3, NULL, NULL, NULL, '2019-07-12 11:46:43', '2019-07-12 11:44:00'),
(53, 'Лимон', '<p>Освежающее сочетание лимона и лайма без лишних калорий - это именно то, что нужно в жаркий летний день! Освежайся с удовольствием!</p>', '', 'limon', '', 'products/July2019/M39G93Bo3rZqbTZ64WEY.png', '', 3, NULL, NULL, NULL, '2019-07-12 11:45:32', '2019-07-12 11:45:32'),
(54, 'Лимон-Имбирь', '<p>Открой бутылку солнечного света! Мы выжали все, до последней капли радости из свежих лимонов и добавили натуральный имбирь, чтобы получить этот идеальный лимонад. Пряные имбирные тона тонизируют,&nbsp; прежде чем исчезнуть освежающим, мягким послевкусием цитрусовых.</p>', '', 'limon-imbir', '', 'products/July2019/cnvYyVD1ZUfznKTwKIVl.png', '', 5, NULL, NULL, NULL, '2019-07-12 11:49:52', '2019-07-12 11:49:52'),
(55, 'Клубника-Базилик', '<p>Пикантная новинка!&nbsp; Новый уникальный вкус!</p>\n<p>Нежный дуэт сочной клубники, ароматного базилика и доминирующее соло лимонного сока не оставят жажде никакого шанса!</p>\n<p>Этот вкус напоминает о лете и дарит счастье в каждом глотке!!!</p>', '', 'polunicya-bazilik', '', 'products/July2019/Tk6gXZNBb2t7N6CCUlbf.png', '', 5, NULL, NULL, NULL, '2019-07-12 11:51:22', '2019-07-12 11:51:22'),
(56, 'Лайм-Бузина', '<p>Думаете, знаете о лимонадах все? Как насчет лимонада из цветов?! Лимонад со вкусом лайма и цветов бузины!</p>\n<p>Яркие, освежающие соки лимона и лайма великолепно уравновешивают тонкие тона цветов бузины, чтобы создать удивительно изысканный букет.</p>', '', 'lajm-buzina', '', 'products/July2019/N2NmXzJoD4fw9eTfelke.png', '', 5, NULL, NULL, NULL, '2019-07-12 11:52:53', '2019-07-12 11:52:53'),
(57, 'Лимон-Малина', '<p>Ничто так не утоляет жажду и не поднимает настроение, как вкусный лимонад, приготовленный из любимых ингредиентов!&nbsp;</p>\n<p>Аромат сочной, спелой, созревшей под жарким солнцем&nbsp; малины и сок освежающего лимона ждут тебя в бутылке этого лимонада!</p>', '', 'limon-malina', '', 'products/July2019/SxiR0atA4aBNrjfhn2U3.png', '', 5, NULL, NULL, NULL, '2019-07-12 11:54:09', '2019-07-12 11:54:09');

-- --------------------------------------------------------

--
-- Структура таблицы `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`) VALUES
(1, 1, 1),
(2, 3, 3),
(3, 5, 3),
(4, 4, 2),
(5, 4, 3),
(6, 6, 4),
(7, 7, 3),
(8, 8, 1),
(9, 8, 2),
(10, 2, 1),
(11, 2, 2),
(12, 2, 3),
(13, 9, 1),
(14, 9, 2),
(17, 1, 3),
(18, 14, 1),
(19, 14, 2),
(20, 14, 3),
(22, 15, 1),
(23, 15, 2),
(24, 15, 3),
(25, 15, 4),
(26, 16, 1),
(27, 16, 2),
(28, 16, 3),
(29, 17, 1),
(30, 17, 2),
(31, 17, 3),
(32, 18, 1),
(33, 18, 2),
(34, 18, 3),
(35, 19, 1),
(36, 19, 2),
(37, 19, 3),
(39, 20, 1),
(40, 20, 3),
(41, 21, 3),
(42, 22, 3),
(43, 23, 1),
(44, 23, 2),
(45, 23, 3),
(46, 24, 2),
(47, 24, 3),
(48, 25, 1),
(49, 25, 2),
(50, 25, 3),
(51, 26, 1),
(52, 26, 2),
(53, 26, 3),
(54, 27, 3),
(55, 28, 1),
(56, 28, 2),
(57, 28, 3),
(58, 29, 3),
(59, 30, 1),
(60, 30, 2),
(61, 30, 3),
(62, 31, 3),
(63, 32, 3),
(64, 33, 3),
(65, 34, 1),
(66, 34, 2),
(67, 34, 3),
(68, 35, 3),
(69, 36, 3),
(70, 37, 1),
(71, 37, 2),
(72, 37, 3),
(74, 16, 7),
(75, 38, 1),
(76, 38, 3),
(77, 38, 7),
(78, 39, 1),
(79, 39, 7),
(80, 40, 1),
(81, 40, 7),
(82, 41, 1),
(83, 42, 1),
(84, 43, 1),
(85, 44, 1),
(86, 45, 1),
(87, 46, 1),
(88, 47, 1),
(89, 48, 1),
(90, 49, 1),
(91, 12, 1),
(92, 12, 3),
(93, 11, 3),
(94, 10, 3),
(95, 50, 3),
(96, 51, 3),
(97, 52, 3),
(98, 53, 3),
(99, 54, 3),
(100, 55, 1),
(101, 55, 3),
(102, 56, 1),
(103, 56, 3),
(104, 57, 1),
(105, 57, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `title`, `seo_title`, `description`, `body`, `meta_description`, `meta_keywords`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца', 'Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КомерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.', '<p>Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КоммерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.</p>\n<p><span style=\"white-space: pre-wrap;\"><img src=\"https://bonboisson.spongeservice.com.ua/storage/projects/June2019/image (2).png\" alt=\"\" width=\"1024\" height=\"688\" /></span></p>\n<p><span style=\"white-space: pre-wrap;\">Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов &ndash; крупные западные и российские фонды. Salford Capital Partners Inc. продает один из главных активов фонда VDP (его активы находятся под управлением Salford) &ndash; IDS Borjomi Beverages N.V., рассказал газете один из потенциальных покупателей. На продажу выставлены 100% акций IDS, 87,34% из которых принадлежат фонду, остальное &ndash; миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн. Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд, близкий к Альфа Групп (его название не раскрывается). КоммерсантЪ отмечает, что в TPG, Standart Capital и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по розливу минеральной воды в Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине. Основные марки &ndash; Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и AquaLife. Финпоказатели не раскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вино и минеральную воду.</span></p>', '', '', 'projects\\April2019\\gOUsbt9EjIOwLuurpDQE.jpg', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca', '2019-04-17 12:38:00', '2019-06-04 16:32:30'),
(2, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 1', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца', 'Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КомерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.', '<p>Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КоммерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.</p>\n<p><span style=\"white-space: pre-wrap;\"><img src=\"https://bonboisson.spongeservice.com.ua/storage/projects/June2019/image (2).png\" alt=\"\" width=\"1024\" height=\"688\" /></span></p>\n<p><span style=\"white-space: pre-wrap;\">Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов &ndash; крупные западные и российские фонды. Salford Capital Partners Inc. продает один из главных активов фонда VDP (его активы находятся под управлением Salford) &ndash; IDS Borjomi Beverages N.V., рассказал газете один из потенциальных покупателей. На продажу выставлены 100% акций IDS, 87,34% из которых принадлежат фонду, остальное &ndash; миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн. Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд, близкий к Альфа Групп (его название не раскрывается). КоммерсантЪ отмечает, что в TPG, Standart Capital и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по розливу минеральной воды в Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине. Основные марки &ndash; Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и AquaLife. Финпоказатели не раскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вино и минеральную воду.</span></p>', '', '', 'projects/June2019/GAFbcIfIsOAr1GE1k3wi.jpg', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca-1', '2019-06-03 12:43:00', '2019-06-04 16:32:27'),
(3, 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 2', 'Бренды «Боржоми» и «Миргородская» могут сменить владельца 2', 'Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КомерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.', '<p>Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КоммерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.</p>\n<p><span style=\"white-space: pre-wrap;\"><img src=\"https://bonboisson.spongeservice.com.ua/storage/projects/June2019/image (2).png\" alt=\"\" width=\"1024\" height=\"688\" /></span></p>\n<p><span style=\"white-space: pre-wrap;\">Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов &ndash; крупные западные и российские фонды. Salford Capital Partners Inc. продает один из главных активов фонда VDP (его активы находятся под управлением Salford) &ndash; IDS Borjomi Beverages N.V., рассказал газете один из потенциальных покупателей. На продажу выставлены 100% акций IDS, 87,34% из которых принадлежат фонду, остальное &ndash; миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн. Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд, близкий к Альфа Групп (его название не раскрывается). КоммерсантЪ отмечает, что в TPG, Standart Capital и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по розливу минеральной воды в Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине. Основные марки &ndash; Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и AquaLife. Финпоказатели не раскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вино и минеральную воду.</span></p>', '', '', 'projects/June2019/3YEDWyDVt9z4D1WEH8dr.png', 'brendy-borzhomi-i-mirgorodskaya-mogut-smenit-vladel-ca-2', '2019-06-03 12:44:00', '2019-06-04 16:32:00');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-04-11 05:19:42', '2019-04-11 05:19:42'),
(2, 'user', 'Normal User', '2019-04-11 05:19:42', '2019-04-11 05:19:42');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Bon Boisson', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Bon Boisson', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/June2019/KLDQOeq2twQzs9IKaUf7.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Bon Boisson Admin', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bon Boisson Admin', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/June2019/OcRgnyg20YtnOongx7ay.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, '0.5л', '[{\"download_link\":\"sizes\\\\April2019\\\\PrR2AKRLIMcXj0zKLSIL.svg\",\"original_name\":\"bottle 05lit.svg\"}]', '2019-04-17 04:24:00', '2019-04-17 04:40:01'),
(2, '1.5л', '[]', '2019-05-08 11:15:11', '2019-07-02 09:28:33'),
(3, '2л', '[{\"download_link\":\"sizes\\\\May2019\\\\IvPuVMvZTQcc3ZJs3NH3.svg\",\"original_name\":\"bottle 2lit.svg\"}]', '2019-05-08 11:15:34', '2019-05-08 11:15:34'),
(4, '5л', '[]', '2019-06-03 14:14:59', '2019-06-03 14:14:59'),
(7, '1л', '[{\"download_link\":\"sizes\\/July2019\\/2waKal2GwhVuhabiow0F.png\",\"original_name\":\"\\u0444\\u043e\\u0442\\u043e_\\u0437\\u0430\\u0433\\u043b\\u0443\\u0448\\u043a\\u0430.png\"}]', '2019-07-03 15:01:50', '2019-07-03 15:01:50'),
(8, '0.33л', '[]', '2019-07-16 21:00:00', '2019-07-16 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btn_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `text`, `btn_text`, `btn_link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Натуральная формула минеральной воды', 'Наша вода не имеет противопоказаний и ограничений ввиду низкой минерализации.\r\n', 'Подробнее...', '/about', 'sliders\\July2019\\ogRqaWOTtDInbPccPW7Z.jpg', '2019-05-16 10:14:00', '2019-07-23 06:37:30'),
(2, '2', 'Энергетический напиток со вкусом лесных ягод и клубники сопровождающийся прохлаждающим эффектом который появляется через 10 сек. ', '', NULL, 'sliders\\July2019\\YsqHWu1Raexi6MFzhr36.jpg', '2019-07-17 14:14:00', '2019-07-23 06:35:33');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-04-11 05:22:00', '2019-04-11 05:22:00'),
(31, 'cities', 'name', 1, 'ru', 'Категория', '2019-04-11 05:28:07', '2019-04-11 05:28:07'),
(32, 'cities', 'name', 1, 'ua', 'Category 1', '2019-04-11 05:28:07', '2019-04-11 05:28:07'),
(33, 'menu_items', 'title', 1, 'ru', 'Панель управления', '2019-04-11 05:32:14', '2019-04-11 05:32:14'),
(34, 'menu_items', 'title', 1, 'ua', 'Dashboard', '2019-04-11 05:32:14', '2019-04-11 05:32:14'),
(35, 'menu_items', 'title', 4, 'ru', 'Роли', '2019-04-11 05:32:29', '2019-04-11 05:32:29'),
(36, 'menu_items', 'title', 4, 'ua', 'Roles', '2019-04-11 05:32:29', '2019-04-11 05:32:29'),
(37, 'menu_items', 'title', 3, 'ru', 'Пользователи', '2019-04-11 05:32:57', '2019-04-11 05:32:57'),
(38, 'menu_items', 'title', 3, 'ua', 'Users', '2019-04-11 05:32:57', '2019-04-11 05:32:57'),
(39, 'menu_items', 'title', 2, 'ru', 'Медиа', '2019-04-11 05:33:08', '2019-04-11 05:33:08'),
(40, 'menu_items', 'title', 2, 'ua', 'Media', '2019-04-11 05:33:08', '2019-04-11 05:33:08'),
(41, 'menu_items', 'title', 10, 'ru', 'Настройки', '2019-04-11 05:40:33', '2019-04-11 05:40:33'),
(42, 'menu_items', 'title', 10, 'ua', 'Settings', '2019-04-11 05:40:33', '2019-04-11 05:40:33'),
(43, 'menu_items', 'title', 14, 'ru', 'Страницы', '2019-04-11 05:40:55', '2019-04-11 05:40:55'),
(44, 'menu_items', 'title', 14, 'ua', 'Pages', '2019-04-11 05:40:55', '2019-04-11 05:40:55'),
(45, 'menu_items', 'title', 15, 'ru', 'Города', '2019-04-11 06:00:46', '2019-04-11 06:00:46'),
(46, 'menu_items', 'title', 15, 'ua', 'Cities', '2019-04-11 06:00:46', '2019-04-11 06:00:46'),
(47, 'menu_items', 'title', 6, 'ru', 'Меню билдер', '2019-04-11 06:07:15', '2019-04-11 06:07:15'),
(48, 'menu_items', 'title', 6, 'ua', 'Menu Builder', '2019-04-11 06:07:15', '2019-04-11 06:07:15'),
(49, 'menu_items', 'title', 11, 'ru', 'Хуки', '2019-04-11 06:07:38', '2019-04-11 06:07:38'),
(50, 'menu_items', 'title', 11, 'ua', 'Hooks', '2019-04-11 06:07:38', '2019-04-11 06:07:38'),
(51, 'menu_items', 'title', 16, 'ru', 'Вакансии', '2019-04-11 06:48:36', '2019-04-11 06:48:36'),
(52, 'menu_items', 'title', 16, 'ua', 'Vacancies', '2019-04-11 06:48:36', '2019-04-11 06:48:36'),
(53, 'menu_items', 'title', 17, 'ru', 'Менеджеры', '2019-04-11 06:55:50', '2019-04-11 06:55:50'),
(54, 'menu_items', 'title', 17, 'ua', 'Managers', '2019-04-11 06:55:50', '2019-04-11 06:55:50'),
(55, 'data_types', 'display_name_singular', 9, 'ru', 'Менеджер', '2019-04-11 06:59:17', '2019-04-11 07:10:47'),
(56, 'data_types', 'display_name_singular', 9, 'ua', 'Manager', '2019-04-11 06:59:17', '2019-04-11 06:59:17'),
(57, 'data_types', 'display_name_plural', 9, 'ru', 'Менеджеры', '2019-04-11 06:59:17', '2019-04-11 07:10:47'),
(58, 'data_types', 'display_name_plural', 9, 'ua', 'Managers', '2019-04-11 06:59:17', '2019-04-11 06:59:17'),
(59, 'data_types', 'display_name_singular', 6, 'ru', 'Page', '2019-04-11 07:32:39', '2019-04-11 07:32:39'),
(60, 'data_types', 'display_name_singular', 6, 'ua', 'Page', '2019-04-11 07:32:39', '2019-04-11 07:32:39'),
(61, 'data_types', 'display_name_plural', 6, 'ru', 'Pages', '2019-04-11 07:32:39', '2019-04-11 07:32:39'),
(62, 'data_types', 'display_name_plural', 6, 'ua', 'Pages', '2019-04-11 07:32:39', '2019-04-11 07:32:39'),
(63, 'data_types', 'display_name_singular', 5, 'ru', 'Post', '2019-04-11 08:25:44', '2019-04-11 08:25:44'),
(64, 'data_types', 'display_name_singular', 5, 'ua', 'Post', '2019-04-11 08:25:44', '2019-04-11 08:25:44'),
(65, 'data_types', 'display_name_plural', 5, 'ru', 'Posts', '2019-04-11 08:25:44', '2019-04-11 08:25:44'),
(66, 'data_types', 'display_name_plural', 5, 'ua', 'Posts', '2019-04-11 08:25:44', '2019-04-11 08:25:44'),
(67, 'data_types', 'display_name_singular', 8, 'ru', 'Вакансия', '2019-04-11 08:31:20', '2019-04-11 08:31:20'),
(68, 'data_types', 'display_name_singular', 8, 'ua', 'Vacancy', '2019-04-11 08:31:20', '2019-04-11 08:31:20'),
(69, 'data_types', 'display_name_plural', 8, 'ru', 'Вакансии', '2019-04-11 08:31:20', '2019-04-11 08:31:20'),
(70, 'data_types', 'display_name_plural', 8, 'ua', 'Vacancies', '2019-04-11 08:31:20', '2019-04-11 08:31:20'),
(71, 'menu_items', 'title', 5, 'ru', 'Инструменты', '2019-04-11 08:42:09', '2019-04-11 08:42:09'),
(72, 'menu_items', 'title', 5, 'ua', 'Tools', '2019-04-11 08:42:09', '2019-04-11 08:42:09'),
(73, 'data_types', 'display_name_singular', 7, 'ru', 'City', '2019-04-11 08:43:34', '2019-04-11 08:43:34'),
(74, 'data_types', 'display_name_singular', 7, 'ua', 'City', '2019-04-11 08:43:34', '2019-04-11 08:43:34'),
(75, 'data_types', 'display_name_plural', 7, 'ru', 'Cities', '2019-04-11 08:43:34', '2019-04-11 08:43:34'),
(76, 'data_types', 'display_name_plural', 7, 'ua', 'Cities', '2019-04-11 08:43:34', '2019-04-11 08:43:34'),
(77, 'vacancies', 'title', 1, 'ru', 'Vacancy', '2019-04-11 09:04:09', '2019-04-11 09:05:32'),
(78, 'vacancies', 'title', 1, 'ua', 'dgfhdfghdfh', '2019-04-11 09:04:09', '2019-04-11 09:09:38'),
(79, 'vacancies', 'requirements', 1, 'ru', 'dfgdsfgsdfg', '2019-04-11 09:04:09', '2019-04-11 09:11:42'),
(80, 'vacancies', 'responsibilities', 1, 'ru', 'dsfgdsg', '2019-04-11 09:04:09', '2019-04-11 09:11:42'),
(81, 'vacancies', 'requirements', 1, 'ua', 'dfgdffgdsfg', '2019-04-11 09:11:42', '2019-04-11 09:11:42'),
(82, 'vacancies', 'responsibilities', 1, 'ua', 'dfsgdsg', '2019-04-11 09:11:42', '2019-04-11 09:11:42'),
(83, 'cities', 'name', 1, 'en', 'city', '2019-04-12 05:12:03', '2019-04-12 05:12:03'),
(84, 'cities', 'name', 2, 'ua', '', '2019-04-12 05:12:16', '2019-04-12 05:12:16'),
(85, 'cities', 'name', 2, 'en', '', '2019-04-12 05:12:16', '2019-04-12 05:12:16'),
(86, 'cities', 'name', 3, 'ua', '', '2019-04-12 05:12:26', '2019-04-12 05:12:26'),
(87, 'cities', 'name', 3, 'en', '', '2019-04-12 05:12:26', '2019-04-12 05:12:26'),
(88, 'cities', 'name', 4, 'ua', '', '2019-04-12 05:12:41', '2019-04-12 05:12:41'),
(89, 'cities', 'name', 4, 'en', '', '2019-04-12 05:12:41', '2019-04-12 05:12:41'),
(90, 'managers', 'name', 2, 'ua', '', '2019-04-12 05:15:06', '2019-04-12 05:15:06'),
(91, 'managers', 'name', 2, 'en', '', '2019-04-12 05:15:06', '2019-04-12 05:15:06'),
(92, 'managers', 'position', 2, 'ua', '', '2019-04-12 05:15:06', '2019-04-12 05:15:06'),
(93, 'managers', 'position', 2, 'en', '', '2019-04-12 05:15:06', '2019-04-12 05:15:06'),
(94, 'vacancies', 'title', 2, 'ua', '', '2019-04-12 05:19:50', '2019-04-12 05:19:50'),
(95, 'vacancies', 'title', 2, 'en', '', '2019-04-12 05:19:50', '2019-04-12 05:19:50'),
(96, 'vacancies', 'requirements', 2, 'ua', '', '2019-04-12 05:19:50', '2019-04-12 05:19:50'),
(97, 'vacancies', 'requirements', 2, 'en', '', '2019-04-12 05:19:50', '2019-04-12 05:19:50'),
(98, 'vacancies', 'responsibilities', 2, 'ua', '', '2019-04-12 05:19:50', '2019-04-12 05:19:50'),
(99, 'vacancies', 'responsibilities', 2, 'en', '', '2019-04-12 05:19:50', '2019-04-12 05:19:50'),
(100, 'cities', 'name', 5, 'ua', '', '2019-04-12 05:27:19', '2019-04-12 05:27:19'),
(101, 'cities', 'name', 5, 'en', '', '2019-04-12 05:27:19', '2019-04-12 05:27:19'),
(102, 'data_types', 'display_name_singular', 2, 'ua', '', '2019-04-12 05:31:37', '2019-04-12 05:31:37'),
(103, 'data_types', 'display_name_singular', 2, 'en', 'Menu', '2019-04-12 05:31:37', '2019-04-12 05:31:37'),
(104, 'data_types', 'display_name_plural', 2, 'ua', '', '2019-04-12 05:31:38', '2019-04-12 05:31:38'),
(105, 'data_types', 'display_name_plural', 2, 'en', 'Menus', '2019-04-12 05:31:38', '2019-04-12 05:31:38'),
(106, 'data_types', 'display_name_singular', 7, 'en', 'City', '2019-04-12 05:32:13', '2019-04-12 05:32:13'),
(107, 'data_types', 'display_name_plural', 7, 'en', 'Cities', '2019-04-12 05:32:13', '2019-04-12 05:32:13'),
(108, 'data_types', 'display_name_singular', 1, 'ua', '', '2019-04-12 05:32:52', '2019-04-12 05:32:52'),
(109, 'data_types', 'display_name_singular', 1, 'en', 'User', '2019-04-12 05:32:52', '2019-04-12 05:32:52'),
(110, 'data_types', 'display_name_plural', 1, 'ua', '', '2019-04-12 05:32:52', '2019-04-12 05:32:52'),
(111, 'data_types', 'display_name_plural', 1, 'en', 'Users', '2019-04-12 05:32:52', '2019-04-12 05:32:52'),
(112, 'data_types', 'display_name_singular', 6, 'en', 'Page', '2019-04-12 05:34:18', '2019-04-12 05:34:18'),
(113, 'data_types', 'display_name_plural', 6, 'en', 'Pages', '2019-04-12 05:34:19', '2019-04-12 05:34:19'),
(114, 'data_types', 'display_name_singular', 9, 'en', 'Менеджер', '2019-04-12 05:34:44', '2019-04-12 05:34:44'),
(115, 'data_types', 'display_name_plural', 9, 'en', 'Менеджеры', '2019-04-12 05:34:44', '2019-04-12 05:34:44'),
(116, 'data_types', 'display_name_singular', 3, 'ua', '', '2019-04-12 05:35:29', '2019-04-12 05:35:29'),
(117, 'data_types', 'display_name_singular', 3, 'en', 'Role', '2019-04-12 05:35:29', '2019-04-12 05:35:29'),
(118, 'data_types', 'display_name_plural', 3, 'ua', '', '2019-04-12 05:35:29', '2019-04-12 05:35:29'),
(119, 'data_types', 'display_name_plural', 3, 'en', 'Roles', '2019-04-12 05:35:29', '2019-04-12 05:35:29'),
(120, 'data_types', 'display_name_singular', 5, 'en', 'Post', '2019-04-12 05:39:52', '2019-04-12 05:39:52'),
(121, 'data_types', 'display_name_plural', 5, 'en', 'Posts', '2019-04-12 05:39:52', '2019-04-12 05:39:52'),
(122, 'data_types', 'display_name_singular', 11, 'ua', '', '2019-04-12 06:13:54', '2019-04-12 06:13:54'),
(123, 'data_types', 'display_name_singular', 11, 'en', 'Офис', '2019-04-12 06:13:55', '2019-04-12 06:13:55'),
(124, 'data_types', 'display_name_plural', 11, 'ua', '', '2019-04-12 06:13:55', '2019-04-12 06:13:55'),
(125, 'data_types', 'display_name_plural', 11, 'en', 'Представительства', '2019-04-12 06:13:55', '2019-04-12 06:13:55'),
(128, 'menu_items', 'title', 1, 'en', 'Dashboard', '2019-04-12 09:32:44', '2019-04-12 09:32:44'),
(129, 'menu_items', 'title', 2, 'en', 'Media', '2019-04-12 10:18:21', '2019-04-12 10:18:21'),
(130, 'menu_items', 'title', 14, 'en', 'Pages', '2019-04-12 10:18:54', '2019-04-12 10:18:54'),
(131, 'menu_items', 'title', 16, 'en', 'Vacancies', '2019-04-12 10:19:22', '2019-04-12 10:19:22'),
(132, 'menu_items', 'title', 10, 'en', 'Settings', '2019-04-12 10:19:37', '2019-04-12 10:19:37'),
(135, 'menu_items', 'title', 15, 'en', 'Cities', '2019-04-12 10:20:05', '2019-04-12 10:20:05'),
(136, 'menu_items', 'title', 17, 'en', 'Managers', '2019-04-12 10:20:18', '2019-04-12 10:20:18'),
(137, 'menu_items', 'title', 3, 'en', 'Users', '2019-04-12 10:20:32', '2019-04-12 10:20:32'),
(138, 'menu_items', 'title', 4, 'en', 'Roles', '2019-04-12 10:20:41', '2019-04-12 10:20:41'),
(141, 'menu_items', 'title', 42, 'ua', '', '2019-04-12 10:29:27', '2019-04-12 10:29:27'),
(142, 'menu_items', 'title', 42, 'en', 'Представительства', '2019-04-12 10:29:27', '2019-04-12 10:29:27'),
(143, 'menu_items', 'title', 44, 'ua', '', '2019-04-12 10:29:52', '2019-04-12 10:29:52'),
(144, 'menu_items', 'title', 44, 'en', '', '2019-04-12 10:29:52', '2019-04-12 10:29:52'),
(145, 'menu_items', 'title', 5, 'en', 'Tools', '2019-04-12 10:36:36', '2019-04-12 10:36:36'),
(146, 'menu_items', 'title', 45, 'ua', '', '2019-04-12 10:38:15', '2019-04-12 10:38:15'),
(147, 'menu_items', 'title', 45, 'en', '', '2019-04-12 10:38:15', '2019-04-12 10:38:15'),
(148, 'data_types', 'display_name_singular', 13, 'ua', '', '2019-04-12 12:07:09', '2019-04-12 12:07:09'),
(149, 'data_types', 'display_name_singular', 13, 'en', 'Product', '2019-04-12 12:07:09', '2019-04-12 12:07:09'),
(150, 'data_types', 'display_name_plural', 13, 'ua', '', '2019-04-12 12:07:09', '2019-04-12 12:07:09'),
(151, 'data_types', 'display_name_plural', 13, 'en', 'Products', '2019-04-12 12:07:10', '2019-04-12 12:07:10'),
(152, 'menu_items', 'title', 46, 'ua', '', '2019-04-12 12:07:54', '2019-04-12 12:07:54'),
(153, 'menu_items', 'title', 46, 'en', 'Products', '2019-04-12 12:07:54', '2019-04-12 12:07:54'),
(154, 'data_types', 'display_name_singular', 14, 'ua', '', '2019-04-12 12:31:40', '2019-04-12 12:31:40'),
(155, 'data_types', 'display_name_singular', 14, 'en', 'Категория', '2019-04-12 12:31:41', '2019-04-12 12:31:41'),
(156, 'data_types', 'display_name_plural', 14, 'ua', '', '2019-04-12 12:31:41', '2019-04-12 12:31:41'),
(157, 'data_types', 'display_name_plural', 14, 'en', 'Категории', '2019-04-12 12:31:41', '2019-04-12 12:31:41'),
(178, 'categories', 'title', 3, 'ua', 'Напої Чудо-Сад', '2019-04-12 12:55:18', '2019-07-12 11:12:13'),
(179, 'categories', 'title', 3, 'en', '', '2019-04-12 12:55:19', '2019-04-12 12:55:19'),
(180, 'categories', 'seo_title', 3, 'ua', '', '2019-04-12 12:55:19', '2019-04-12 12:55:19'),
(181, 'categories', 'seo_title', 3, 'en', '', '2019-04-12 12:55:19', '2019-04-12 12:55:19'),
(182, 'categories', 'description', 3, 'ua', '<p>Напої&nbsp; &laquo;Чудо-Сад&raquo; поєднують улюблені смаки лимонадів та фруктів з низькокалорійною формулою. Тому їх можна вживати навіть тим, хто слідкує за своєю вагою та фігурою. Збагачують смак та аромат додавання фруктових соків та екстрактів трав.</p>\n<p>Лимонади &laquo;Чудо-Сад&raquo; зарекомендували себе якісними та смачними, що підтверджує більш ніж 9-річний досвід продажів.</p>\n<p>В лінійці поєднані традиційні лимонади та фруктові смаки.</p>', '2019-04-12 12:55:19', '2019-07-12 11:12:15'),
(183, 'categories', 'description', 3, 'en', '', '2019-04-12 12:55:19', '2019-04-12 12:55:19'),
(184, 'categories', 'meta_description', 3, 'ua', '', '2019-04-12 12:55:19', '2019-04-12 12:55:19'),
(185, 'categories', 'meta_description', 3, 'en', '', '2019-04-12 12:55:19', '2019-04-12 12:55:19'),
(186, 'categories', 'meta_keywords', 3, 'ua', '', '2019-04-12 12:55:19', '2019-04-12 12:55:19'),
(187, 'categories', 'meta_keywords', 3, 'en', '', '2019-04-12 12:55:20', '2019-04-12 12:55:20'),
(188, 'products', 'name', 1, 'ua', 'Лимонад', '2019-04-12 13:04:51', '2019-07-12 11:31:53'),
(189, 'products', 'name', 1, 'en', '', '2019-04-12 13:04:51', '2019-04-12 13:04:51'),
(190, 'products', 'description', 1, 'ua', '<p>Свіжість лимонів, що втамують спрагу, відсутність штучних барвників та цукру довершить почуття задоволення від цього напою.</p>', '2019-04-12 13:04:51', '2019-07-12 11:31:53'),
(191, 'products', 'description', 1, 'en', '', '2019-04-12 13:04:51', '2019-04-12 13:04:51'),
(192, 'products', 'meta_description', 1, 'ua', '', '2019-04-12 13:04:51', '2019-04-12 13:04:51'),
(193, 'products', 'meta_description', 1, 'en', '', '2019-04-12 13:04:51', '2019-04-12 13:04:51'),
(194, 'products', 'meta_keywords', 1, 'ua', '', '2019-04-12 13:04:51', '2019-04-12 13:04:51'),
(195, 'products', 'meta_keywords', 1, 'en', '', '2019-04-12 13:04:51', '2019-04-12 13:04:51'),
(196, 'products', 'seo_title', 1, 'ua', '', '2019-04-12 13:04:52', '2019-04-12 13:04:52'),
(197, 'products', 'seo_title', 1, 'en', '', '2019-04-12 13:04:52', '2019-04-12 13:04:52'),
(198, 'data_types', 'display_name_singular', 8, 'en', 'Вакансия', '2019-04-15 07:19:27', '2019-04-15 07:19:27'),
(199, 'data_types', 'display_name_plural', 8, 'en', 'Вакансии', '2019-04-15 07:19:27', '2019-04-15 07:19:27'),
(200, 'data_types', 'display_name_singular', 15, 'ua', '', '2019-04-16 07:36:54', '2019-04-16 07:36:54'),
(201, 'data_types', 'display_name_singular', 15, 'en', 'Badge', '2019-04-16 07:36:54', '2019-04-16 07:36:54'),
(202, 'data_types', 'display_name_plural', 15, 'ua', '', '2019-04-16 07:36:54', '2019-04-16 07:36:54'),
(203, 'data_types', 'display_name_plural', 15, 'en', 'Badges', '2019-04-16 07:36:54', '2019-04-16 07:36:54'),
(204, 'menu_items', 'title', 48, 'ua', '', '2019-04-16 07:57:34', '2019-04-16 07:57:34'),
(205, 'menu_items', 'title', 48, 'en', 'Badges', '2019-04-16 07:57:34', '2019-04-16 07:57:34'),
(206, 'menu_items', 'title', 49, 'ua', '', '2019-04-16 12:25:10', '2019-04-16 12:25:10'),
(207, 'menu_items', 'title', 49, 'en', '', '2019-04-16 12:25:10', '2019-04-16 12:25:10'),
(208, 'posts', 'title', 5, 'ua', '', '2019-04-16 13:19:54', '2019-04-16 13:19:54'),
(209, 'posts', 'title', 5, 'en', '', '2019-04-16 13:19:54', '2019-04-16 13:19:54'),
(210, 'posts', 'seo_title', 5, 'ua', '', '2019-04-16 13:19:54', '2019-04-16 13:19:54'),
(211, 'posts', 'seo_title', 5, 'en', '', '2019-04-16 13:19:54', '2019-04-16 13:19:54'),
(212, 'posts', 'excerpt', 5, 'ua', '', '2019-04-16 13:19:54', '2019-04-16 13:19:54'),
(213, 'posts', 'excerpt', 5, 'en', '', '2019-04-16 13:19:54', '2019-04-16 13:19:54'),
(214, 'posts', 'body', 5, 'ua', '', '2019-04-16 13:19:54', '2019-04-16 13:19:54'),
(215, 'posts', 'body', 5, 'en', '', '2019-04-16 13:19:55', '2019-04-16 13:19:55'),
(216, 'posts', 'slug', 5, 'ua', '', '2019-04-16 13:19:55', '2019-04-16 13:19:55'),
(217, 'posts', 'slug', 5, 'en', '', '2019-04-16 13:19:55', '2019-04-16 13:19:55'),
(218, 'posts', 'meta_description', 5, 'ua', '', '2019-04-16 13:19:55', '2019-04-16 13:19:55'),
(219, 'posts', 'meta_description', 5, 'en', '', '2019-04-16 13:19:55', '2019-04-16 13:19:55'),
(220, 'posts', 'meta_keywords', 5, 'ua', '', '2019-04-16 13:19:55', '2019-04-16 13:19:55'),
(221, 'posts', 'meta_keywords', 5, 'en', '', '2019-04-16 13:19:55', '2019-04-16 13:19:55'),
(224, 'menu_items', 'title', 51, 'ua', 'Продукція', '2019-04-16 13:30:33', '2019-05-24 12:07:57'),
(225, 'menu_items', 'title', 51, 'en', 'Products', '2019-04-16 13:30:33', '2019-05-24 12:07:58'),
(228, 'sizes', 'name', 1, 'ua', '', '2019-04-17 04:24:21', '2019-04-17 04:24:21'),
(229, 'sizes', 'name', 1, 'en', '', '2019-04-17 04:24:21', '2019-04-17 04:24:21'),
(230, 'data_types', 'display_name_singular', 17, 'ua', '', '2019-04-17 04:39:13', '2019-04-17 04:39:13'),
(231, 'data_types', 'display_name_singular', 17, 'en', 'Объём', '2019-04-17 04:39:13', '2019-04-17 04:39:13'),
(232, 'data_types', 'display_name_plural', 17, 'ua', '', '2019-04-17 04:39:13', '2019-04-17 04:39:13'),
(233, 'data_types', 'display_name_plural', 17, 'en', 'Объёмы', '2019-04-17 04:39:14', '2019-04-17 04:39:14'),
(234, 'pages', 'title', 10, 'ua', 'Главная', '2019-04-17 09:21:23', '2019-06-24 07:57:40'),
(235, 'pages', 'title', 10, 'en', 'Home', '2019-04-17 09:21:24', '2019-04-17 09:21:24'),
(236, 'pages', 'body', 10, 'ua', '', '2019-04-17 09:21:24', '2019-04-17 09:21:24'),
(237, 'pages', 'body', 10, 'en', '<p><br /></p><h3 class=\"text-center\">This is the body of the lorem ipsum page</h3><p class=\"text-center\">This is the body of the lorem ipsum page</p><p><br /></p>', '2019-04-17 09:21:24', '2019-04-17 09:21:24'),
(238, 'pages', 'excerpt', 10, 'ua', 'This is the excerpt for the Lorem Ipsum Page', '2019-04-17 09:21:24', '2019-06-24 07:57:41'),
(239, 'pages', 'excerpt', 10, 'en', 'This is the excerpt for the Lorem Ipsum Page', '2019-04-17 09:21:24', '2019-04-17 09:21:24'),
(240, 'pages', 'meta_description', 10, 'ua', 'This is the meta description', '2019-04-17 09:21:24', '2019-06-24 07:57:41'),
(241, 'pages', 'meta_description', 10, 'en', 'This is the meta description', '2019-04-17 09:21:24', '2019-04-17 09:21:24'),
(250, 'data_types', 'display_name_singular', 10, 'ua', '', '2019-04-17 09:55:58', '2019-04-17 09:55:58'),
(251, 'data_types', 'display_name_singular', 10, 'en', 'Blog Post', '2019-04-17 09:55:58', '2019-04-17 09:55:58'),
(252, 'data_types', 'display_name_plural', 10, 'ua', '', '2019-04-17 09:55:58', '2019-04-17 09:55:58'),
(253, 'data_types', 'display_name_plural', 10, 'en', 'Blog Posts', '2019-04-17 09:55:58', '2019-04-17 09:55:58'),
(280, 'menu_items', 'title', 31, 'ua', '', '2019-04-17 11:51:46', '2019-04-17 11:51:46'),
(281, 'menu_items', 'title', 31, 'en', 'Posts', '2019-04-17 11:51:46', '2019-04-17 11:51:46'),
(282, 'data_types', 'display_name_singular', 18, 'ua', '', '2019-04-17 12:04:22', '2019-04-17 12:04:22'),
(283, 'data_types', 'display_name_singular', 18, 'en', 'Project', '2019-04-17 12:04:22', '2019-04-17 12:04:22'),
(284, 'data_types', 'display_name_plural', 18, 'ua', '', '2019-04-17 12:04:22', '2019-04-17 12:04:22'),
(285, 'data_types', 'display_name_plural', 18, 'en', 'Projects', '2019-04-17 12:04:22', '2019-04-17 12:04:22'),
(286, 'menu_items', 'title', 58, 'ua', '', '2019-04-17 12:20:06', '2019-04-17 12:20:06'),
(287, 'menu_items', 'title', 58, 'en', 'Projects', '2019-04-17 12:20:06', '2019-04-17 12:20:06'),
(288, 'menu_items', 'title', 35, 'ua', 'Про компанію', '2019-04-18 12:47:52', '2019-05-24 12:07:26'),
(289, 'menu_items', 'title', 35, 'en', 'About', '2019-04-18 12:47:55', '2019-04-18 12:47:55'),
(290, 'menu_items', 'title', 36, 'ua', 'Контакти', '2019-04-18 12:48:29', '2019-05-24 12:11:00'),
(291, 'menu_items', 'title', 36, 'en', 'Contacts', '2019-04-18 12:48:29', '2019-05-24 12:11:00'),
(292, 'menu_items', 'title', 59, 'ua', 'Соціальні проекти', '2019-04-18 12:49:08', '2019-05-24 12:10:04'),
(293, 'menu_items', 'title', 59, 'en', 'Social projects', '2019-04-18 12:49:08', '2019-05-24 12:10:04'),
(300, 'menu_items', 'title', 63, 'ua', 'Про компанію', '2019-05-06 05:56:54', '2019-05-17 09:35:49'),
(301, 'menu_items', 'title', 63, 'en', 'About', '2019-05-06 05:56:54', '2019-05-16 06:15:48'),
(302, 'menu_items', 'title', 64, 'ua', 'Продукція', '2019-05-06 05:57:13', '2019-05-17 09:37:05'),
(303, 'menu_items', 'title', 64, 'en', 'Products', '2019-05-06 05:57:13', '2019-05-17 09:37:05'),
(304, 'menu_items', 'title', 65, 'ua', 'Виробництво', '2019-05-06 05:57:26', '2019-05-17 09:37:48'),
(305, 'menu_items', 'title', 65, 'en', 'Production', '2019-05-06 05:57:26', '2019-05-17 09:37:48'),
(306, 'menu_items', 'title', 66, 'ua', 'Соціальні проекти', '2019-05-06 05:58:53', '2019-05-17 09:39:57'),
(307, 'menu_items', 'title', 66, 'en', 'Social projects', '2019-05-06 05:58:54', '2019-05-17 09:39:57'),
(308, 'menu_items', 'title', 67, 'ua', 'Представництва', '2019-05-06 05:59:18', '2019-05-17 09:41:03'),
(309, 'menu_items', 'title', 67, 'en', 'Offices', '2019-05-06 05:59:18', '2019-05-17 09:41:03'),
(310, 'menu_items', 'title', 68, 'ua', 'Контакти', '2019-05-06 05:59:36', '2019-05-17 09:44:19'),
(311, 'menu_items', 'title', 68, 'en', 'Contacts', '2019-05-06 05:59:36', '2019-05-17 09:44:19'),
(312, 'offices', 'street', 3, 'ua', '', '2019-05-07 06:17:59', '2019-05-07 06:17:59'),
(313, 'offices', 'street', 3, 'en', '', '2019-05-07 06:17:59', '2019-05-07 06:17:59'),
(314, 'offices', 'street', 4, 'ua', '', '2019-05-07 06:20:32', '2019-05-07 06:20:32'),
(315, 'offices', 'street', 4, 'en', '', '2019-05-07 06:20:32', '2019-05-07 06:20:32'),
(316, 'cities', 'name', 6, 'ua', '', '2019-05-07 11:03:03', '2019-05-07 11:03:03'),
(317, 'cities', 'name', 6, 'en', '', '2019-05-07 11:03:03', '2019-05-07 11:03:03'),
(318, 'cities', 'name', 7, 'ua', '', '2019-05-07 11:03:14', '2019-05-07 11:03:14'),
(319, 'cities', 'name', 7, 'en', '', '2019-05-07 11:03:14', '2019-05-07 11:03:14'),
(320, 'cities', 'name', 8, 'ua', '', '2019-05-07 11:03:24', '2019-05-07 11:03:24'),
(321, 'cities', 'name', 8, 'en', '', '2019-05-07 11:03:25', '2019-05-07 11:03:25'),
(324, 'menu_items', 'title', 70, 'ua', '', '2019-05-07 11:32:11', '2019-05-07 11:32:11'),
(325, 'menu_items', 'title', 70, 'en', 'Departments', '2019-05-07 11:32:11', '2019-05-07 11:32:11'),
(326, 'data_types', 'display_name_singular', 19, 'ua', '', '2019-05-07 11:36:07', '2019-05-07 11:36:07'),
(327, 'data_types', 'display_name_singular', 19, 'en', 'Department', '2019-05-07 11:36:07', '2019-05-07 11:36:07'),
(328, 'data_types', 'display_name_plural', 19, 'ua', '', '2019-05-07 11:36:07', '2019-05-07 11:36:07'),
(329, 'data_types', 'display_name_plural', 19, 'en', 'Departments', '2019-05-07 11:36:07', '2019-05-07 11:36:07'),
(340, 'categories', 'title', 4, 'ua', 'Соковмісні напої', '2019-05-08 07:11:22', '2019-07-12 11:14:22'),
(341, 'categories', 'title', 4, 'en', '', '2019-05-08 07:11:22', '2019-05-08 07:11:22'),
(342, 'categories', 'seo_title', 4, 'ua', '', '2019-05-08 07:11:22', '2019-05-08 07:11:22'),
(343, 'categories', 'seo_title', 4, 'en', '', '2019-05-08 07:11:22', '2019-05-08 07:11:22'),
(344, 'categories', 'description', 4, 'ua', '<p>Знайома споживачам з 1999 року серія соковмісних напоїв BON BOISSON JUICE в цьому році стала ще краще!</p>\n<p>Ми розширили лінійку смаків та вдосконалили їх рецептури, відтепер можна насолодитися новими смаками, які не залишать Вас байдужими.</p>\n<p>Соковмісні напої BON BOISSON JUICE виготовлені на натуральних сиропах та артезіанській воді з додаванням фруктового соку за державними стандартами.</p>\n<p>Оригінальність смаків підкреслює унікальний дизайн кожної етикетки, які художник малював олівцями, надихаючись країною походження кожного окремого фрукта.</p>', '2019-05-08 07:11:23', '2019-07-12 11:14:23'),
(345, 'categories', 'description', 4, 'en', '', '2019-05-08 07:11:23', '2019-05-08 07:11:23'),
(346, 'categories', 'meta_description', 4, 'ua', '', '2019-05-08 07:11:23', '2019-05-08 07:11:23'),
(347, 'categories', 'meta_description', 4, 'en', '', '2019-05-08 07:11:23', '2019-05-08 07:11:23'),
(348, 'categories', 'meta_keywords', 4, 'ua', '', '2019-05-08 07:11:23', '2019-05-08 07:11:23'),
(349, 'categories', 'meta_keywords', 4, 'en', '', '2019-05-08 07:11:23', '2019-05-08 07:11:23'),
(350, 'categories', 'title', 5, 'ua', 'Лимонади Бон Лимон', '2019-05-08 07:13:03', '2019-07-12 11:09:33'),
(351, 'categories', 'title', 5, 'en', '', '2019-05-08 07:13:03', '2019-05-08 07:13:03'),
(352, 'categories', 'seo_title', 5, 'ua', '', '2019-05-08 07:13:04', '2019-05-08 07:13:04'),
(353, 'categories', 'seo_title', 5, 'en', '', '2019-05-08 07:13:04', '2019-05-08 07:13:04'),
(354, 'categories', 'description', 5, 'ua', '<p>Європейські домашні лимонади надихнули нас на створення незвичайних смаків. Але класичних рецептур, в яких змішано лимони, воду та цукор, нам стало замало. І ми вирішили додати їм досконалості у вигляді малини, бузини, імбиру та полуниці з базиліком.&nbsp;</p>\n<p>Таким чином ми отримали лимонади BON LEMON &ndash; на артезіанській воді, з додаванням лимонного соку,&nbsp;</p>\n<p>лише з натуральними ароматизаторами та барвниками.</p>\n<p>Варто спробувати ці поєднання смаків, адже наші лимонади не мають аналогів в Україні!</p>\n<p>&nbsp;</p>', '2019-05-08 07:13:04', '2019-07-12 11:09:34'),
(355, 'categories', 'description', 5, 'en', '', '2019-05-08 07:13:04', '2019-05-08 07:13:04'),
(356, 'categories', 'meta_description', 5, 'ua', '', '2019-05-08 07:13:04', '2019-05-08 07:13:04'),
(357, 'categories', 'meta_description', 5, 'en', '', '2019-05-08 07:13:04', '2019-05-08 07:13:04'),
(358, 'categories', 'meta_keywords', 5, 'ua', '', '2019-05-08 07:13:04', '2019-05-08 07:13:04'),
(359, 'categories', 'meta_keywords', 5, 'en', '', '2019-05-08 07:13:04', '2019-05-08 07:13:04'),
(360, 'categories', 'title', 6, 'ua', '', '2019-05-08 07:15:28', '2019-05-08 07:15:28'),
(361, 'categories', 'title', 6, 'en', '', '2019-05-08 07:15:28', '2019-05-08 07:15:28'),
(362, 'categories', 'seo_title', 6, 'ua', '', '2019-05-08 07:15:28', '2019-05-08 07:15:28'),
(363, 'categories', 'seo_title', 6, 'en', '', '2019-05-08 07:15:28', '2019-05-08 07:15:28'),
(364, 'categories', 'description', 6, 'ua', '', '2019-05-08 07:15:29', '2019-05-08 07:15:29'),
(365, 'categories', 'description', 6, 'en', '', '2019-05-08 07:15:29', '2019-05-08 07:15:29'),
(366, 'categories', 'meta_description', 6, 'ua', '', '2019-05-08 07:15:29', '2019-05-08 07:15:29'),
(367, 'categories', 'meta_description', 6, 'en', '', '2019-05-08 07:15:29', '2019-05-08 07:15:29'),
(368, 'categories', 'meta_keywords', 6, 'ua', '', '2019-05-08 07:15:29', '2019-05-08 07:15:29'),
(369, 'categories', 'meta_keywords', 6, 'en', '', '2019-05-08 07:15:29', '2019-05-08 07:15:29'),
(370, 'categories', 'title', 7, 'ua', '', '2019-05-08 07:16:48', '2019-05-08 07:16:48'),
(371, 'categories', 'title', 7, 'en', '', '2019-05-08 07:16:48', '2019-05-08 07:16:48'),
(372, 'categories', 'seo_title', 7, 'ua', '', '2019-05-08 07:16:48', '2019-05-08 07:16:48'),
(373, 'categories', 'seo_title', 7, 'en', '', '2019-05-08 07:16:48', '2019-05-08 07:16:48'),
(374, 'categories', 'description', 7, 'ua', '', '2019-05-08 07:16:48', '2019-05-08 07:16:48'),
(375, 'categories', 'description', 7, 'en', '', '2019-05-08 07:16:48', '2019-05-08 07:16:48'),
(376, 'categories', 'meta_description', 7, 'ua', '', '2019-05-08 07:16:48', '2019-05-08 07:16:48'),
(377, 'categories', 'meta_description', 7, 'en', '', '2019-05-08 07:16:49', '2019-05-08 07:16:49'),
(378, 'categories', 'meta_keywords', 7, 'ua', '', '2019-05-08 07:16:49', '2019-05-08 07:16:49'),
(379, 'categories', 'meta_keywords', 7, 'en', '', '2019-05-08 07:16:49', '2019-05-08 07:16:49'),
(390, 'categories', 'title', 9, 'ua', '', '2019-05-08 08:00:27', '2019-05-08 08:00:27'),
(391, 'categories', 'title', 9, 'en', '', '2019-05-08 08:00:27', '2019-05-08 08:00:27'),
(392, 'categories', 'seo_title', 9, 'ua', '', '2019-05-08 08:00:27', '2019-05-08 08:00:27'),
(393, 'categories', 'seo_title', 9, 'en', '', '2019-05-08 08:00:27', '2019-05-08 08:00:27'),
(394, 'categories', 'description', 9, 'ua', '', '2019-05-08 08:00:27', '2019-05-08 08:00:27'),
(395, 'categories', 'description', 9, 'en', '', '2019-05-08 08:00:27', '2019-05-08 08:00:27'),
(396, 'categories', 'meta_description', 9, 'ua', '', '2019-05-08 08:00:28', '2019-05-08 08:00:28'),
(397, 'categories', 'meta_description', 9, 'en', '', '2019-05-08 08:00:28', '2019-05-08 08:00:28'),
(398, 'categories', 'meta_keywords', 9, 'ua', '', '2019-05-08 08:00:28', '2019-05-08 08:00:28'),
(399, 'categories', 'meta_keywords', 9, 'en', '', '2019-05-08 08:00:28', '2019-05-08 08:00:28'),
(400, 'categories', 'title', 10, 'ua', 'Энергетический напиток Black Alco Energy ua', '2019-05-08 08:01:44', '2019-05-14 11:26:08'),
(401, 'categories', 'title', 10, 'en', '', '2019-05-08 08:01:44', '2019-05-08 08:01:44'),
(402, 'categories', 'seo_title', 10, 'ua', '', '2019-05-08 08:01:44', '2019-05-08 08:01:44'),
(403, 'categories', 'seo_title', 10, 'en', '', '2019-05-08 08:01:45', '2019-05-08 08:01:45'),
(404, 'categories', 'description', 10, 'ua', '', '2019-05-08 08:01:45', '2019-05-08 08:01:45'),
(405, 'categories', 'description', 10, 'en', '', '2019-05-08 08:01:45', '2019-05-08 08:01:45'),
(406, 'categories', 'meta_description', 10, 'ua', '', '2019-05-08 08:01:45', '2019-05-08 08:01:45'),
(407, 'categories', 'meta_description', 10, 'en', '', '2019-05-08 08:01:45', '2019-05-08 08:01:45'),
(408, 'categories', 'meta_keywords', 10, 'ua', '', '2019-05-08 08:01:45', '2019-05-08 08:01:45'),
(409, 'categories', 'meta_keywords', 10, 'en', '', '2019-05-08 08:01:45', '2019-05-08 08:01:45'),
(410, 'sizes', 'name', 2, 'ua', '', '2019-05-08 11:15:12', '2019-05-08 11:15:12'),
(411, 'sizes', 'name', 2, 'en', '', '2019-05-08 11:15:12', '2019-05-08 11:15:12'),
(412, 'sizes', 'name', 3, 'ua', '', '2019-05-08 11:15:35', '2019-05-08 11:15:35'),
(413, 'sizes', 'name', 3, 'en', '', '2019-05-08 11:15:35', '2019-05-08 11:15:35'),
(414, 'categories', 'title', 11, 'ua', 'Bon Boisson Balance', '2019-05-08 11:22:12', '2019-07-12 11:15:15'),
(415, 'categories', 'title', 11, 'en', '', '2019-05-08 11:22:12', '2019-05-08 11:22:12'),
(416, 'categories', 'seo_title', 11, 'ua', '', '2019-05-08 11:22:12', '2019-05-08 11:22:12'),
(417, 'categories', 'seo_title', 11, 'en', '', '2019-05-08 11:22:12', '2019-05-08 11:22:12'),
(418, 'categories', 'description', 11, 'ua', '<p>ТМ BON BOISSON BALANCE - природна мінеральна вода з додаванням соку.</p>\n<p>Напої ТМ BON BOISSON BALANCE мають не лише збалансований смак фруктового соку та природної мінеральної води, а ще й зменшені показники калорійності - всього 11 ккал на 100 мл. Таким чином, Ви можете насолоджуватися смачною природною мінеральною водою з мінімальною кількістю калорій!</p>\n<p>Напої BON BOISSON BALANCE - цікава альтернатива:</p>\n<p>- концентрованим сокам,</p>\n<p>- солодким газованим напоям,</p>\n<p>- чистій мінеральній воді.</p>\n<p>BON BOISSON BALANCE - баланс природної води та смаку фруктів!</p>', '2019-05-08 11:22:12', '2019-07-12 11:15:16'),
(419, 'categories', 'description', 11, 'en', '', '2019-05-08 11:22:12', '2019-05-08 11:22:12'),
(420, 'categories', 'meta_description', 11, 'ua', '', '2019-05-08 11:22:13', '2019-05-08 11:22:13'),
(421, 'categories', 'meta_description', 11, 'en', '', '2019-05-08 11:22:13', '2019-05-08 11:22:13'),
(422, 'categories', 'meta_keywords', 11, 'ua', '', '2019-05-08 11:22:13', '2019-05-08 11:22:13'),
(423, 'categories', 'meta_keywords', 11, 'en', '', '2019-05-08 11:22:13', '2019-05-08 11:22:13'),
(424, 'products', 'name', 3, 'ua', '', '2019-05-08 11:23:22', '2019-05-08 11:23:22'),
(425, 'products', 'name', 3, 'en', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(426, 'products', 'description', 3, 'ua', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(427, 'products', 'description', 3, 'en', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(428, 'products', 'meta_description', 3, 'ua', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(429, 'products', 'meta_description', 3, 'en', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(430, 'products', 'meta_keywords', 3, 'ua', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(431, 'products', 'meta_keywords', 3, 'en', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(432, 'products', 'seo_title', 3, 'ua', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(433, 'products', 'seo_title', 3, 'en', '', '2019-05-08 11:23:23', '2019-05-08 11:23:23'),
(434, 'products', 'name', 4, 'ua', '', '2019-05-08 11:24:23', '2019-05-08 11:24:23'),
(435, 'products', 'name', 4, 'en', '', '2019-05-08 11:24:23', '2019-05-08 11:24:23'),
(436, 'products', 'description', 4, 'ua', '', '2019-05-08 11:24:23', '2019-05-08 11:24:23'),
(437, 'products', 'description', 4, 'en', '', '2019-05-08 11:24:23', '2019-05-08 11:24:23'),
(438, 'products', 'meta_description', 4, 'ua', '', '2019-05-08 11:24:23', '2019-05-08 11:24:23'),
(439, 'products', 'meta_description', 4, 'en', '', '2019-05-08 11:24:24', '2019-05-08 11:24:24'),
(440, 'products', 'meta_keywords', 4, 'ua', '', '2019-05-08 11:24:24', '2019-05-08 11:24:24'),
(441, 'products', 'meta_keywords', 4, 'en', '', '2019-05-08 11:24:24', '2019-05-08 11:24:24'),
(442, 'products', 'seo_title', 4, 'ua', '', '2019-05-08 11:24:24', '2019-05-08 11:24:24'),
(443, 'products', 'seo_title', 4, 'en', '', '2019-05-08 11:24:24', '2019-05-08 11:24:24'),
(444, 'products', 'name', 5, 'ua', '', '2019-05-08 11:25:16', '2019-05-08 11:25:16'),
(445, 'products', 'name', 5, 'en', '', '2019-05-08 11:25:16', '2019-05-08 11:25:16'),
(446, 'products', 'description', 5, 'ua', '', '2019-05-08 11:25:16', '2019-05-08 11:25:16'),
(447, 'products', 'description', 5, 'en', '', '2019-05-08 11:25:17', '2019-05-08 11:25:17'),
(448, 'products', 'meta_description', 5, 'ua', '', '2019-05-08 11:25:17', '2019-05-08 11:25:17'),
(449, 'products', 'meta_description', 5, 'en', '', '2019-05-08 11:25:17', '2019-05-08 11:25:17'),
(450, 'products', 'meta_keywords', 5, 'ua', '', '2019-05-08 11:25:17', '2019-05-08 11:25:17'),
(451, 'products', 'meta_keywords', 5, 'en', '', '2019-05-08 11:25:17', '2019-05-08 11:25:17'),
(452, 'products', 'seo_title', 5, 'ua', '', '2019-05-08 11:25:17', '2019-05-08 11:25:17'),
(453, 'products', 'seo_title', 5, 'en', '', '2019-05-08 11:25:17', '2019-05-08 11:25:17'),
(468, 'departments', 'name', 1, 'ua', '', '2019-05-13 04:37:30', '2019-05-13 04:37:30'),
(469, 'departments', 'name', 1, 'en', '', '2019-05-13 04:37:30', '2019-05-13 04:37:30'),
(470, 'departments', 'name', 2, 'ua', '', '2019-05-13 04:37:40', '2019-05-13 04:37:40'),
(471, 'departments', 'name', 2, 'en', '', '2019-05-13 04:37:40', '2019-05-13 04:37:40'),
(472, 'departments', 'name', 3, 'ua', '', '2019-05-13 04:37:52', '2019-05-13 04:37:52'),
(473, 'departments', 'name', 3, 'en', '', '2019-05-13 04:37:52', '2019-05-13 04:37:52'),
(474, 'departments', 'name', 4, 'ua', '', '2019-05-13 04:38:02', '2019-05-13 04:38:02'),
(475, 'departments', 'name', 4, 'en', '', '2019-05-13 04:38:02', '2019-05-13 04:38:02'),
(476, 'departments', 'name', 5, 'ua', '', '2019-05-13 04:38:11', '2019-05-13 04:38:11'),
(477, 'departments', 'name', 5, 'en', '', '2019-05-13 04:38:11', '2019-05-13 04:38:11'),
(478, 'menu_items', 'title', 71, 'ua', 'Філософія', '2019-05-13 08:28:17', '2019-05-17 09:48:34'),
(479, 'menu_items', 'title', 71, 'en', 'Philosophy', '2019-05-13 08:28:17', '2019-05-17 09:48:35'),
(480, 'menu_items', 'title', 72, 'ua', 'Історія компанії', '2019-05-13 08:28:56', '2019-05-17 09:51:22'),
(481, 'menu_items', 'title', 72, 'en', 'History', '2019-05-13 08:28:56', '2019-05-17 09:51:22'),
(482, 'menu_items', 'title', 73, 'ua', 'Виробництво', '2019-05-13 08:29:17', '2019-05-17 09:53:32'),
(483, 'menu_items', 'title', 73, 'en', 'Production', '2019-05-13 08:29:17', '2019-05-17 09:53:32'),
(484, 'menu_items', 'title', 74, 'ua', 'Вакансії', '2019-05-13 08:29:56', '2019-05-17 09:55:53'),
(485, 'menu_items', 'title', 74, 'en', 'Careers', '2019-05-13 08:29:56', '2019-05-17 09:55:54'),
(486, 'menu_items', 'title', 75, 'ua', 'Новини', '2019-05-13 08:30:07', '2019-05-17 09:56:37'),
(487, 'menu_items', 'title', 75, 'en', 'News', '2019-05-13 08:30:08', '2019-05-17 09:56:38'),
(490, 'menu_items', 'title', 77, 'ua', '', '2019-05-15 05:53:18', '2019-05-15 05:53:18'),
(491, 'menu_items', 'title', 77, 'en', 'Histories', '2019-05-15 05:53:19', '2019-05-15 05:53:19'),
(492, 'data_types', 'display_name_singular', 21, 'ua', '', '2019-05-15 05:56:23', '2019-05-15 05:56:23'),
(493, 'data_types', 'display_name_singular', 21, 'en', 'History', '2019-05-15 05:56:24', '2019-05-15 05:56:24'),
(494, 'data_types', 'display_name_plural', 21, 'ua', '', '2019-05-15 05:56:24', '2019-05-15 05:56:24'),
(495, 'data_types', 'display_name_plural', 21, 'en', 'Histories', '2019-05-15 05:56:24', '2019-05-15 05:56:24'),
(496, 'projects', 'title', 1, 'ua', '', '2019-05-16 06:54:17', '2019-05-16 06:54:17'),
(497, 'projects', 'title', 1, 'en', 'Brands \"Borjomi\" and \"Mirgorodskaya\" can change the owner', '2019-05-16 06:54:17', '2019-05-16 06:54:17'),
(498, 'projects', 'description', 1, 'ua', '', '2019-05-16 06:54:17', '2019-05-16 06:54:17'),
(499, 'projects', 'description', 1, 'en', 'Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КомерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.', '2019-05-16 06:54:17', '2019-05-16 06:54:17'),
(500, 'projects', 'body', 1, 'ua', '', '2019-05-16 06:54:18', '2019-05-16 06:54:18'),
(501, 'projects', 'body', 1, 'en', '<p>Знаменитые бренды минеральной воды Боржоми, Миргородская, Моршинская и Трускавецкая могут сменить владельца, пишет газета КомерсантЪ-Украина в статье Боржоми перетекает в руки Бон Буассон.</p>\n<p>&nbsp;</p>\n<p><img src=\"http://127.0.0.1:8000/storage/projects/April2019/social-projects-opened-01.png\" alt=\"\" /></p>\n<p>Как стало известно изданию, их производитель компания IDS Borjomi Beverages N.V. выставлена на продажу и оценивается в $400-500 млн. Среди претендентов - крупные западные и российские фонды.</p>\n<p>&nbsp;</p>\n<p>Salford Capital Partners Inc. продает один из главных активов фонда VDP(его активы находятся под управлением Salford) - IDS Borjomi Beverages N. V., рассказал газете один из потенциальных покупателей. На продажу выставленны 100% акций IDS, 87,34% из которых принадлежат фонду, остальное - миноритариям. Ориентировочная сумма сделки, по его данным, может составить $400-500 млн.</p>\n<p>&nbsp;</p>\n<p>Собеседник издания утверждает, что на сегодняшний день интерес к активу проявил ряд инвестиционных фондов: Standart Capital, Ashmore, Российский фонд прямых инвестиций (РФПИ), TPG Capital, Klever Asset Management, АФК Система, а также фонд близкий к Альфа Групп (его название не расскрывается).</p>\n<p>&nbsp;</p>\n<p>КомерсантЪ отмечает, что в TPG, Standart Capital, и АФК Система от комментариев отказались. Связаться с представителями Ashmore и Klever не удалось. В Salford и IDS Borjomi продажу Боржоми не комментируют, также поступили и в РФПИ. IDS владеет заводом по разливу воды Боржоми, а также Миргородским, Моршинским и Трускавецким заводами минеральных вод в Украине.</p>\n<p>&nbsp;</p>\n<p>Основные марки - Боржоми, Миргородская, Моршинская, Трускавецкая, Старый Миргород и Aqualife. Финпоказатели не расскрываются, участники рынка оценивают оборот IDS в $200-250 млн. Напомним, ранее Россия заявляла, что готова вернуть на свой рынок грузинские вина и минеральную воду.</p>', '2019-05-16 06:54:18', '2019-05-16 06:54:18'),
(502, 'projects', 'meta_description', 1, 'ua', '', '2019-05-16 06:54:18', '2019-05-16 06:54:18'),
(503, 'projects', 'meta_description', 1, 'en', '', '2019-05-16 06:54:18', '2019-05-16 06:54:18'),
(504, 'projects', 'meta_keywords', 1, 'ua', '', '2019-05-16 06:54:18', '2019-05-16 06:54:18'),
(505, 'projects', 'meta_keywords', 1, 'en', '', '2019-05-16 06:54:18', '2019-05-16 06:54:18'),
(506, 'projects', 'seo_title', 1, 'ua', '', '2019-05-16 06:54:19', '2019-05-16 06:54:19'),
(507, 'projects', 'seo_title', 1, 'en', '', '2019-05-16 06:54:19', '2019-05-16 06:54:19'),
(508, 'menu_items', 'title', 78, 'ua', '', '2019-05-16 10:08:43', '2019-05-16 10:08:43'),
(509, 'menu_items', 'title', 78, 'en', 'Sliders', '2019-05-16 10:08:43', '2019-05-16 10:08:43'),
(510, 'data_types', 'display_name_singular', 22, 'ua', '', '2019-05-16 10:11:35', '2019-05-16 10:11:35'),
(511, 'data_types', 'display_name_singular', 22, 'en', 'Slider', '2019-05-16 10:11:35', '2019-05-16 10:11:35'),
(512, 'data_types', 'display_name_plural', 22, 'ua', '', '2019-05-16 10:11:35', '2019-05-16 10:11:35'),
(513, 'data_types', 'display_name_plural', 22, 'en', 'Sliders', '2019-05-16 10:11:36', '2019-05-16 10:11:36'),
(514, 'menu_items', 'title', 79, 'ua', '', '2019-05-21 04:41:47', '2019-05-21 04:41:47'),
(515, 'menu_items', 'title', 79, 'en', '', '2019-05-21 04:41:47', '2019-05-21 04:41:47'),
(516, 'menu_items', 'title', 80, 'ua', '', '2019-05-21 04:42:36', '2019-05-21 04:42:36'),
(517, 'menu_items', 'title', 80, 'en', '', '2019-05-21 04:42:37', '2019-05-21 04:42:37'),
(532, 'menu_items', 'title', 81, 'ua', 'Виробництво', '2019-05-24 12:09:11', '2019-05-24 12:09:11'),
(533, 'menu_items', 'title', 81, 'en', 'Production', '2019-05-24 12:09:11', '2019-05-24 12:09:11'),
(626, 'data_types', 'display_name_singular', 23, 'ua', '', '2019-05-28 13:47:39', '2019-05-28 13:47:39'),
(627, 'data_types', 'display_name_singular', 23, 'en', 'Слайд', '2019-05-28 13:47:39', '2019-05-28 13:47:39'),
(628, 'data_types', 'display_name_plural', 23, 'ua', '', '2019-05-28 13:47:40', '2019-05-28 13:47:40'),
(629, 'data_types', 'display_name_plural', 23, 'en', 'Карусель', '2019-05-28 13:47:41', '2019-05-28 13:47:41'),
(638, 'categories', 'title', 12, 'ua', '', '2019-05-31 12:51:22', '2019-05-31 12:51:22'),
(639, 'categories', 'title', 12, 'en', 'Mineral water', '2019-05-31 12:51:23', '2019-07-22 15:09:53'),
(640, 'categories', 'seo_title', 12, 'ua', '', '2019-05-31 12:51:24', '2019-05-31 12:51:24'),
(641, 'categories', 'seo_title', 12, 'en', '', '2019-05-31 12:51:25', '2019-05-31 12:51:25'),
(642, 'categories', 'description', 12, 'ua', '', '2019-05-31 12:51:25', '2019-05-31 12:51:25'),
(643, 'categories', 'description', 12, 'en', '', '2019-05-31 12:51:26', '2019-05-31 12:51:26'),
(644, 'categories', 'meta_description', 12, 'ua', '', '2019-05-31 12:51:27', '2019-05-31 12:51:27'),
(645, 'categories', 'meta_description', 12, 'en', '', '2019-05-31 12:51:28', '2019-05-31 12:51:28'),
(646, 'categories', 'meta_keywords', 12, 'ua', '', '2019-05-31 12:51:29', '2019-05-31 12:51:29'),
(647, 'categories', 'meta_keywords', 12, 'en', '', '2019-05-31 12:51:30', '2019-05-31 12:51:30'),
(648, 'categories', 'title', 13, 'ua', 'Класичні лимонади', '2019-05-31 12:57:42', '2019-07-12 11:07:58'),
(649, 'categories', 'title', 13, 'en', '', '2019-05-31 12:57:42', '2019-05-31 12:57:42'),
(650, 'categories', 'seo_title', 13, 'ua', '', '2019-05-31 12:57:43', '2019-05-31 12:57:43'),
(651, 'categories', 'seo_title', 13, 'en', '', '2019-05-31 12:57:45', '2019-05-31 12:57:45'),
(652, 'categories', 'description', 13, 'ua', '<p>&nbsp;У далекому 1998 році з лінії розливу зійшли перші пляшки напоїв Золотий серії БОН БУАССОН, створені на основі &laquo;ДСТУ&raquo; і стандартів 70-80-х років минулого століття.</p>\n<p>Ці лимонади були народжені саме як тонізуючі прохолодні напої. Адже в їх склад входить не тільки вода, цукровий сироп і вуглекислота, а й натуральні екстракти трав і фруктів, які надають їм підбадьорливих властивостей. Такі напої не тільки втамовують спрагу, а й знімають втому.&nbsp;</p>\n<p>Всі напої Золотої серії виготовлені на артезіанській воді, на основі натуральних цукрових сиропів. У їх виробництві використовуються тільки натуральні барвники.</p>\n<p>За минулі 20 років ці смаки стали Золотим стандартом на ринку нашої країни і займають перше місце в сегменті традиційних лимонадів. Їх рецептури залишаються незмінними, як і любов наших споживачів. Адже як і раніше, 50% солодких напоїв, вироблених нашою компанією, - це лимонади Золотої серії. Кожен день в Україні купують близько 100 000 пляшок солодких напоїв нашого виробництва.</p>\n<p>Сьогодні лимонади БОН БУАССОН - це не просто ретро-лимонади радянського періоду - це КЛАССИЧНІ ЛИМОНАДИ З ВЛАСНОЇ РЕПУТАЦІЄЮ ТА ІСТОРІЄЮ.</p>\n<p>У 2018 році вони набули нового зовнішного вигляду та продовжують радувати свого споживача стабільною якістю, освіжаючим тонізуючим смаком та яскравим сучасним дизайном!</p>', '2019-05-31 12:57:46', '2019-07-12 11:13:18'),
(653, 'categories', 'description', 13, 'en', '', '2019-05-31 12:57:47', '2019-05-31 12:57:47'),
(654, 'categories', 'meta_description', 13, 'ua', '', '2019-05-31 12:57:48', '2019-05-31 12:57:48'),
(655, 'categories', 'meta_description', 13, 'en', '', '2019-05-31 12:57:49', '2019-05-31 12:57:49'),
(656, 'categories', 'meta_keywords', 13, 'ua', '', '2019-05-31 12:57:50', '2019-05-31 12:57:50'),
(657, 'categories', 'meta_keywords', 13, 'en', '', '2019-05-31 12:57:50', '2019-05-31 12:57:50'),
(658, 'categories', 'title', 14, 'ua', '', '2019-05-31 13:09:15', '2019-05-31 13:09:15'),
(659, 'categories', 'title', 14, 'en', '', '2019-05-31 13:09:16', '2019-05-31 13:09:16'),
(660, 'categories', 'seo_title', 14, 'ua', '', '2019-05-31 13:09:17', '2019-05-31 13:09:17'),
(661, 'categories', 'seo_title', 14, 'en', '', '2019-05-31 13:09:18', '2019-05-31 13:09:18'),
(662, 'categories', 'description', 14, 'ua', '', '2019-05-31 13:09:19', '2019-05-31 13:09:19'),
(663, 'categories', 'description', 14, 'en', '', '2019-05-31 13:09:19', '2019-05-31 13:09:19'),
(664, 'categories', 'meta_description', 14, 'ua', '', '2019-05-31 13:09:20', '2019-05-31 13:09:20'),
(665, 'categories', 'meta_description', 14, 'en', '', '2019-05-31 13:09:21', '2019-05-31 13:09:21'),
(666, 'categories', 'meta_keywords', 14, 'ua', '', '2019-05-31 13:09:22', '2019-05-31 13:09:22'),
(667, 'categories', 'meta_keywords', 14, 'en', '', '2019-05-31 13:09:23', '2019-05-31 13:09:23'),
(668, 'menu_items', 'title', 83, 'ua', '', '2019-05-31 14:27:44', '2019-05-31 14:27:44'),
(669, 'menu_items', 'title', 83, 'en', 'Offices', '2019-05-31 14:27:44', '2019-05-31 14:27:44'),
(712, 'blog_posts', 'title', 14, 'ua', '', '2019-05-31 15:41:08', '2019-05-31 15:41:08'),
(713, 'blog_posts', 'title', 14, 'en', '', '2019-05-31 15:41:08', '2019-05-31 15:41:08'),
(714, 'blog_posts', 'seo_title', 14, 'ua', '', '2019-05-31 15:41:09', '2019-05-31 15:41:09'),
(715, 'blog_posts', 'seo_title', 14, 'en', '', '2019-05-31 15:41:09', '2019-05-31 15:41:09');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(716, 'blog_posts', 'excerpt', 14, 'ua', '', '2019-05-31 15:41:09', '2019-05-31 15:41:09'),
(717, 'blog_posts', 'excerpt', 14, 'en', '', '2019-05-31 15:41:10', '2019-05-31 15:41:10'),
(718, 'blog_posts', 'body', 14, 'ua', '', '2019-05-31 15:41:10', '2019-05-31 15:41:10'),
(719, 'blog_posts', 'body', 14, 'en', '', '2019-05-31 15:41:11', '2019-05-31 15:41:11'),
(720, 'blog_posts', 'slug', 14, 'ua', '', '2019-05-31 15:41:11', '2019-05-31 15:41:11'),
(721, 'blog_posts', 'slug', 14, 'en', '', '2019-05-31 15:41:12', '2019-05-31 15:41:12'),
(722, 'blog_posts', 'meta_description', 14, 'ua', '', '2019-05-31 15:41:12', '2019-05-31 15:41:12'),
(723, 'blog_posts', 'meta_description', 14, 'en', '', '2019-05-31 15:41:12', '2019-05-31 15:41:12'),
(724, 'blog_posts', 'meta_keywords', 14, 'ua', '', '2019-05-31 15:41:13', '2019-05-31 15:41:13'),
(725, 'blog_posts', 'meta_keywords', 14, 'en', '', '2019-05-31 15:41:13', '2019-05-31 15:41:13'),
(726, 'sliders', 'title', 1, 'ua', '', '2019-06-03 09:28:17', '2019-06-03 09:28:17'),
(727, 'sliders', 'title', 1, 'en', 'Натуральная формула минеральной воды', '2019-06-03 09:28:17', '2019-06-03 09:28:17'),
(728, 'sliders', 'text', 1, 'ua', '', '2019-06-03 09:28:17', '2019-06-03 09:28:17'),
(729, 'sliders', 'text', 1, 'en', 'Наша вода не имеет противопоказаний и ограничений ввиду низкой минерализации.\r\n\r\nЕе можно пить и маленьким детям, и пожилым людям, и беременным и всем всем всем.', '2019-06-03 09:28:17', '2019-06-03 09:28:17'),
(730, 'sliders', 'btn_text', 1, 'ua', '', '2019-06-03 09:28:18', '2019-06-03 09:28:18'),
(731, 'sliders', 'btn_text', 1, 'en', 'Подробнее...', '2019-06-03 09:28:18', '2019-06-03 09:28:18'),
(732, 'vacancies', 'title', 3, 'ua', '', '2019-06-03 11:33:14', '2019-06-03 11:33:14'),
(733, 'vacancies', 'title', 3, 'en', '', '2019-06-03 11:33:14', '2019-06-03 11:33:14'),
(734, 'vacancies', 'requirements', 3, 'ua', '', '2019-06-03 11:33:15', '2019-06-03 11:33:15'),
(735, 'vacancies', 'requirements', 3, 'en', '', '2019-06-03 11:33:15', '2019-06-03 11:33:15'),
(736, 'vacancies', 'responsibilities', 3, 'ua', '', '2019-06-03 11:33:16', '2019-06-03 11:33:16'),
(737, 'vacancies', 'responsibilities', 3, 'en', '', '2019-06-03 11:33:16', '2019-06-03 11:33:16'),
(738, 'blog_posts', 'title', 15, 'ua', '', '2019-06-03 12:34:05', '2019-06-03 12:34:05'),
(739, 'blog_posts', 'title', 15, 'en', '', '2019-06-03 12:34:05', '2019-06-03 12:34:05'),
(740, 'blog_posts', 'seo_title', 15, 'ua', '', '2019-06-03 12:34:05', '2019-06-03 12:34:05'),
(741, 'blog_posts', 'seo_title', 15, 'en', '', '2019-06-03 12:34:06', '2019-06-03 12:34:06'),
(742, 'blog_posts', 'excerpt', 15, 'ua', '', '2019-06-03 12:34:06', '2019-06-03 12:34:06'),
(743, 'blog_posts', 'excerpt', 15, 'en', '', '2019-06-03 12:34:06', '2019-06-03 12:34:06'),
(744, 'blog_posts', 'body', 15, 'ua', '', '2019-06-03 12:34:06', '2019-06-03 12:34:06'),
(745, 'blog_posts', 'body', 15, 'en', '', '2019-06-03 12:34:07', '2019-06-03 12:34:07'),
(746, 'blog_posts', 'slug', 15, 'ua', '', '2019-06-03 12:34:07', '2019-06-03 12:34:07'),
(747, 'blog_posts', 'slug', 15, 'en', '', '2019-06-03 12:34:07', '2019-06-03 12:34:07'),
(748, 'blog_posts', 'meta_description', 15, 'ua', '', '2019-06-03 12:34:08', '2019-06-03 12:34:08'),
(749, 'blog_posts', 'meta_description', 15, 'en', '', '2019-06-03 12:34:08', '2019-06-03 12:34:08'),
(750, 'blog_posts', 'meta_keywords', 15, 'ua', '', '2019-06-03 12:34:08', '2019-06-03 12:34:08'),
(751, 'blog_posts', 'meta_keywords', 15, 'en', '', '2019-06-03 12:34:09', '2019-06-03 12:34:09'),
(752, 'blog_posts', 'title', 16, 'ua', '', '2019-06-03 12:34:54', '2019-06-03 12:34:54'),
(753, 'blog_posts', 'title', 16, 'en', '', '2019-06-03 12:34:54', '2019-06-03 12:34:54'),
(754, 'blog_posts', 'seo_title', 16, 'ua', '', '2019-06-03 12:34:55', '2019-06-03 12:34:55'),
(755, 'blog_posts', 'seo_title', 16, 'en', '', '2019-06-03 12:34:55', '2019-06-03 12:34:55'),
(756, 'blog_posts', 'excerpt', 16, 'ua', '', '2019-06-03 12:34:55', '2019-06-03 12:34:55'),
(757, 'blog_posts', 'excerpt', 16, 'en', '', '2019-06-03 12:34:56', '2019-06-03 12:34:56'),
(758, 'blog_posts', 'body', 16, 'ua', '', '2019-06-03 12:34:56', '2019-06-03 12:34:56'),
(759, 'blog_posts', 'body', 16, 'en', '', '2019-06-03 12:34:57', '2019-06-03 12:34:57'),
(760, 'blog_posts', 'slug', 16, 'ua', '', '2019-06-03 12:34:57', '2019-06-03 12:34:57'),
(761, 'blog_posts', 'slug', 16, 'en', '', '2019-06-03 12:34:57', '2019-06-03 12:34:57'),
(762, 'blog_posts', 'meta_description', 16, 'ua', '', '2019-06-03 12:34:58', '2019-06-03 12:34:58'),
(763, 'blog_posts', 'meta_description', 16, 'en', '', '2019-06-03 12:34:58', '2019-06-03 12:34:58'),
(764, 'blog_posts', 'meta_keywords', 16, 'ua', '', '2019-06-03 12:34:59', '2019-06-03 12:34:59'),
(765, 'blog_posts', 'meta_keywords', 16, 'en', '', '2019-06-03 12:34:59', '2019-06-03 12:34:59'),
(766, 'blog_posts', 'title', 17, 'ua', '', '2019-06-03 12:35:25', '2019-06-03 12:35:25'),
(767, 'blog_posts', 'title', 17, 'en', '', '2019-06-03 12:35:25', '2019-06-03 12:35:25'),
(768, 'blog_posts', 'seo_title', 17, 'ua', '', '2019-06-03 12:35:25', '2019-06-03 12:35:25'),
(769, 'blog_posts', 'seo_title', 17, 'en', '', '2019-06-03 12:35:26', '2019-06-03 12:35:26'),
(770, 'blog_posts', 'excerpt', 17, 'ua', '', '2019-06-03 12:35:26', '2019-06-03 12:35:26'),
(771, 'blog_posts', 'excerpt', 17, 'en', '', '2019-06-03 12:35:26', '2019-06-03 12:35:26'),
(772, 'blog_posts', 'body', 17, 'ua', '', '2019-06-03 12:35:27', '2019-06-03 12:35:27'),
(773, 'blog_posts', 'body', 17, 'en', '', '2019-06-03 12:35:27', '2019-06-03 12:35:27'),
(774, 'blog_posts', 'slug', 17, 'ua', '', '2019-06-03 12:35:28', '2019-06-03 12:35:28'),
(775, 'blog_posts', 'slug', 17, 'en', '', '2019-06-03 12:35:28', '2019-06-03 12:35:28'),
(776, 'blog_posts', 'meta_description', 17, 'ua', '', '2019-06-03 12:35:29', '2019-06-03 12:35:29'),
(777, 'blog_posts', 'meta_description', 17, 'en', '', '2019-06-03 12:35:29', '2019-06-03 12:35:29'),
(778, 'blog_posts', 'meta_keywords', 17, 'ua', '', '2019-06-03 12:35:30', '2019-06-03 12:35:30'),
(779, 'blog_posts', 'meta_keywords', 17, 'en', '', '2019-06-03 12:35:30', '2019-06-03 12:35:30'),
(780, 'blog_posts', 'title', 18, 'ua', '', '2019-06-03 12:35:50', '2019-06-03 12:35:50'),
(781, 'blog_posts', 'title', 18, 'en', '', '2019-06-03 12:35:50', '2019-06-03 12:35:50'),
(782, 'blog_posts', 'seo_title', 18, 'ua', '', '2019-06-03 12:35:50', '2019-06-03 12:35:50'),
(783, 'blog_posts', 'seo_title', 18, 'en', '', '2019-06-03 12:35:51', '2019-06-03 12:35:51'),
(784, 'blog_posts', 'excerpt', 18, 'ua', '', '2019-06-03 12:35:51', '2019-06-03 12:35:51'),
(785, 'blog_posts', 'excerpt', 18, 'en', '', '2019-06-03 12:35:52', '2019-06-03 12:35:52'),
(786, 'blog_posts', 'body', 18, 'ua', '', '2019-06-03 12:35:52', '2019-06-03 12:35:52'),
(787, 'blog_posts', 'body', 18, 'en', '', '2019-06-03 12:35:53', '2019-06-03 12:35:53'),
(788, 'blog_posts', 'slug', 18, 'ua', '', '2019-06-03 12:35:53', '2019-06-03 12:35:53'),
(789, 'blog_posts', 'slug', 18, 'en', '', '2019-06-03 12:35:54', '2019-06-03 12:35:54'),
(790, 'blog_posts', 'meta_description', 18, 'ua', '', '2019-06-03 12:35:54', '2019-06-03 12:35:54'),
(791, 'blog_posts', 'meta_description', 18, 'en', '', '2019-06-03 12:35:54', '2019-06-03 12:35:54'),
(792, 'blog_posts', 'meta_keywords', 18, 'ua', '', '2019-06-03 12:35:55', '2019-06-03 12:35:55'),
(793, 'blog_posts', 'meta_keywords', 18, 'en', '', '2019-06-03 12:35:55', '2019-06-03 12:35:55'),
(794, 'projects', 'title', 2, 'ua', '', '2019-06-03 12:43:51', '2019-06-03 12:43:51'),
(795, 'projects', 'title', 2, 'en', '', '2019-06-03 12:43:51', '2019-06-03 12:43:51'),
(796, 'projects', 'description', 2, 'ua', '', '2019-06-03 12:43:51', '2019-06-03 12:43:51'),
(797, 'projects', 'description', 2, 'en', '', '2019-06-03 12:43:52', '2019-06-03 12:43:52'),
(798, 'projects', 'body', 2, 'ua', '', '2019-06-03 12:43:52', '2019-06-03 12:43:52'),
(799, 'projects', 'body', 2, 'en', '', '2019-06-03 12:43:53', '2019-06-03 12:43:53'),
(800, 'projects', 'meta_description', 2, 'ua', '', '2019-06-03 12:43:53', '2019-06-03 12:43:53'),
(801, 'projects', 'meta_description', 2, 'en', '', '2019-06-03 12:43:54', '2019-06-03 12:43:54'),
(802, 'projects', 'meta_keywords', 2, 'ua', '', '2019-06-03 12:43:54', '2019-06-03 12:43:54'),
(803, 'projects', 'meta_keywords', 2, 'en', '', '2019-06-03 12:43:54', '2019-06-03 12:43:54'),
(804, 'projects', 'seo_title', 2, 'ua', '', '2019-06-03 12:43:55', '2019-06-03 12:43:55'),
(805, 'projects', 'seo_title', 2, 'en', '', '2019-06-03 12:43:55', '2019-06-03 12:43:55'),
(806, 'projects', 'title', 3, 'ua', '', '2019-06-03 12:44:22', '2019-06-03 12:44:22'),
(807, 'projects', 'title', 3, 'en', '', '2019-06-03 12:44:23', '2019-06-03 12:44:23'),
(808, 'projects', 'description', 3, 'ua', '', '2019-06-03 12:44:23', '2019-06-03 12:44:23'),
(809, 'projects', 'description', 3, 'en', '', '2019-06-03 12:44:23', '2019-06-03 12:44:23'),
(810, 'projects', 'body', 3, 'ua', '', '2019-06-03 12:44:24', '2019-06-03 12:44:24'),
(811, 'projects', 'body', 3, 'en', '', '2019-06-03 12:44:24', '2019-06-03 12:44:24'),
(812, 'projects', 'meta_description', 3, 'ua', '', '2019-06-03 12:44:25', '2019-06-03 12:44:25'),
(813, 'projects', 'meta_description', 3, 'en', '', '2019-06-03 12:44:25', '2019-06-03 12:44:25'),
(814, 'projects', 'meta_keywords', 3, 'ua', '', '2019-06-03 12:44:26', '2019-06-03 12:44:26'),
(815, 'projects', 'meta_keywords', 3, 'en', '', '2019-06-03 12:44:26', '2019-06-03 12:44:26'),
(816, 'projects', 'seo_title', 3, 'ua', '', '2019-06-03 12:44:27', '2019-06-03 12:44:27'),
(817, 'projects', 'seo_title', 3, 'en', '', '2019-06-03 12:44:28', '2019-06-03 12:44:28'),
(818, 'products', 'name', 6, 'ua', '', '2019-06-03 14:06:44', '2019-06-03 14:06:44'),
(819, 'products', 'name', 6, 'en', '', '2019-06-03 14:06:45', '2019-06-03 14:06:45'),
(820, 'products', 'description', 6, 'ua', '', '2019-06-03 14:06:45', '2019-06-03 14:06:45'),
(821, 'products', 'description', 6, 'en', '', '2019-06-03 14:06:46', '2019-06-03 14:06:46'),
(822, 'products', 'meta_description', 6, 'ua', '', '2019-06-03 14:06:46', '2019-06-03 14:06:46'),
(823, 'products', 'meta_description', 6, 'en', '', '2019-06-03 14:06:46', '2019-06-03 14:06:46'),
(824, 'products', 'meta_keywords', 6, 'ua', '', '2019-06-03 14:06:47', '2019-06-03 14:06:47'),
(825, 'products', 'meta_keywords', 6, 'en', '', '2019-06-03 14:06:47', '2019-06-03 14:06:47'),
(826, 'products', 'seo_title', 6, 'ua', '', '2019-06-03 14:06:48', '2019-06-03 14:06:48'),
(827, 'products', 'seo_title', 6, 'en', '', '2019-06-03 14:06:48', '2019-06-03 14:06:48'),
(828, 'sizes', 'name', 4, 'ua', '', '2019-06-03 14:14:59', '2019-06-03 14:14:59'),
(829, 'sizes', 'name', 4, 'en', '', '2019-06-03 14:15:00', '2019-06-03 14:15:00'),
(830, 'products', 'name', 7, 'ua', '', '2019-06-03 14:39:48', '2019-06-03 14:39:48'),
(831, 'products', 'name', 7, 'en', '', '2019-06-03 14:39:49', '2019-06-03 14:39:49'),
(832, 'products', 'description', 7, 'ua', '', '2019-06-03 14:39:49', '2019-06-03 14:39:49'),
(833, 'products', 'description', 7, 'en', '', '2019-06-03 14:39:50', '2019-06-03 14:39:50'),
(834, 'products', 'meta_description', 7, 'ua', '', '2019-06-03 14:39:50', '2019-06-03 14:39:50'),
(835, 'products', 'meta_description', 7, 'en', '', '2019-06-03 14:39:50', '2019-06-03 14:39:50'),
(836, 'products', 'meta_keywords', 7, 'ua', '', '2019-06-03 14:39:51', '2019-06-03 14:39:51'),
(837, 'products', 'meta_keywords', 7, 'en', '', '2019-06-03 14:39:51', '2019-06-03 14:39:51'),
(838, 'products', 'seo_title', 7, 'ua', '', '2019-06-03 14:39:52', '2019-06-03 14:39:52'),
(839, 'products', 'seo_title', 7, 'en', '', '2019-06-03 14:39:52', '2019-06-03 14:39:52'),
(860, 'products', 'name', 10, 'ua', 'Тархун', '2019-06-03 16:59:15', '2019-07-12 11:36:51'),
(861, 'products', 'name', 10, 'en', '', '2019-06-03 16:59:16', '2019-06-03 16:59:16'),
(862, 'products', 'description', 10, 'ua', '<p>З давніх-давен, відомо, що напої з травою Тархун втамовували спрагу та надавали наснаги мандрівникам. Ми взяли все найкраще від природи та зробили для Вас наш Тархун.</p>', '2019-06-03 16:59:16', '2019-07-12 11:36:52'),
(863, 'products', 'description', 10, 'en', '', '2019-06-03 16:59:17', '2019-06-03 16:59:17'),
(864, 'products', 'meta_description', 10, 'ua', '', '2019-06-03 16:59:17', '2019-06-03 16:59:17'),
(865, 'products', 'meta_description', 10, 'en', '', '2019-06-03 16:59:18', '2019-06-03 16:59:18'),
(866, 'products', 'meta_keywords', 10, 'ua', '', '2019-06-03 16:59:18', '2019-06-03 16:59:18'),
(867, 'products', 'meta_keywords', 10, 'en', '', '2019-06-03 16:59:19', '2019-06-03 16:59:19'),
(868, 'products', 'seo_title', 10, 'ua', '', '2019-06-03 16:59:19', '2019-06-03 16:59:19'),
(869, 'products', 'seo_title', 10, 'en', '', '2019-06-03 16:59:19', '2019-06-03 16:59:19'),
(870, 'products', 'name', 11, 'ua', 'Ситро', '2019-06-03 16:59:56', '2019-07-12 11:35:43'),
(871, 'products', 'name', 11, 'en', '', '2019-06-03 16:59:57', '2019-06-03 16:59:57'),
(872, 'products', 'description', 11, 'ua', '<p>Сама назва викликає&nbsp; яскраві спогади&nbsp; -&nbsp; задоволення від склянки прохолодного напою спекотною дниною. Напій, що втамує спрагу та подарує смак цитрусових.</p>\n<p>&nbsp;</p>', '2019-06-03 16:59:57', '2019-07-12 11:35:44'),
(873, 'products', 'description', 11, 'en', '', '2019-06-03 16:59:58', '2019-06-03 16:59:58'),
(874, 'products', 'meta_description', 11, 'ua', '', '2019-06-03 16:59:58', '2019-06-03 16:59:58'),
(875, 'products', 'meta_description', 11, 'en', '', '2019-06-03 16:59:59', '2019-06-03 16:59:59'),
(876, 'products', 'meta_keywords', 11, 'ua', '', '2019-06-03 17:00:00', '2019-06-03 17:00:00'),
(877, 'products', 'meta_keywords', 11, 'en', '', '2019-06-03 17:00:00', '2019-06-03 17:00:00'),
(878, 'products', 'seo_title', 11, 'ua', '', '2019-06-03 17:00:01', '2019-06-03 17:00:01'),
(879, 'products', 'seo_title', 11, 'en', '', '2019-06-03 17:00:01', '2019-06-03 17:00:01'),
(880, 'products', 'name', 12, 'ua', 'Байкал', '2019-06-03 17:01:15', '2019-07-12 11:33:33'),
(881, 'products', 'name', 12, 'en', '', '2019-06-03 17:01:15', '2019-06-03 17:01:15'),
(882, 'products', 'description', 12, 'ua', '<p>Традиційний смак, що знайомий багатьом з дитинства.&nbsp;</p>\n<p>Трави, коріння та екстракти наповнюють напій неперевершеним смаком.</p>\n<p>А головне, той смак без калорій.</p>', '2019-06-03 17:01:15', '2019-07-12 11:33:34'),
(883, 'products', 'description', 12, 'en', '', '2019-06-03 17:01:16', '2019-06-03 17:01:16'),
(884, 'products', 'meta_description', 12, 'ua', '', '2019-06-03 17:01:16', '2019-06-03 17:01:16'),
(885, 'products', 'meta_description', 12, 'en', '', '2019-06-03 17:01:16', '2019-06-03 17:01:16'),
(886, 'products', 'meta_keywords', 12, 'ua', '', '2019-06-03 17:01:17', '2019-06-03 17:01:17'),
(887, 'products', 'meta_keywords', 12, 'en', '', '2019-06-03 17:01:17', '2019-06-03 17:01:17'),
(888, 'products', 'seo_title', 12, 'ua', '', '2019-06-03 17:01:18', '2019-06-03 17:01:18'),
(889, 'products', 'seo_title', 12, 'en', '', '2019-06-03 17:01:18', '2019-06-03 17:01:18'),
(890, 'cities', 'name', 9, 'ua', '', '2019-06-04 11:09:07', '2019-06-04 11:09:07'),
(891, 'cities', 'name', 9, 'en', '', '2019-06-04 11:09:07', '2019-06-04 11:09:07'),
(892, 'cities', 'name', 10, 'ua', '', '2019-06-04 11:09:52', '2019-06-04 11:09:52'),
(893, 'cities', 'name', 10, 'en', '', '2019-06-04 11:09:52', '2019-06-04 11:09:52'),
(894, 'cities', 'name', 11, 'ua', '', '2019-06-04 11:10:20', '2019-06-04 11:10:20'),
(895, 'cities', 'name', 11, 'en', '', '2019-06-04 11:10:21', '2019-06-04 11:10:21'),
(896, 'cities', 'name', 12, 'ua', '', '2019-06-04 11:10:45', '2019-06-04 11:10:45'),
(897, 'cities', 'name', 12, 'en', '', '2019-06-04 11:10:45', '2019-06-04 11:10:45'),
(898, 'cities', 'name', 13, 'ua', '', '2019-06-04 11:11:02', '2019-06-04 11:11:02'),
(899, 'cities', 'name', 13, 'en', '', '2019-06-04 11:11:02', '2019-06-04 11:11:02'),
(900, 'cities', 'name', 14, 'ua', '', '2019-06-04 11:11:23', '2019-06-04 11:11:23'),
(901, 'cities', 'name', 14, 'en', '', '2019-06-04 11:11:23', '2019-06-04 11:11:23'),
(902, 'offices', 'street', 6, 'ua', '', '2019-06-04 11:18:38', '2019-06-04 11:18:38'),
(903, 'offices', 'street', 6, 'en', '', '2019-06-04 11:18:39', '2019-06-04 11:18:39'),
(904, 'cities', 'name', 15, 'ua', '', '2019-06-04 11:28:15', '2019-06-04 11:28:15'),
(905, 'cities', 'name', 15, 'en', '', '2019-06-04 11:28:16', '2019-06-04 11:28:16'),
(906, 'offices', 'street', 7, 'ua', '', '2019-06-04 11:29:13', '2019-06-04 11:29:13'),
(907, 'offices', 'street', 7, 'en', '', '2019-06-04 11:29:14', '2019-06-04 11:29:14'),
(908, 'offices', 'street', 8, 'ua', '', '2019-06-04 11:29:49', '2019-06-04 11:29:49'),
(909, 'offices', 'street', 8, 'en', '', '2019-06-04 11:29:49', '2019-06-04 11:29:49'),
(910, 'offices', 'street', 9, 'ua', '', '2019-06-04 11:30:17', '2019-06-04 11:30:17'),
(911, 'offices', 'street', 9, 'en', '', '2019-06-04 11:30:18', '2019-06-04 11:30:18'),
(912, 'offices', 'street', 10, 'ua', '', '2019-06-04 11:31:16', '2019-06-04 11:31:16'),
(913, 'offices', 'street', 10, 'en', '', '2019-06-04 11:31:16', '2019-06-04 11:31:16'),
(914, 'offices', 'street', 11, 'ua', '', '2019-06-04 11:32:15', '2019-06-04 11:32:15'),
(915, 'offices', 'street', 11, 'en', '', '2019-06-04 11:32:16', '2019-06-04 11:32:16'),
(916, 'offices', 'street', 12, 'ua', '', '2019-06-04 11:33:01', '2019-06-04 11:33:01'),
(917, 'offices', 'street', 12, 'en', '', '2019-06-04 11:33:01', '2019-06-04 11:33:01'),
(918, 'offices', 'street', 13, 'ua', '', '2019-06-07 12:23:45', '2019-06-07 12:23:45'),
(919, 'offices', 'street', 13, 'en', '', '2019-06-07 12:23:45', '2019-06-07 12:23:45'),
(920, 'offices', 'street', 14, 'ua', '', '2019-06-07 12:24:54', '2019-06-07 12:24:54'),
(921, 'offices', 'street', 14, 'en', '', '2019-06-07 12:24:54', '2019-06-07 12:24:54'),
(922, 'offices', 'street', 15, 'ua', '', '2019-06-07 12:25:33', '2019-06-07 12:25:33'),
(923, 'offices', 'street', 15, 'en', '', '2019-06-07 12:25:34', '2019-06-07 12:25:34'),
(924, 'offices', 'street', 16, 'ua', '', '2019-06-07 12:26:42', '2019-06-07 12:26:42'),
(925, 'offices', 'street', 16, 'en', '', '2019-06-07 12:26:42', '2019-06-07 12:26:42'),
(926, 'offices', 'street', 17, 'ua', '', '2019-06-07 12:27:23', '2019-06-07 12:27:23'),
(927, 'offices', 'street', 17, 'en', '', '2019-06-07 12:27:23', '2019-06-07 12:27:23'),
(928, 'offices', 'street', 18, 'ua', '', '2019-06-07 12:29:56', '2019-06-07 12:29:56'),
(929, 'offices', 'street', 18, 'en', '', '2019-06-07 12:29:56', '2019-06-07 12:29:56'),
(930, 'cities', 'name', 16, 'ua', '', '2019-06-07 12:31:28', '2019-06-07 12:31:28'),
(931, 'cities', 'name', 16, 'en', '', '2019-06-07 12:31:28', '2019-06-07 12:31:28'),
(932, 'offices', 'street', 19, 'ua', '', '2019-06-07 12:33:25', '2019-06-07 12:33:25'),
(933, 'offices', 'street', 19, 'en', '', '2019-06-07 12:33:26', '2019-06-07 12:33:26'),
(946, 'products', 'name', 14, 'ua', '', '2019-07-01 12:48:52', '2019-07-01 12:48:52'),
(947, 'products', 'name', 14, 'en', '', '2019-07-01 12:48:52', '2019-07-01 12:48:52'),
(948, 'products', 'description', 14, 'ua', '', '2019-07-01 12:48:53', '2019-07-01 12:48:53'),
(949, 'products', 'description', 14, 'en', '', '2019-07-01 12:48:53', '2019-07-01 12:48:53'),
(950, 'products', 'meta_description', 14, 'ua', '', '2019-07-01 12:48:53', '2019-07-01 12:48:53'),
(951, 'products', 'meta_description', 14, 'en', '', '2019-07-01 12:48:54', '2019-07-01 12:48:54'),
(952, 'products', 'meta_keywords', 14, 'ua', '', '2019-07-01 12:48:54', '2019-07-01 12:48:54'),
(953, 'products', 'meta_keywords', 14, 'en', '', '2019-07-01 12:48:54', '2019-07-01 12:48:54'),
(954, 'products', 'seo_title', 14, 'ua', '', '2019-07-01 12:48:54', '2019-07-01 12:48:54'),
(955, 'products', 'seo_title', 14, 'en', '', '2019-07-01 12:48:55', '2019-07-01 12:48:55'),
(956, 'products', 'name', 15, 'ua', '', '2019-07-01 13:03:35', '2019-07-01 13:03:35'),
(957, 'products', 'name', 15, 'en', '', '2019-07-01 13:03:35', '2019-07-01 13:03:35'),
(958, 'products', 'description', 15, 'ua', '', '2019-07-01 13:03:35', '2019-07-01 13:03:35'),
(959, 'products', 'description', 15, 'en', '', '2019-07-01 13:03:36', '2019-07-01 13:03:36'),
(960, 'products', 'meta_description', 15, 'ua', '', '2019-07-01 13:03:36', '2019-07-01 13:03:36'),
(961, 'products', 'meta_description', 15, 'en', '', '2019-07-01 13:03:36', '2019-07-01 13:03:36'),
(962, 'products', 'meta_keywords', 15, 'ua', '', '2019-07-01 13:03:37', '2019-07-01 13:03:37'),
(963, 'products', 'meta_keywords', 15, 'en', '', '2019-07-01 13:03:37', '2019-07-01 13:03:37'),
(964, 'products', 'seo_title', 15, 'ua', '', '2019-07-01 13:03:37', '2019-07-01 13:03:37'),
(965, 'products', 'seo_title', 15, 'en', '', '2019-07-01 13:03:37', '2019-07-01 13:03:37'),
(966, 'products', 'name', 16, 'ua', '', '2019-07-01 13:31:07', '2019-07-01 13:31:07'),
(967, 'products', 'name', 16, 'en', '', '2019-07-01 13:31:08', '2019-07-01 13:31:08'),
(968, 'products', 'description', 16, 'ua', '', '2019-07-01 13:31:08', '2019-07-01 13:31:08'),
(969, 'products', 'description', 16, 'en', '', '2019-07-01 13:31:08', '2019-07-01 13:31:08'),
(970, 'products', 'meta_description', 16, 'ua', '', '2019-07-01 13:31:08', '2019-07-01 13:31:08'),
(971, 'products', 'meta_description', 16, 'en', '', '2019-07-01 13:31:09', '2019-07-01 13:31:09'),
(972, 'products', 'meta_keywords', 16, 'ua', '', '2019-07-01 13:31:09', '2019-07-01 13:31:09'),
(973, 'products', 'meta_keywords', 16, 'en', '', '2019-07-01 13:31:09', '2019-07-01 13:31:09'),
(974, 'products', 'seo_title', 16, 'ua', '', '2019-07-01 13:31:10', '2019-07-01 13:31:10'),
(975, 'products', 'seo_title', 16, 'en', '', '2019-07-01 13:31:10', '2019-07-01 13:31:10'),
(976, 'products', 'name', 17, 'ua', '', '2019-07-01 14:02:31', '2019-07-01 14:02:31'),
(977, 'products', 'name', 17, 'en', '', '2019-07-01 14:02:31', '2019-07-01 14:02:31'),
(978, 'products', 'description', 17, 'ua', '', '2019-07-01 14:02:31', '2019-07-01 14:02:31'),
(979, 'products', 'description', 17, 'en', '', '2019-07-01 14:02:32', '2019-07-01 14:02:32'),
(980, 'products', 'meta_description', 17, 'ua', '', '2019-07-01 14:02:32', '2019-07-01 14:02:32'),
(981, 'products', 'meta_description', 17, 'en', '', '2019-07-01 14:02:32', '2019-07-01 14:02:32'),
(982, 'products', 'meta_keywords', 17, 'ua', '', '2019-07-01 14:02:33', '2019-07-01 14:02:33'),
(983, 'products', 'meta_keywords', 17, 'en', '', '2019-07-01 14:02:33', '2019-07-01 14:02:33'),
(984, 'products', 'seo_title', 17, 'ua', '', '2019-07-01 14:02:33', '2019-07-01 14:02:33'),
(985, 'products', 'seo_title', 17, 'en', '', '2019-07-01 14:02:33', '2019-07-01 14:02:33'),
(986, 'products', 'name', 18, 'ua', '', '2019-07-01 14:03:50', '2019-07-01 14:03:50'),
(987, 'products', 'name', 18, 'en', '', '2019-07-01 14:03:51', '2019-07-01 14:03:51'),
(988, 'products', 'description', 18, 'ua', '', '2019-07-01 14:03:51', '2019-07-01 14:03:51'),
(989, 'products', 'description', 18, 'en', '', '2019-07-01 14:03:52', '2019-07-01 14:03:52'),
(990, 'products', 'meta_description', 18, 'ua', '', '2019-07-01 14:03:52', '2019-07-01 14:03:52'),
(991, 'products', 'meta_description', 18, 'en', '', '2019-07-01 14:03:52', '2019-07-01 14:03:52'),
(992, 'products', 'meta_keywords', 18, 'ua', '', '2019-07-01 14:03:52', '2019-07-01 14:03:52'),
(993, 'products', 'meta_keywords', 18, 'en', '', '2019-07-01 14:03:53', '2019-07-01 14:03:53'),
(994, 'products', 'seo_title', 18, 'ua', '', '2019-07-01 14:03:53', '2019-07-01 14:03:53'),
(995, 'products', 'seo_title', 18, 'en', '', '2019-07-01 14:03:53', '2019-07-01 14:03:53'),
(996, 'products', 'name', 19, 'ua', '', '2019-07-01 14:05:14', '2019-07-01 14:05:14'),
(997, 'products', 'name', 19, 'en', '', '2019-07-01 14:05:14', '2019-07-01 14:05:14'),
(998, 'products', 'description', 19, 'ua', '', '2019-07-01 14:05:14', '2019-07-01 14:05:14'),
(999, 'products', 'description', 19, 'en', '', '2019-07-01 14:05:14', '2019-07-01 14:05:14'),
(1000, 'products', 'meta_description', 19, 'ua', '', '2019-07-01 14:05:15', '2019-07-01 14:05:15'),
(1001, 'products', 'meta_description', 19, 'en', '', '2019-07-01 14:05:15', '2019-07-01 14:05:15'),
(1002, 'products', 'meta_keywords', 19, 'ua', '', '2019-07-01 14:05:15', '2019-07-01 14:05:15'),
(1003, 'products', 'meta_keywords', 19, 'en', '', '2019-07-01 14:05:16', '2019-07-01 14:05:16'),
(1004, 'products', 'seo_title', 19, 'ua', '', '2019-07-01 14:05:16', '2019-07-01 14:05:16'),
(1005, 'products', 'seo_title', 19, 'en', '', '2019-07-01 14:05:16', '2019-07-01 14:05:16'),
(1008, 'products', 'name', 20, 'ua', 'Байкал', '2019-07-03 11:06:39', '2019-07-12 11:17:17'),
(1009, 'products', 'name', 20, 'en', '', '2019-07-03 11:06:39', '2019-07-03 11:06:39'),
(1010, 'products', 'description', 20, 'ua', '<p>&laquo;БАЙКАЛ&raquo; - унікальний напій, що містить натуральні екстракти трав полину, шавлії, коріандру, дягеля, кореня солодки, квітів бузини, ефірні масла лавра, евкаліпта, хмелю і екстракт тайгових коренів. Трави, що входять до складу напою давно відомі у медицині своїми лікувальними властивостями: бузина - ефективний засіб від простудних захворювань; корінь солодки - застосовується для нормалізації тиску; шавлія лікарська - знімає запальні процеси в організмі; дягель - багатий на фосфор, кальцій і залізо. Напій &laquo;Байкал&raquo; дуже добре втамовує спрагу та має тонізуючу дію на організм.</p>', '2019-07-03 11:06:39', '2019-07-12 11:17:18'),
(1011, 'products', 'description', 20, 'en', '', '2019-07-03 11:06:39', '2019-07-03 11:06:39'),
(1012, 'products', 'meta_description', 20, 'ua', '', '2019-07-03 11:06:40', '2019-07-03 11:06:40'),
(1013, 'products', 'meta_description', 20, 'en', '', '2019-07-03 11:06:40', '2019-07-03 11:06:40'),
(1014, 'products', 'meta_keywords', 20, 'ua', '', '2019-07-03 11:06:40', '2019-07-03 11:06:40'),
(1015, 'products', 'meta_keywords', 20, 'en', '', '2019-07-03 11:06:41', '2019-07-03 11:06:41'),
(1016, 'products', 'seo_title', 20, 'ua', '', '2019-07-03 11:06:41', '2019-07-03 11:06:41'),
(1017, 'products', 'seo_title', 20, 'en', '', '2019-07-03 11:06:41', '2019-07-03 11:06:41'),
(1028, 'products', 'name', 22, 'ua', 'Крем сода', '2019-07-03 11:11:22', '2019-07-12 11:26:22'),
(1029, 'products', 'name', 22, 'en', '', '2019-07-03 11:11:23', '2019-07-03 11:11:23'),
(1030, 'products', 'description', 22, 'ua', '<p>Тільки ТМ БОН БУАССОН в Україні виробляє ароматний десертний напій - &laquo;КРЕМ-СОДА&raquo;. Це родзинка лінійки - газована вода зі смаком вершкового морозива, а що ще потрібно для гарного настрою ?!</p>', '2019-07-03 11:11:23', '2019-07-12 11:26:23'),
(1031, 'products', 'description', 22, 'en', '', '2019-07-03 11:11:23', '2019-07-03 11:11:23'),
(1032, 'products', 'meta_description', 22, 'ua', '', '2019-07-03 11:11:23', '2019-07-03 11:11:23'),
(1033, 'products', 'meta_description', 22, 'en', '', '2019-07-03 11:11:24', '2019-07-03 11:11:24'),
(1034, 'products', 'meta_keywords', 22, 'ua', '', '2019-07-03 11:11:24', '2019-07-03 11:11:24'),
(1035, 'products', 'meta_keywords', 22, 'en', '', '2019-07-03 11:11:24', '2019-07-03 11:11:24'),
(1036, 'products', 'seo_title', 22, 'ua', '', '2019-07-03 11:11:25', '2019-07-03 11:11:25'),
(1037, 'products', 'seo_title', 22, 'en', '', '2019-07-03 11:11:25', '2019-07-03 11:11:25'),
(1038, 'products', 'name', 23, 'ua', 'Лимонад', '2019-07-03 11:12:07', '2019-07-12 11:18:34'),
(1039, 'products', 'name', 23, 'en', '', '2019-07-03 11:12:07', '2019-07-03 11:12:07'),
(1040, 'products', 'description', 23, 'ua', '<p>Класичний &laquo;ЛИМОНАД&raquo;, створений на натуральних сиропах та барвниках, має освіжаючий та тонізуючий смак завдяки вітаміну С та лимонному екстракту.</p>', '2019-07-03 11:12:08', '2019-07-12 11:18:34'),
(1041, 'products', 'description', 23, 'en', '', '2019-07-03 11:12:08', '2019-07-03 11:12:08'),
(1042, 'products', 'meta_description', 23, 'ua', '', '2019-07-03 11:12:08', '2019-07-03 11:12:08'),
(1043, 'products', 'meta_description', 23, 'en', '', '2019-07-03 11:12:09', '2019-07-03 11:12:09'),
(1044, 'products', 'meta_keywords', 23, 'ua', '', '2019-07-03 11:12:09', '2019-07-03 11:12:09'),
(1045, 'products', 'meta_keywords', 23, 'en', '', '2019-07-03 11:12:09', '2019-07-03 11:12:09'),
(1046, 'products', 'seo_title', 23, 'ua', '', '2019-07-03 11:12:09', '2019-07-03 11:12:09'),
(1047, 'products', 'seo_title', 23, 'en', '', '2019-07-03 11:12:10', '2019-07-03 11:12:10'),
(1048, 'products', 'name', 24, 'ua', 'Мохіто', '2019-07-03 11:12:45', '2019-07-12 11:27:05'),
(1049, 'products', 'name', 24, 'en', '', '2019-07-03 11:12:45', '2019-07-03 11:12:45'),
(1050, 'products', 'description', 24, 'ua', '<p>Колекція класичних лимонадів поповнилася одним з найпопулярніших коктейлів планети - МОХІТО!&nbsp;</p>\n<p>МОХІТО з\'явився на Кубі майже 100 років тому, але як і раніше залишається найпопулярнішим літнім освіжаючим напоєм. Одна лише його назва розбурхує уяву та освіжає спогади про літній відпочинок на березі моря!</p>', '2019-07-03 11:12:45', '2019-07-12 11:27:05'),
(1051, 'products', 'description', 24, 'en', '', '2019-07-03 11:12:46', '2019-07-03 11:12:46'),
(1052, 'products', 'meta_description', 24, 'ua', '', '2019-07-03 11:12:46', '2019-07-03 11:12:46'),
(1053, 'products', 'meta_description', 24, 'en', '', '2019-07-03 11:12:46', '2019-07-03 11:12:46'),
(1054, 'products', 'meta_keywords', 24, 'ua', '', '2019-07-03 11:12:47', '2019-07-03 11:12:47'),
(1055, 'products', 'meta_keywords', 24, 'en', '', '2019-07-03 11:12:47', '2019-07-03 11:12:47'),
(1056, 'products', 'seo_title', 24, 'ua', '', '2019-07-03 11:12:47', '2019-07-03 11:12:47'),
(1057, 'products', 'seo_title', 24, 'en', '', '2019-07-03 11:12:47', '2019-07-03 11:12:47'),
(1058, 'products', 'name', 25, 'ua', 'Ситро', '2019-07-03 11:13:39', '2019-07-12 11:25:16'),
(1059, 'products', 'name', 25, 'en', '', '2019-07-03 11:13:39', '2019-07-03 11:13:39'),
(1060, 'products', 'description', 25, 'ua', '<p>Знайомий з дитинства смак свята втілився в бадьорому та освіжаючому &laquo;Ситро&raquo; завдяки поєднанню смаків соковитих стиглих апельсинів та тонізуючих лимонів. Букет цитрусових смаків доповнений легким ароматом ванілі, а натуральний екстракт апельсина додає яскравості смаку напою.</p>', '2019-07-03 11:13:39', '2019-07-12 11:25:16'),
(1061, 'products', 'description', 25, 'en', '', '2019-07-03 11:13:40', '2019-07-03 11:13:40'),
(1062, 'products', 'meta_description', 25, 'ua', '', '2019-07-03 11:13:40', '2019-07-03 11:13:40'),
(1063, 'products', 'meta_description', 25, 'en', '', '2019-07-03 11:13:40', '2019-07-03 11:13:40'),
(1064, 'products', 'meta_keywords', 25, 'ua', '', '2019-07-03 11:13:41', '2019-07-03 11:13:41'),
(1065, 'products', 'meta_keywords', 25, 'en', '', '2019-07-03 11:13:41', '2019-07-03 11:13:41'),
(1066, 'products', 'seo_title', 25, 'ua', '', '2019-07-03 11:13:41', '2019-07-03 11:13:41'),
(1067, 'products', 'seo_title', 25, 'en', '', '2019-07-03 11:13:41', '2019-07-03 11:13:41'),
(1068, 'products', 'name', 26, 'ua', 'Тархун', '2019-07-03 11:14:52', '2019-07-12 11:19:16'),
(1069, 'products', 'name', 26, 'en', '', '2019-07-03 11:14:53', '2019-07-03 11:14:53'),
(1070, 'products', 'description', 26, 'ua', '<p>В якості основного компоненту в напої &laquo;Тархун&raquo; використовується настоянка естрагону, що росте в Грузії, Вірменії, на Алтаї. Естрагон містить величезну кількість вітамінів і мінеральних речовин. Незважаючи на солодкуватий смак, це унікальна рослина відноситься до сімейства полину і давно відома своїми лікувальними властивостями. Тархун підвищує апетит, покращує травлення, зміцнює стінки судин і навіть допомагає при безсонні. &laquo;Тархун&raquo; відноситься до класу тонізуючих напоїв.</p>', '2019-07-03 11:14:53', '2019-07-12 11:19:17'),
(1071, 'products', 'description', 26, 'en', '', '2019-07-03 11:14:53', '2019-07-03 11:14:53'),
(1072, 'products', 'meta_description', 26, 'ua', '', '2019-07-03 11:14:53', '2019-07-03 11:14:53'),
(1073, 'products', 'meta_description', 26, 'en', '', '2019-07-03 11:14:54', '2019-07-03 11:14:54'),
(1074, 'products', 'meta_keywords', 26, 'ua', '', '2019-07-03 11:14:54', '2019-07-03 11:14:54'),
(1075, 'products', 'meta_keywords', 26, 'en', '', '2019-07-03 11:14:54', '2019-07-03 11:14:54'),
(1076, 'products', 'seo_title', 26, 'ua', '', '2019-07-03 11:14:55', '2019-07-03 11:14:55'),
(1077, 'products', 'seo_title', 26, 'en', '', '2019-07-03 11:14:55', '2019-07-03 11:14:55'),
(1088, 'products', 'name', 28, 'ua', '', '2019-07-03 12:00:46', '2019-07-03 12:00:46'),
(1089, 'products', 'name', 28, 'en', '', '2019-07-03 12:00:46', '2019-07-03 12:00:46'),
(1090, 'products', 'description', 28, 'ua', '', '2019-07-03 12:00:46', '2019-07-03 12:00:46'),
(1091, 'products', 'description', 28, 'en', '', '2019-07-03 12:00:47', '2019-07-03 12:00:47'),
(1092, 'products', 'meta_description', 28, 'ua', '', '2019-07-03 12:00:47', '2019-07-03 12:00:47'),
(1093, 'products', 'meta_description', 28, 'en', '', '2019-07-03 12:00:47', '2019-07-03 12:00:47'),
(1094, 'products', 'meta_keywords', 28, 'ua', '', '2019-07-03 12:00:48', '2019-07-03 12:00:48'),
(1095, 'products', 'meta_keywords', 28, 'en', '', '2019-07-03 12:00:48', '2019-07-03 12:00:48'),
(1096, 'products', 'seo_title', 28, 'ua', '', '2019-07-03 12:00:48', '2019-07-03 12:00:48'),
(1097, 'products', 'seo_title', 28, 'en', '', '2019-07-03 12:00:48', '2019-07-03 12:00:48'),
(1098, 'products', 'name', 29, 'ua', '', '2019-07-03 12:01:23', '2019-07-03 12:01:23'),
(1099, 'products', 'name', 29, 'en', '', '2019-07-03 12:01:23', '2019-07-03 12:01:23'),
(1100, 'products', 'description', 29, 'ua', '', '2019-07-03 12:01:23', '2019-07-03 12:01:23'),
(1101, 'products', 'description', 29, 'en', '', '2019-07-03 12:01:23', '2019-07-03 12:01:23'),
(1102, 'products', 'meta_description', 29, 'ua', '', '2019-07-03 12:01:23', '2019-07-03 12:01:23'),
(1103, 'products', 'meta_description', 29, 'en', '', '2019-07-03 12:01:24', '2019-07-03 12:01:24'),
(1104, 'products', 'meta_keywords', 29, 'ua', '', '2019-07-03 12:01:24', '2019-07-03 12:01:24'),
(1105, 'products', 'meta_keywords', 29, 'en', '', '2019-07-03 12:01:25', '2019-07-03 12:01:25'),
(1106, 'products', 'seo_title', 29, 'ua', '', '2019-07-03 12:01:25', '2019-07-03 12:01:25'),
(1107, 'products', 'seo_title', 29, 'en', '', '2019-07-03 12:01:25', '2019-07-03 12:01:25'),
(1108, 'products', 'name', 30, 'ua', '', '2019-07-03 12:02:01', '2019-07-03 12:02:01'),
(1109, 'products', 'name', 30, 'en', '', '2019-07-03 12:02:01', '2019-07-03 12:02:01'),
(1110, 'products', 'description', 30, 'ua', '', '2019-07-03 12:02:02', '2019-07-03 12:02:02'),
(1111, 'products', 'description', 30, 'en', '', '2019-07-03 12:02:02', '2019-07-03 12:02:02'),
(1112, 'products', 'meta_description', 30, 'ua', '', '2019-07-03 12:02:02', '2019-07-03 12:02:02'),
(1113, 'products', 'meta_description', 30, 'en', '', '2019-07-03 12:02:03', '2019-07-03 12:02:03'),
(1114, 'products', 'meta_keywords', 30, 'ua', '', '2019-07-03 12:02:03', '2019-07-03 12:02:03'),
(1115, 'products', 'meta_keywords', 30, 'en', '', '2019-07-03 12:02:03', '2019-07-03 12:02:03'),
(1116, 'products', 'seo_title', 30, 'ua', '', '2019-07-03 12:02:03', '2019-07-03 12:02:03'),
(1117, 'products', 'seo_title', 30, 'en', '', '2019-07-03 12:02:04', '2019-07-03 12:02:04'),
(1118, 'products', 'name', 31, 'ua', '', '2019-07-03 12:03:52', '2019-07-03 12:03:52'),
(1119, 'products', 'name', 31, 'en', '', '2019-07-03 12:03:52', '2019-07-03 12:03:52'),
(1120, 'products', 'description', 31, 'ua', '', '2019-07-03 12:03:53', '2019-07-03 12:03:53'),
(1121, 'products', 'description', 31, 'en', '', '2019-07-03 12:03:53', '2019-07-03 12:03:53'),
(1122, 'products', 'meta_description', 31, 'ua', '', '2019-07-03 12:03:53', '2019-07-03 12:03:53'),
(1123, 'products', 'meta_description', 31, 'en', '', '2019-07-03 12:03:54', '2019-07-03 12:03:54'),
(1124, 'products', 'meta_keywords', 31, 'ua', '', '2019-07-03 12:03:54', '2019-07-03 12:03:54'),
(1125, 'products', 'meta_keywords', 31, 'en', '', '2019-07-03 12:03:54', '2019-07-03 12:03:54'),
(1126, 'products', 'seo_title', 31, 'ua', '', '2019-07-03 12:03:54', '2019-07-03 12:03:54'),
(1127, 'products', 'seo_title', 31, 'en', '', '2019-07-03 12:03:55', '2019-07-03 12:03:55'),
(1128, 'products', 'name', 32, 'ua', '', '2019-07-03 12:04:33', '2019-07-03 12:04:33'),
(1129, 'products', 'name', 32, 'en', '', '2019-07-03 12:04:33', '2019-07-03 12:04:33'),
(1130, 'products', 'description', 32, 'ua', '', '2019-07-03 12:04:34', '2019-07-03 12:04:34'),
(1131, 'products', 'description', 32, 'en', '', '2019-07-03 12:04:34', '2019-07-03 12:04:34'),
(1132, 'products', 'meta_description', 32, 'ua', '', '2019-07-03 12:04:34', '2019-07-03 12:04:34'),
(1133, 'products', 'meta_description', 32, 'en', '', '2019-07-03 12:04:35', '2019-07-03 12:04:35'),
(1134, 'products', 'meta_keywords', 32, 'ua', '', '2019-07-03 12:04:35', '2019-07-03 12:04:35'),
(1135, 'products', 'meta_keywords', 32, 'en', '', '2019-07-03 12:04:35', '2019-07-03 12:04:35'),
(1136, 'products', 'seo_title', 32, 'ua', '', '2019-07-03 12:04:35', '2019-07-03 12:04:35'),
(1137, 'products', 'seo_title', 32, 'en', '', '2019-07-03 12:04:36', '2019-07-03 12:04:36'),
(1138, 'products', 'name', 33, 'ua', '', '2019-07-03 12:05:04', '2019-07-03 12:05:04'),
(1139, 'products', 'name', 33, 'en', '', '2019-07-03 12:05:05', '2019-07-03 12:05:05'),
(1140, 'products', 'description', 33, 'ua', '', '2019-07-03 12:05:05', '2019-07-03 12:05:05'),
(1141, 'products', 'description', 33, 'en', '', '2019-07-03 12:05:05', '2019-07-03 12:05:05'),
(1142, 'products', 'meta_description', 33, 'ua', '', '2019-07-03 12:05:05', '2019-07-03 12:05:05'),
(1143, 'products', 'meta_description', 33, 'en', '', '2019-07-03 12:05:05', '2019-07-03 12:05:05'),
(1144, 'products', 'meta_keywords', 33, 'ua', '', '2019-07-03 12:05:06', '2019-07-03 12:05:06'),
(1145, 'products', 'meta_keywords', 33, 'en', '', '2019-07-03 12:05:06', '2019-07-03 12:05:06'),
(1146, 'products', 'seo_title', 33, 'ua', '', '2019-07-03 12:05:07', '2019-07-03 12:05:07'),
(1147, 'products', 'seo_title', 33, 'en', '', '2019-07-03 12:05:07', '2019-07-03 12:05:07'),
(1148, 'products', 'name', 34, 'ua', '', '2019-07-03 12:05:58', '2019-07-03 12:05:58'),
(1149, 'products', 'name', 34, 'en', '', '2019-07-03 12:05:58', '2019-07-03 12:05:58'),
(1150, 'products', 'description', 34, 'ua', '', '2019-07-03 12:05:58', '2019-07-03 12:05:58'),
(1151, 'products', 'description', 34, 'en', '', '2019-07-03 12:05:59', '2019-07-03 12:05:59'),
(1152, 'products', 'meta_description', 34, 'ua', '', '2019-07-03 12:05:59', '2019-07-03 12:05:59'),
(1153, 'products', 'meta_description', 34, 'en', '', '2019-07-03 12:06:00', '2019-07-03 12:06:00'),
(1154, 'products', 'meta_keywords', 34, 'ua', '', '2019-07-03 12:06:00', '2019-07-03 12:06:00'),
(1155, 'products', 'meta_keywords', 34, 'en', '', '2019-07-03 12:06:00', '2019-07-03 12:06:00'),
(1156, 'products', 'seo_title', 34, 'ua', '', '2019-07-03 12:06:00', '2019-07-03 12:06:00'),
(1157, 'products', 'seo_title', 34, 'en', '', '2019-07-03 12:06:00', '2019-07-03 12:06:00'),
(1158, 'products', 'name', 35, 'ua', '', '2019-07-03 12:07:18', '2019-07-03 12:07:18'),
(1159, 'products', 'name', 35, 'en', '', '2019-07-03 12:07:18', '2019-07-03 12:07:18'),
(1160, 'products', 'description', 35, 'ua', '', '2019-07-03 12:07:18', '2019-07-03 12:07:18'),
(1161, 'products', 'description', 35, 'en', '', '2019-07-03 12:07:18', '2019-07-03 12:07:18'),
(1162, 'products', 'meta_description', 35, 'ua', '', '2019-07-03 12:07:18', '2019-07-03 12:07:18'),
(1163, 'products', 'meta_description', 35, 'en', '', '2019-07-03 12:07:19', '2019-07-03 12:07:19'),
(1164, 'products', 'meta_keywords', 35, 'ua', '', '2019-07-03 12:07:19', '2019-07-03 12:07:19'),
(1165, 'products', 'meta_keywords', 35, 'en', '', '2019-07-03 12:07:20', '2019-07-03 12:07:20'),
(1166, 'products', 'seo_title', 35, 'ua', '', '2019-07-03 12:07:20', '2019-07-03 12:07:20'),
(1167, 'products', 'seo_title', 35, 'en', '', '2019-07-03 12:07:20', '2019-07-03 12:07:20'),
(1168, 'products', 'name', 36, 'ua', '', '2019-07-03 12:09:20', '2019-07-03 12:09:20'),
(1169, 'products', 'name', 36, 'en', '', '2019-07-03 12:09:20', '2019-07-03 12:09:20'),
(1170, 'products', 'description', 36, 'ua', '', '2019-07-03 12:09:20', '2019-07-03 12:09:20'),
(1171, 'products', 'description', 36, 'en', '', '2019-07-03 12:09:21', '2019-07-03 12:09:21'),
(1172, 'products', 'meta_description', 36, 'ua', '', '2019-07-03 12:09:21', '2019-07-03 12:09:21'),
(1173, 'products', 'meta_description', 36, 'en', '', '2019-07-03 12:09:21', '2019-07-03 12:09:21'),
(1174, 'products', 'meta_keywords', 36, 'ua', '', '2019-07-03 12:09:21', '2019-07-03 12:09:21'),
(1175, 'products', 'meta_keywords', 36, 'en', '', '2019-07-03 12:09:22', '2019-07-03 12:09:22'),
(1176, 'products', 'seo_title', 36, 'ua', '', '2019-07-03 12:09:22', '2019-07-03 12:09:22'),
(1177, 'products', 'seo_title', 36, 'en', '', '2019-07-03 12:09:22', '2019-07-03 12:09:22'),
(1178, 'products', 'name', 37, 'ua', '', '2019-07-03 12:09:56', '2019-07-03 12:09:56'),
(1179, 'products', 'name', 37, 'en', '', '2019-07-03 12:09:56', '2019-07-03 12:09:56'),
(1180, 'products', 'description', 37, 'ua', '', '2019-07-03 12:09:56', '2019-07-03 12:09:56'),
(1181, 'products', 'description', 37, 'en', '', '2019-07-03 12:09:57', '2019-07-03 12:09:57'),
(1182, 'products', 'meta_description', 37, 'ua', '', '2019-07-03 12:09:57', '2019-07-03 12:09:57'),
(1183, 'products', 'meta_description', 37, 'en', '', '2019-07-03 12:09:58', '2019-07-03 12:09:58'),
(1184, 'products', 'meta_keywords', 37, 'ua', '', '2019-07-03 12:09:58', '2019-07-03 12:09:58'),
(1185, 'products', 'meta_keywords', 37, 'en', '', '2019-07-03 12:09:58', '2019-07-03 12:09:58'),
(1186, 'products', 'seo_title', 37, 'ua', '', '2019-07-03 12:09:58', '2019-07-03 12:09:58'),
(1187, 'products', 'seo_title', 37, 'en', '', '2019-07-03 12:09:58', '2019-07-03 12:09:58'),
(1190, 'sizes', 'name', 7, 'ua', '', '2019-07-03 15:01:51', '2019-07-03 15:01:51'),
(1191, 'sizes', 'name', 7, 'en', '', '2019-07-03 15:01:51', '2019-07-03 15:01:51'),
(1192, 'badges', 'name', 6, 'ua', '', '2019-07-04 07:43:05', '2019-07-04 07:43:05'),
(1193, 'badges', 'name', 6, 'en', '', '2019-07-04 07:43:05', '2019-07-04 07:43:05'),
(1194, 'badges', 'name', 7, 'ua', '', '2019-07-04 07:44:53', '2019-07-04 07:44:53'),
(1195, 'badges', 'name', 7, 'en', '', '2019-07-04 07:44:53', '2019-07-04 07:44:53'),
(1196, 'badges', 'name', 8, 'ua', '', '2019-07-04 07:45:30', '2019-07-04 07:45:30'),
(1197, 'badges', 'name', 8, 'en', '', '2019-07-04 07:45:31', '2019-07-04 07:45:31'),
(1198, 'badges', 'name', 9, 'ua', '', '2019-07-04 07:45:54', '2019-07-04 07:45:54'),
(1199, 'badges', 'name', 9, 'en', '', '2019-07-04 07:45:55', '2019-07-04 07:45:55'),
(1200, 'products', 'name', 38, 'ua', '', '2019-07-05 11:47:55', '2019-07-05 11:47:55'),
(1201, 'products', 'name', 38, 'en', '', '2019-07-05 11:47:56', '2019-07-05 11:47:56'),
(1202, 'products', 'description', 38, 'ua', '', '2019-07-05 11:47:56', '2019-07-05 11:47:56'),
(1203, 'products', 'description', 38, 'en', '', '2019-07-05 11:47:56', '2019-07-05 11:47:56'),
(1204, 'products', 'meta_description', 38, 'ua', '', '2019-07-05 11:47:56', '2019-07-05 11:47:56'),
(1205, 'products', 'meta_description', 38, 'en', '', '2019-07-05 11:47:57', '2019-07-05 11:47:57'),
(1206, 'products', 'meta_keywords', 38, 'ua', '', '2019-07-05 11:47:57', '2019-07-05 11:47:57'),
(1207, 'products', 'meta_keywords', 38, 'en', '', '2019-07-05 11:47:57', '2019-07-05 11:47:57'),
(1208, 'products', 'seo_title', 38, 'ua', '', '2019-07-05 11:47:58', '2019-07-05 11:47:58'),
(1209, 'products', 'seo_title', 38, 'en', '', '2019-07-05 11:47:58', '2019-07-05 11:47:58'),
(1210, 'products', 'name', 39, 'ua', '', '2019-07-05 11:49:10', '2019-07-05 11:49:10'),
(1211, 'products', 'name', 39, 'en', '', '2019-07-05 11:49:11', '2019-07-05 11:49:11'),
(1212, 'products', 'description', 39, 'ua', '', '2019-07-05 11:49:11', '2019-07-05 11:49:11'),
(1213, 'products', 'description', 39, 'en', '', '2019-07-05 11:49:11', '2019-07-05 11:49:11'),
(1214, 'products', 'meta_description', 39, 'ua', '', '2019-07-05 11:49:12', '2019-07-05 11:49:12'),
(1215, 'products', 'meta_description', 39, 'en', '', '2019-07-05 11:49:12', '2019-07-05 11:49:12'),
(1216, 'products', 'meta_keywords', 39, 'ua', '', '2019-07-05 11:49:12', '2019-07-05 11:49:12'),
(1217, 'products', 'meta_keywords', 39, 'en', '', '2019-07-05 11:49:12', '2019-07-05 11:49:12'),
(1218, 'products', 'seo_title', 39, 'ua', '', '2019-07-05 11:49:13', '2019-07-05 11:49:13'),
(1219, 'products', 'seo_title', 39, 'en', '', '2019-07-05 11:49:13', '2019-07-05 11:49:13'),
(1220, 'products', 'name', 40, 'ua', '', '2019-07-05 11:49:50', '2019-07-05 11:49:50'),
(1221, 'products', 'name', 40, 'en', '', '2019-07-05 11:49:51', '2019-07-05 11:49:51'),
(1222, 'products', 'description', 40, 'ua', '', '2019-07-05 11:49:51', '2019-07-05 11:49:51'),
(1223, 'products', 'description', 40, 'en', '', '2019-07-05 11:49:51', '2019-07-05 11:49:51'),
(1224, 'products', 'meta_description', 40, 'ua', '', '2019-07-05 11:49:52', '2019-07-05 11:49:52'),
(1225, 'products', 'meta_description', 40, 'en', '', '2019-07-05 11:49:52', '2019-07-05 11:49:52'),
(1226, 'products', 'meta_keywords', 40, 'ua', '', '2019-07-05 11:49:52', '2019-07-05 11:49:52'),
(1227, 'products', 'meta_keywords', 40, 'en', '', '2019-07-05 11:49:52', '2019-07-05 11:49:52'),
(1228, 'products', 'seo_title', 40, 'ua', '', '2019-07-05 11:49:53', '2019-07-05 11:49:53'),
(1229, 'products', 'seo_title', 40, 'en', '', '2019-07-05 11:49:53', '2019-07-05 11:49:53'),
(1230, 'products', 'name', 41, 'ua', '', '2019-07-05 11:50:25', '2019-07-05 11:50:25'),
(1231, 'products', 'name', 41, 'en', '', '2019-07-05 11:50:26', '2019-07-05 11:50:26'),
(1232, 'products', 'description', 41, 'ua', '', '2019-07-05 11:50:26', '2019-07-05 11:50:26'),
(1233, 'products', 'description', 41, 'en', '', '2019-07-05 11:50:26', '2019-07-05 11:50:26'),
(1234, 'products', 'meta_description', 41, 'ua', '', '2019-07-05 11:50:26', '2019-07-05 11:50:26'),
(1235, 'products', 'meta_description', 41, 'en', '', '2019-07-05 11:50:27', '2019-07-05 11:50:27'),
(1236, 'products', 'meta_keywords', 41, 'ua', '', '2019-07-05 11:50:27', '2019-07-05 11:50:27'),
(1237, 'products', 'meta_keywords', 41, 'en', '', '2019-07-05 11:50:27', '2019-07-05 11:50:27'),
(1238, 'products', 'seo_title', 41, 'ua', '', '2019-07-05 11:50:28', '2019-07-05 11:50:28'),
(1239, 'products', 'seo_title', 41, 'en', '', '2019-07-05 11:50:28', '2019-07-05 11:50:28'),
(1240, 'products', 'name', 42, 'ua', '', '2019-07-05 11:51:00', '2019-07-05 11:51:00'),
(1241, 'products', 'name', 42, 'en', '', '2019-07-05 11:51:01', '2019-07-05 11:51:01'),
(1242, 'products', 'description', 42, 'ua', '', '2019-07-05 11:51:01', '2019-07-05 11:51:01'),
(1243, 'products', 'description', 42, 'en', '', '2019-07-05 11:51:01', '2019-07-05 11:51:01'),
(1244, 'products', 'meta_description', 42, 'ua', '', '2019-07-05 11:51:02', '2019-07-05 11:51:02'),
(1245, 'products', 'meta_description', 42, 'en', '', '2019-07-05 11:51:02', '2019-07-05 11:51:02'),
(1246, 'products', 'meta_keywords', 42, 'ua', '', '2019-07-05 11:51:02', '2019-07-05 11:51:02'),
(1247, 'products', 'meta_keywords', 42, 'en', '', '2019-07-05 11:51:03', '2019-07-05 11:51:03'),
(1248, 'products', 'seo_title', 42, 'ua', '', '2019-07-05 11:51:03', '2019-07-05 11:51:03'),
(1249, 'products', 'seo_title', 42, 'en', '', '2019-07-05 11:51:03', '2019-07-05 11:51:03'),
(1250, 'products', 'name', 43, 'ua', '', '2019-07-05 11:51:34', '2019-07-05 11:51:34'),
(1251, 'products', 'name', 43, 'en', '', '2019-07-05 11:51:35', '2019-07-05 11:51:35'),
(1252, 'products', 'description', 43, 'ua', '', '2019-07-05 11:51:35', '2019-07-05 11:51:35'),
(1253, 'products', 'description', 43, 'en', '', '2019-07-05 11:51:35', '2019-07-05 11:51:35'),
(1254, 'products', 'meta_description', 43, 'ua', '', '2019-07-05 11:51:35', '2019-07-05 11:51:35'),
(1255, 'products', 'meta_description', 43, 'en', '', '2019-07-05 11:51:35', '2019-07-05 11:51:35'),
(1256, 'products', 'meta_keywords', 43, 'ua', '', '2019-07-05 11:51:36', '2019-07-05 11:51:36'),
(1257, 'products', 'meta_keywords', 43, 'en', '', '2019-07-05 11:51:36', '2019-07-05 11:51:36'),
(1258, 'products', 'seo_title', 43, 'ua', '', '2019-07-05 11:51:36', '2019-07-05 11:51:36'),
(1259, 'products', 'seo_title', 43, 'en', '', '2019-07-05 11:51:37', '2019-07-05 11:51:37'),
(1260, 'products', 'name', 44, 'ua', '', '2019-07-05 12:07:55', '2019-07-05 12:07:55'),
(1261, 'products', 'name', 44, 'en', '', '2019-07-05 12:07:55', '2019-07-05 12:07:55'),
(1262, 'products', 'description', 44, 'ua', '', '2019-07-05 12:07:55', '2019-07-05 12:07:55'),
(1263, 'products', 'description', 44, 'en', '', '2019-07-05 12:07:55', '2019-07-05 12:07:55'),
(1264, 'products', 'meta_description', 44, 'ua', '', '2019-07-05 12:07:56', '2019-07-05 12:07:56'),
(1265, 'products', 'meta_description', 44, 'en', '', '2019-07-05 12:07:56', '2019-07-05 12:07:56'),
(1266, 'products', 'meta_keywords', 44, 'ua', '', '2019-07-05 12:07:56', '2019-07-05 12:07:56'),
(1267, 'products', 'meta_keywords', 44, 'en', '', '2019-07-05 12:07:57', '2019-07-05 12:07:57'),
(1268, 'products', 'seo_title', 44, 'ua', '', '2019-07-05 12:07:57', '2019-07-05 12:07:57'),
(1269, 'products', 'seo_title', 44, 'en', '', '2019-07-05 12:07:57', '2019-07-05 12:07:57'),
(1270, 'products', 'name', 45, 'ua', '', '2019-07-05 12:13:19', '2019-07-05 12:13:19'),
(1271, 'products', 'name', 45, 'en', '', '2019-07-05 12:13:20', '2019-07-05 12:13:20'),
(1272, 'products', 'description', 45, 'ua', '', '2019-07-05 12:13:20', '2019-07-05 12:13:20'),
(1273, 'products', 'description', 45, 'en', '', '2019-07-05 12:13:20', '2019-07-05 12:13:20'),
(1274, 'products', 'meta_description', 45, 'ua', '', '2019-07-05 12:13:21', '2019-07-05 12:13:21'),
(1275, 'products', 'meta_description', 45, 'en', '', '2019-07-05 12:13:21', '2019-07-05 12:13:21'),
(1276, 'products', 'meta_keywords', 45, 'ua', '', '2019-07-05 12:13:21', '2019-07-05 12:13:21'),
(1277, 'products', 'meta_keywords', 45, 'en', '', '2019-07-05 12:13:22', '2019-07-05 12:13:22'),
(1278, 'products', 'seo_title', 45, 'ua', '', '2019-07-05 12:13:22', '2019-07-05 12:13:22'),
(1279, 'products', 'seo_title', 45, 'en', '', '2019-07-05 12:13:22', '2019-07-05 12:13:22'),
(1280, 'products', 'name', 46, 'ua', '', '2019-07-05 12:14:10', '2019-07-05 12:14:10'),
(1281, 'products', 'name', 46, 'en', '', '2019-07-05 12:14:10', '2019-07-05 12:14:10'),
(1282, 'products', 'description', 46, 'ua', '', '2019-07-05 12:14:10', '2019-07-05 12:14:10'),
(1283, 'products', 'description', 46, 'en', '', '2019-07-05 12:14:11', '2019-07-05 12:14:11'),
(1284, 'products', 'meta_description', 46, 'ua', '', '2019-07-05 12:14:11', '2019-07-05 12:14:11'),
(1285, 'products', 'meta_description', 46, 'en', '', '2019-07-05 12:14:11', '2019-07-05 12:14:11'),
(1286, 'products', 'meta_keywords', 46, 'ua', '', '2019-07-05 12:14:11', '2019-07-05 12:14:11');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1287, 'products', 'meta_keywords', 46, 'en', '', '2019-07-05 12:14:11', '2019-07-05 12:14:11'),
(1288, 'products', 'seo_title', 46, 'ua', '', '2019-07-05 12:14:12', '2019-07-05 12:14:12'),
(1289, 'products', 'seo_title', 46, 'en', '', '2019-07-05 12:14:12', '2019-07-05 12:14:12'),
(1290, 'products', 'name', 47, 'ua', '', '2019-07-05 12:14:40', '2019-07-05 12:14:40'),
(1291, 'products', 'name', 47, 'en', '', '2019-07-05 12:14:40', '2019-07-05 12:14:40'),
(1292, 'products', 'description', 47, 'ua', '', '2019-07-05 12:14:41', '2019-07-05 12:14:41'),
(1293, 'products', 'description', 47, 'en', '', '2019-07-05 12:14:41', '2019-07-05 12:14:41'),
(1294, 'products', 'meta_description', 47, 'ua', '', '2019-07-05 12:14:41', '2019-07-05 12:14:41'),
(1295, 'products', 'meta_description', 47, 'en', '', '2019-07-05 12:14:42', '2019-07-05 12:14:42'),
(1296, 'products', 'meta_keywords', 47, 'ua', '', '2019-07-05 12:14:42', '2019-07-05 12:14:42'),
(1297, 'products', 'meta_keywords', 47, 'en', '', '2019-07-05 12:14:42', '2019-07-05 12:14:42'),
(1298, 'products', 'seo_title', 47, 'ua', '', '2019-07-05 12:14:42', '2019-07-05 12:14:42'),
(1299, 'products', 'seo_title', 47, 'en', '', '2019-07-05 12:14:43', '2019-07-05 12:14:43'),
(1300, 'products', 'name', 48, 'ua', '', '2019-07-05 12:15:16', '2019-07-05 12:15:16'),
(1301, 'products', 'name', 48, 'en', '', '2019-07-05 12:15:16', '2019-07-05 12:15:16'),
(1302, 'products', 'description', 48, 'ua', '', '2019-07-05 12:15:17', '2019-07-05 12:15:17'),
(1303, 'products', 'description', 48, 'en', '', '2019-07-05 12:15:17', '2019-07-05 12:15:17'),
(1304, 'products', 'meta_description', 48, 'ua', '', '2019-07-05 12:15:17', '2019-07-05 12:15:17'),
(1305, 'products', 'meta_description', 48, 'en', '', '2019-07-05 12:15:17', '2019-07-05 12:15:17'),
(1306, 'products', 'meta_keywords', 48, 'ua', '', '2019-07-05 12:15:18', '2019-07-05 12:15:18'),
(1307, 'products', 'meta_keywords', 48, 'en', '', '2019-07-05 12:15:18', '2019-07-05 12:15:18'),
(1308, 'products', 'seo_title', 48, 'ua', '', '2019-07-05 12:15:19', '2019-07-05 12:15:19'),
(1309, 'products', 'seo_title', 48, 'en', '', '2019-07-05 12:15:19', '2019-07-05 12:15:19'),
(1310, 'products', 'name', 49, 'ua', '', '2019-07-05 12:16:08', '2019-07-05 12:16:08'),
(1311, 'products', 'name', 49, 'en', '', '2019-07-05 12:16:08', '2019-07-05 12:16:08'),
(1312, 'products', 'description', 49, 'ua', '', '2019-07-05 12:16:08', '2019-07-05 12:16:08'),
(1313, 'products', 'description', 49, 'en', '', '2019-07-05 12:16:08', '2019-07-05 12:16:08'),
(1314, 'products', 'meta_description', 49, 'ua', '', '2019-07-05 12:16:09', '2019-07-05 12:16:09'),
(1315, 'products', 'meta_description', 49, 'en', '', '2019-07-05 12:16:09', '2019-07-05 12:16:09'),
(1316, 'products', 'meta_keywords', 49, 'ua', '', '2019-07-05 12:16:10', '2019-07-05 12:16:10'),
(1317, 'products', 'meta_keywords', 49, 'en', '', '2019-07-05 12:16:10', '2019-07-05 12:16:10'),
(1318, 'products', 'seo_title', 49, 'ua', '', '2019-07-05 12:16:10', '2019-07-05 12:16:10'),
(1319, 'products', 'seo_title', 49, 'en', '', '2019-07-05 12:16:10', '2019-07-05 12:16:10'),
(1320, 'histories', 'text', 7, 'ua', '', '2019-07-09 08:49:46', '2019-07-09 08:49:46'),
(1321, 'histories', 'text', 7, 'en', 'start of production in Dnepropetrovsk. The first product of the company was the water Bon Boisson which is still present in the brand portfolio and has gone through many changes over the past 20 years.', '2019-07-09 08:49:46', '2019-07-09 08:49:46'),
(1322, 'histories', 'text', 6, 'ua', '', '2019-07-09 08:50:08', '2019-07-09 08:50:08'),
(1323, 'histories', 'text', 6, 'en', 'the market launch of the legendary Golden Series of lemonades with classic flavors. Many generation of Ukrainians grew up on them and this series has become the unconditional leader in the 20 years of its existence in the segment of classic lemonades.', '2019-07-09 08:50:08', '2019-07-09 08:50:08'),
(1324, 'histories', 'text', 5, 'ua', '', '2019-07-09 08:50:33', '2019-07-09 08:50:33'),
(1325, 'histories', 'text', 5, 'en', 'commissioning of the second production line, expanding the range of lemonades.', '2019-07-09 08:50:34', '2019-07-09 08:50:34'),
(1326, 'histories', 'text', 4, 'ua', '', '2019-07-09 08:53:19', '2019-07-09 08:53:19'),
(1327, 'histories', 'text', 4, 'en', 'Due to the combination of production technologies and marketing strategies for the first time in Ukraine the energy drink in PET packaging, TM Black, entered the market. The strategy was successful, today the “Black” is No.1 in sales among the energy drinks in Ukraine (according to Nielsen Inc.)', '2019-07-09 08:53:19', '2019-07-09 08:53:19'),
(1328, 'histories', 'text', 3, 'ua', '', '2019-07-09 08:53:44', '2019-07-09 08:53:44'),
(1329, 'histories', 'text', 3, 'en', 'The company acquires the Novomoskovsk mineral waters plant, from that year 100% of the Bon Boisson water is extracted from the Novotroitsk mineral source in the resort area Salt Liman and bottled directly in the place of the extraction', '2019-07-09 08:53:45', '2019-07-09 08:53:45'),
(1330, 'histories', 'text', 2, 'ua', '', '2019-07-09 08:54:06', '2019-07-09 08:54:06'),
(1331, 'histories', 'text', 2, 'en', 'market launch of Bon Lemon lemonades, natural, made according to the European traditions with an explicit lemon flavor without artificial colorants and flavors.', '2019-07-09 08:54:06', '2019-07-09 08:54:06'),
(1332, 'histories', 'text', 1, 'ua', '', '2019-07-09 08:54:20', '2019-07-09 08:54:20'),
(1333, 'histories', 'text', 1, 'en', 'access to contiguous market, launch of low alcohol cocktails TROPIC BAR and Black Alco', '2019-07-09 08:54:21', '2019-07-09 08:54:21'),
(1334, 'cities', 'name', 17, 'ua', '', '2019-07-09 11:22:18', '2019-07-09 11:22:18'),
(1335, 'cities', 'name', 17, 'en', '', '2019-07-09 11:22:18', '2019-07-09 11:22:18'),
(1336, 'cities', 'name', 18, 'ua', '', '2019-07-09 11:22:44', '2019-07-09 11:22:44'),
(1337, 'cities', 'name', 18, 'en', '', '2019-07-09 11:22:45', '2019-07-09 11:22:45'),
(1338, 'cities', 'name', 19, 'ua', '', '2019-07-09 11:23:49', '2019-07-09 11:23:49'),
(1339, 'cities', 'name', 19, 'en', '', '2019-07-09 11:23:49', '2019-07-09 11:23:49'),
(1340, 'cities', 'name', 20, 'ua', '', '2019-07-09 11:23:57', '2019-07-09 11:23:57'),
(1341, 'cities', 'name', 20, 'en', '', '2019-07-09 11:23:57', '2019-07-09 11:23:57'),
(1342, 'cities', 'name', 21, 'ua', '', '2019-07-09 11:34:23', '2019-07-09 11:34:23'),
(1343, 'cities', 'name', 21, 'en', '', '2019-07-09 11:34:23', '2019-07-09 11:34:23'),
(1344, 'cities', 'name', 22, 'ua', '', '2019-07-09 11:36:36', '2019-07-09 11:36:36'),
(1345, 'cities', 'name', 22, 'en', '', '2019-07-09 11:36:37', '2019-07-09 11:36:37'),
(1346, 'cities', 'name', 23, 'ua', '', '2019-07-09 11:36:51', '2019-07-09 11:36:51'),
(1347, 'cities', 'name', 23, 'en', '', '2019-07-09 11:36:52', '2019-07-09 11:36:52'),
(1348, 'offices', 'street', 21, 'ua', '', '2019-07-09 11:41:57', '2019-07-09 11:41:57'),
(1349, 'offices', 'street', 21, 'en', '', '2019-07-09 11:41:57', '2019-07-09 11:41:57'),
(1350, 'cities', 'name', 24, 'ua', '', '2019-07-09 12:01:26', '2019-07-09 12:01:26'),
(1351, 'cities', 'name', 24, 'en', '', '2019-07-09 12:01:26', '2019-07-09 12:01:26'),
(1352, 'cities', 'name', 25, 'ua', '', '2019-07-09 12:01:41', '2019-07-09 12:01:41'),
(1353, 'cities', 'name', 25, 'en', '', '2019-07-09 12:01:41', '2019-07-09 12:01:41'),
(1354, 'cities', 'name', 26, 'ua', '', '2019-07-09 12:02:13', '2019-07-09 12:02:13'),
(1355, 'cities', 'name', 26, 'en', '', '2019-07-09 12:02:13', '2019-07-09 12:02:13'),
(1356, 'offices', 'street', 22, 'ua', '', '2019-07-09 12:05:06', '2019-07-09 12:05:06'),
(1357, 'offices', 'street', 22, 'en', '', '2019-07-09 12:05:06', '2019-07-09 12:05:06'),
(1358, 'offices', 'street', 23, 'ua', '', '2019-07-09 12:06:14', '2019-07-09 12:06:14'),
(1359, 'offices', 'street', 23, 'en', '', '2019-07-09 12:06:14', '2019-07-09 12:06:14'),
(1360, 'offices', 'street', 24, 'ua', '', '2019-07-09 12:07:01', '2019-07-09 12:07:01'),
(1361, 'offices', 'street', 24, 'en', '', '2019-07-09 12:07:01', '2019-07-09 12:07:01'),
(1362, 'offices', 'street', 25, 'ua', '', '2019-07-09 12:07:37', '2019-07-09 12:07:37'),
(1363, 'offices', 'street', 25, 'en', '', '2019-07-09 12:07:37', '2019-07-09 12:07:37'),
(1364, 'cities', 'name', 27, 'ua', '', '2019-07-09 12:57:00', '2019-07-09 12:57:00'),
(1365, 'cities', 'name', 27, 'en', '', '2019-07-09 12:57:00', '2019-07-09 12:57:00'),
(1366, 'cities', 'name', 28, 'ua', '', '2019-07-09 12:57:26', '2019-07-09 12:57:26'),
(1367, 'cities', 'name', 28, 'en', '', '2019-07-09 12:57:27', '2019-07-09 12:57:27'),
(1368, 'cities', 'name', 29, 'ua', '', '2019-07-09 12:57:44', '2019-07-09 12:57:44'),
(1369, 'cities', 'name', 29, 'en', '', '2019-07-09 12:57:44', '2019-07-09 12:57:44'),
(1370, 'cities', 'name', 30, 'ua', '', '2019-07-09 12:57:53', '2019-07-09 12:57:53'),
(1371, 'cities', 'name', 30, 'en', '', '2019-07-09 12:57:53', '2019-07-09 12:57:53'),
(1372, 'offices', 'street', 26, 'ua', '', '2019-07-09 12:59:03', '2019-07-09 12:59:03'),
(1373, 'offices', 'street', 26, 'en', '', '2019-07-09 12:59:03', '2019-07-09 12:59:03'),
(1374, 'offices', 'street', 27, 'ua', '', '2019-07-09 12:59:41', '2019-07-09 12:59:41'),
(1375, 'offices', 'street', 27, 'en', '', '2019-07-09 12:59:42', '2019-07-09 12:59:42'),
(1376, 'offices', 'street', 28, 'ua', '', '2019-07-09 13:00:11', '2019-07-09 13:00:11'),
(1377, 'offices', 'street', 28, 'en', '', '2019-07-09 13:00:12', '2019-07-09 13:00:12'),
(1378, 'offices', 'street', 29, 'ua', '', '2019-07-09 13:01:21', '2019-07-09 13:01:21'),
(1379, 'offices', 'street', 29, 'en', '', '2019-07-09 13:01:21', '2019-07-09 13:01:21'),
(1380, 'offices', 'street', 30, 'ua', '', '2019-07-09 13:01:57', '2019-07-09 13:01:57'),
(1381, 'offices', 'street', 30, 'en', '', '2019-07-09 13:01:57', '2019-07-09 13:01:57'),
(1382, 'offices', 'street', 31, 'ua', '', '2019-07-11 09:01:10', '2019-07-11 09:01:10'),
(1383, 'offices', 'street', 31, 'en', '', '2019-07-11 09:01:11', '2019-07-11 09:01:11'),
(1384, 'cities', 'name', 31, 'ua', '', '2019-07-11 09:01:27', '2019-07-11 09:01:27'),
(1385, 'cities', 'name', 31, 'en', '', '2019-07-11 09:01:28', '2019-07-11 09:01:28'),
(1386, 'cities', 'name', 32, 'ua', '', '2019-07-11 09:01:49', '2019-07-11 09:01:49'),
(1387, 'cities', 'name', 32, 'en', '', '2019-07-11 09:01:50', '2019-07-11 09:01:50'),
(1388, 'cities', 'name', 33, 'ua', '', '2019-07-11 09:01:59', '2019-07-11 09:01:59'),
(1389, 'cities', 'name', 33, 'en', '', '2019-07-11 09:02:00', '2019-07-11 09:02:00'),
(1390, 'offices', 'street', 32, 'ua', '', '2019-07-11 09:03:49', '2019-07-11 09:03:49'),
(1391, 'offices', 'street', 32, 'en', '', '2019-07-11 09:03:49', '2019-07-11 09:03:49'),
(1392, 'offices', 'street', 33, 'ua', '', '2019-07-11 09:05:01', '2019-07-11 09:05:01'),
(1393, 'offices', 'street', 33, 'en', '', '2019-07-11 09:05:01', '2019-07-11 09:05:01'),
(1394, 'offices', 'street', 34, 'ua', '', '2019-07-11 09:05:33', '2019-07-11 09:05:33'),
(1395, 'offices', 'street', 34, 'en', '', '2019-07-11 09:05:33', '2019-07-11 09:05:33'),
(1396, 'offices', 'street', 35, 'ua', '', '2019-07-11 09:08:20', '2019-07-11 09:08:20'),
(1397, 'offices', 'street', 35, 'en', '', '2019-07-11 09:08:20', '2019-07-11 09:08:20'),
(1398, 'offices', 'street', 36, 'ua', '', '2019-07-11 09:10:27', '2019-07-11 09:10:27'),
(1399, 'offices', 'street', 36, 'en', '', '2019-07-11 09:10:27', '2019-07-11 09:10:27'),
(1400, 'offices', 'street', 37, 'ua', '', '2019-07-11 09:11:42', '2019-07-11 09:11:42'),
(1401, 'offices', 'street', 37, 'en', '', '2019-07-11 09:11:43', '2019-07-11 09:11:43'),
(1402, 'products', 'name', 50, 'ua', 'Вишня', '2019-07-12 11:40:21', '2019-07-12 11:40:21'),
(1403, 'products', 'name', 50, 'en', '', '2019-07-12 11:40:21', '2019-07-12 11:40:21'),
(1404, 'products', 'description', 50, 'ua', '<p>Яскравий аромат напою перенесе Вас в квітучий вишневий сад, а насичений смак стиглих соковитих ягід чудово освіжить і вгамує спрагу. Крім того, напій не містить цукру, що дозволяє максимально насолодитися смаком без калорій.</p>', '2019-07-12 11:40:21', '2019-07-12 11:40:21'),
(1405, 'products', 'description', 50, 'en', '', '2019-07-12 11:40:21', '2019-07-12 11:40:21'),
(1406, 'products', 'meta_description', 50, 'ua', '', '2019-07-12 11:40:22', '2019-07-12 11:40:22'),
(1407, 'products', 'meta_description', 50, 'en', '', '2019-07-12 11:40:22', '2019-07-12 11:40:22'),
(1408, 'products', 'meta_keywords', 50, 'ua', '', '2019-07-12 11:40:22', '2019-07-12 11:40:22'),
(1409, 'products', 'meta_keywords', 50, 'en', '', '2019-07-12 11:40:23', '2019-07-12 11:40:23'),
(1410, 'products', 'seo_title', 50, 'ua', '', '2019-07-12 11:40:23', '2019-07-12 11:40:23'),
(1411, 'products', 'seo_title', 50, 'en', '', '2019-07-12 11:40:23', '2019-07-12 11:40:23'),
(1412, 'products', 'name', 51, 'ua', 'Яблуко-Ехінацея', '2019-07-12 11:42:52', '2019-07-12 11:42:52'),
(1413, 'products', 'name', 51, 'en', '', '2019-07-12 11:42:52', '2019-07-12 11:42:52'),
(1414, 'products', 'description', 51, 'ua', '<p>Ехінацея відома своїми корисними властивостями та тонізуючим ефектом.</p>\n<p>Її смак&nbsp; гармонійно поєднується із традиційним смаком яблука. Чудовий смак, та ще й з користю для Вашого здоров`я.</p>', '2019-07-12 11:42:52', '2019-07-12 11:42:52'),
(1415, 'products', 'description', 51, 'en', '', '2019-07-12 11:42:52', '2019-07-12 11:42:52'),
(1416, 'products', 'meta_description', 51, 'ua', '', '2019-07-12 11:42:53', '2019-07-12 11:42:53'),
(1417, 'products', 'meta_description', 51, 'en', '', '2019-07-12 11:42:53', '2019-07-12 11:42:53'),
(1418, 'products', 'meta_keywords', 51, 'ua', '', '2019-07-12 11:42:53', '2019-07-12 11:42:53'),
(1419, 'products', 'meta_keywords', 51, 'en', '', '2019-07-12 11:42:54', '2019-07-12 11:42:54'),
(1420, 'products', 'seo_title', 51, 'ua', '', '2019-07-12 11:42:54', '2019-07-12 11:42:54'),
(1421, 'products', 'seo_title', 51, 'en', '', '2019-07-12 11:42:54', '2019-07-12 11:42:54'),
(1422, 'products', 'name', 52, 'ua', 'Апельсин', '2019-07-12 11:44:27', '2019-07-12 11:44:27'),
(1423, 'products', 'name', 52, 'en', '', '2019-07-12 11:44:28', '2019-07-12 11:44:28'),
(1424, 'products', 'description', 52, 'ua', '<p>Яскравий та соковитий апельсин тепер у зручному фоматі напою від ТМ Чудо-Сад! Смачне задоволення в кожній краплі!</p>', '2019-07-12 11:44:28', '2019-07-12 11:44:28'),
(1425, 'products', 'description', 52, 'en', '', '2019-07-12 11:44:28', '2019-07-12 11:44:28'),
(1426, 'products', 'meta_description', 52, 'ua', '', '2019-07-12 11:44:29', '2019-07-12 11:44:29'),
(1427, 'products', 'meta_description', 52, 'en', '', '2019-07-12 11:44:29', '2019-07-12 11:44:29'),
(1428, 'products', 'meta_keywords', 52, 'ua', '', '2019-07-12 11:44:29', '2019-07-12 11:44:29'),
(1429, 'products', 'meta_keywords', 52, 'en', '', '2019-07-12 11:44:29', '2019-07-12 11:44:29'),
(1430, 'products', 'seo_title', 52, 'ua', '', '2019-07-12 11:44:30', '2019-07-12 11:44:30'),
(1431, 'products', 'seo_title', 52, 'en', '', '2019-07-12 11:44:30', '2019-07-12 11:44:30'),
(1432, 'products', 'name', 53, 'ua', 'Лимон', '2019-07-12 11:45:32', '2019-07-12 11:45:32'),
(1433, 'products', 'name', 53, 'en', '', '2019-07-12 11:45:32', '2019-07-12 11:45:32'),
(1434, 'products', 'description', 53, 'ua', '<p>Освіжаюче поєднання смаків лимону та лайму без зайвих калорій - це саме те, що потрібно спекотного літнього дня! Освіжайся з задоволенням!</p>', '2019-07-12 11:45:32', '2019-07-12 11:45:32'),
(1435, 'products', 'description', 53, 'en', '', '2019-07-12 11:45:33', '2019-07-12 11:45:33'),
(1436, 'products', 'meta_description', 53, 'ua', '', '2019-07-12 11:45:33', '2019-07-12 11:45:33'),
(1437, 'products', 'meta_description', 53, 'en', '', '2019-07-12 11:45:33', '2019-07-12 11:45:33'),
(1438, 'products', 'meta_keywords', 53, 'ua', '', '2019-07-12 11:45:33', '2019-07-12 11:45:33'),
(1439, 'products', 'meta_keywords', 53, 'en', '', '2019-07-12 11:45:34', '2019-07-12 11:45:34'),
(1440, 'products', 'seo_title', 53, 'ua', '', '2019-07-12 11:45:34', '2019-07-12 11:45:34'),
(1441, 'products', 'seo_title', 53, 'en', '', '2019-07-12 11:45:34', '2019-07-12 11:45:34'),
(1442, 'products', 'name', 54, 'ua', 'Лимон-Імбир', '2019-07-12 11:49:52', '2019-07-12 11:49:52'),
(1443, 'products', 'name', 54, 'en', '', '2019-07-12 11:49:53', '2019-07-12 11:49:53'),
(1444, 'products', 'description', 54, 'ua', '<p>Відкрий пляшку сонячного світла! Ми вичавили все, до останньої краплі радості зі свіжих лимонів і додали натуральний імбир, щоб отримати цей ідеальний лимонад. Пряні імбирні тони тонізують, перш ніж зникнути освіжаючим, м\'яким післясмаком цитрусових.</p>', '2019-07-12 11:49:53', '2019-07-12 11:49:53'),
(1445, 'products', 'description', 54, 'en', '', '2019-07-12 11:49:53', '2019-07-12 11:49:53'),
(1446, 'products', 'meta_description', 54, 'ua', '', '2019-07-12 11:49:54', '2019-07-12 11:49:54'),
(1447, 'products', 'meta_description', 54, 'en', '', '2019-07-12 11:49:54', '2019-07-12 11:49:54'),
(1448, 'products', 'meta_keywords', 54, 'ua', '', '2019-07-12 11:49:54', '2019-07-12 11:49:54'),
(1449, 'products', 'meta_keywords', 54, 'en', '', '2019-07-12 11:49:54', '2019-07-12 11:49:54'),
(1450, 'products', 'seo_title', 54, 'ua', '', '2019-07-12 11:49:55', '2019-07-12 11:49:55'),
(1451, 'products', 'seo_title', 54, 'en', '', '2019-07-12 11:49:55', '2019-07-12 11:49:55'),
(1452, 'products', 'name', 55, 'ua', 'Полуниця-Базилік', '2019-07-12 11:51:22', '2019-07-12 11:51:22'),
(1453, 'products', 'name', 55, 'en', '', '2019-07-12 11:51:23', '2019-07-12 11:51:23'),
(1454, 'products', 'description', 55, 'ua', '<p>Пікантна новинка! Новий унікальний смак!</p>\n<p>Ніжний дует соковитої полуниці, ароматного базиліка і домінуюче соло лимонного соку не залишать жадобі жодного шансу!</p>\n<p>Цей смак нагадує про літо і дарує щастя в кожному ковтку !!!</p>', '2019-07-12 11:51:23', '2019-07-12 11:51:23'),
(1455, 'products', 'description', 55, 'en', '', '2019-07-12 11:51:23', '2019-07-12 11:51:23'),
(1456, 'products', 'meta_description', 55, 'ua', '', '2019-07-12 11:51:23', '2019-07-12 11:51:23'),
(1457, 'products', 'meta_description', 55, 'en', '', '2019-07-12 11:51:24', '2019-07-12 11:51:24'),
(1458, 'products', 'meta_keywords', 55, 'ua', '', '2019-07-12 11:51:24', '2019-07-12 11:51:24'),
(1459, 'products', 'meta_keywords', 55, 'en', '', '2019-07-12 11:51:25', '2019-07-12 11:51:25'),
(1460, 'products', 'seo_title', 55, 'ua', '', '2019-07-12 11:51:25', '2019-07-12 11:51:25'),
(1461, 'products', 'seo_title', 55, 'en', '', '2019-07-12 11:51:25', '2019-07-12 11:51:25'),
(1462, 'products', 'name', 56, 'ua', 'Лайм-Бузина', '2019-07-12 11:52:53', '2019-07-12 11:52:53'),
(1463, 'products', 'name', 56, 'en', '', '2019-07-12 11:52:54', '2019-07-12 11:52:54'),
(1464, 'products', 'description', 56, 'ua', '<p>Думаєте, що знаєте про лимонади все? Як щодо лимонаду з квітів?! Лимонад зі смаком лайма і квітів бузини!</p>\n<p>Яскраві, освіжаючі соки лимона і лайма чудово врівноважують тонкі тони квітів бузини, щоб створити вишуканий букет.</p>', '2019-07-12 11:52:54', '2019-07-12 11:52:54'),
(1465, 'products', 'description', 56, 'en', '', '2019-07-12 11:52:54', '2019-07-12 11:52:54'),
(1466, 'products', 'meta_description', 56, 'ua', '', '2019-07-12 11:52:54', '2019-07-12 11:52:54'),
(1467, 'products', 'meta_description', 56, 'en', '', '2019-07-12 11:52:55', '2019-07-12 11:52:55'),
(1468, 'products', 'meta_keywords', 56, 'ua', '', '2019-07-12 11:52:55', '2019-07-12 11:52:55'),
(1469, 'products', 'meta_keywords', 56, 'en', '', '2019-07-12 11:52:55', '2019-07-12 11:52:55'),
(1470, 'products', 'seo_title', 56, 'ua', '', '2019-07-12 11:52:56', '2019-07-12 11:52:56'),
(1471, 'products', 'seo_title', 56, 'en', '', '2019-07-12 11:52:56', '2019-07-12 11:52:56'),
(1472, 'products', 'name', 57, 'ua', 'Лимон-Малина', '2019-07-12 11:54:09', '2019-07-12 11:54:09'),
(1473, 'products', 'name', 57, 'en', '', '2019-07-12 11:54:10', '2019-07-12 11:54:10'),
(1474, 'products', 'description', 57, 'ua', '<p>Ніщо так не втамовує спрагу і не піднімає настрій, як смачний лимонад, виготовлений з улюблених інгредієнтів!</p>\n<p>Аромат соковитої, стиглої, дозрілої під пекучим сонцем малини і сік освіжаючого лимона чекають тебе в пляшці цього лимонаду!</p>', '2019-07-12 11:54:10', '2019-07-12 11:54:10'),
(1475, 'products', 'description', 57, 'en', '', '2019-07-12 11:54:10', '2019-07-12 11:54:10'),
(1476, 'products', 'meta_description', 57, 'ua', '', '2019-07-12 11:54:11', '2019-07-12 11:54:11'),
(1477, 'products', 'meta_description', 57, 'en', '', '2019-07-12 11:54:11', '2019-07-12 11:54:11'),
(1478, 'products', 'meta_keywords', 57, 'ua', '', '2019-07-12 11:54:11', '2019-07-12 11:54:11'),
(1479, 'products', 'meta_keywords', 57, 'en', '', '2019-07-12 11:54:11', '2019-07-12 11:54:11'),
(1480, 'products', 'seo_title', 57, 'ua', '', '2019-07-12 11:54:12', '2019-07-12 11:54:12'),
(1481, 'products', 'seo_title', 57, 'en', '', '2019-07-12 11:54:12', '2019-07-12 11:54:12'),
(1482, 'sliders', 'title', 2, 'ua', '', '2019-07-17 14:14:11', '2019-07-17 14:14:11'),
(1483, 'sliders', 'title', 2, 'en', '', '2019-07-17 14:14:12', '2019-07-17 14:14:12'),
(1484, 'sliders', 'text', 2, 'ua', '', '2019-07-17 14:14:12', '2019-07-17 14:14:12'),
(1485, 'sliders', 'text', 2, 'en', '', '2019-07-17 14:14:12', '2019-07-17 14:14:12'),
(1486, 'sliders', 'btn_text', 2, 'ua', '', '2019-07-17 14:14:13', '2019-07-17 14:14:13'),
(1487, 'sliders', 'btn_text', 2, 'en', '', '2019-07-17 14:14:13', '2019-07-17 14:14:13');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$SyvyAvo5nyDDr96UPaGPwu3Guq91RZCKde35k6HXaVFpvdhBwFxIi', 'Id8zKXX9YCT4Nt5G4YY5I2F3EcBZCmXvPMX0wWP15b5iP1Qvsi0wxtaRiMcl', '{\"locale\":\"ru\"}', '2019-04-11 05:22:00', '2019-07-11 10:51:02');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `vacancies`
--

CREATE TABLE `vacancies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `responsibilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `manager_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `vacancies`
--

INSERT INTO `vacancies` (`id`, `title`, `requirements`, `responsibilities`, `manager_id`, `city_id`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Менеджер по закупкам', '<ul>\n<li>вік від 18 до 35 років</li>\n<li>вища, незакінчена вища освіта</li>\n<li>знання ПК на рівні досвідченого користувача (знаня Exel, 1C - буде перевагою)</li>\n<li>охайність в роботі з документами</li>\n<li>уважність, відповідальність, стресостійкість, гармотна мова</li>\n</ul>', '<ul>\n<li>пошук транспорту</li>\n<li>формування бази перевізників</li>\n<li>докуменатльне оформлення грузоперевезень</li>\n<li>контроль грузоперевезення</li>\n</ul>', 2, 2, 'menedzher-po-zakupkam', '2019-04-12 05:19:00', '2019-05-13 11:07:09'),
(3, 'Менеджер по работе с клиентами', '<p><!--(figmeta)eyJmaWxlS2V5IjoiQzNGcnBIaUhuN2h0NmVzOUs2WkswRlBaIiwicGFzdGVJRCI6MTgwMzY2ODQwMSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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', '<p><!--(figmeta)eyJmaWxlS2V5IjoiQzNGcnBIaUhuN2h0NmVzOUs2WkswRlBaIiwicGFzdGVJRCI6MTgwMzY2ODQwMSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)--><span style=\"white-space: pre-wrap;\">качественное консультирование клиентов; оформление заявок на потребительские кредиты; прием и выдача денег; дружелюбие и клиентоориентированность; уверенное владение компьютером.</span></p>', 2, 4, 'menedzher-po-rabote-s-klientami', '2019-06-03 11:33:14', '2019-06-03 11:33:14');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `badge_products`
--
ALTER TABLE `badge_products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `blog_posts_slug_unique` (`slug`) USING BTREE;

--
-- Индексы таблицы `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`) USING BTREE;

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `data_types_name_unique` (`name`) USING BTREE,
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`) USING BTREE;

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `menus_name_unique` (`name`) USING BTREE;

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`) USING BTREE;

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `pages_slug_unique` (`slug`) USING BTREE;

--
-- Индексы таблицы `page_blocks`
--
ALTER TABLE `page_blocks`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `page_blocks_page_id_index` (`page_id`) USING BTREE;

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permissions_key_index` (`key`) USING BTREE;

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `permission_role_permission_id_index` (`permission_id`) USING BTREE,
  ADD KEY `permission_role_role_id_index` (`role_id`) USING BTREE;

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `posts_slug_unique` (`slug`) USING BTREE;

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_unique` (`name`) USING BTREE;

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `settings_key_unique` (`key`) USING BTREE;

--
-- Индексы таблицы `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`) USING BTREE;

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `users_role_id_foreign` (`role_id`) USING BTREE;

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  ADD KEY `user_roles_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `user_roles_role_id_index` (`role_id`) USING BTREE;

--
-- Индексы таблицы `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `badge_products`
--
ALTER TABLE `badge_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT для таблицы `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `page_blocks`
--
ALTER TABLE `page_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1488;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
