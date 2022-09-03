-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 03 2022 г., 06:45
-- Версия сервера: 5.7.38
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sushiyan`
--

-- --------------------------------------------------------

--
-- Структура таблицы `addictionally`
--

CREATE TABLE `addictionally` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `addictionally`
--

INSERT INTO `addictionally` (`id`, `title`, `weight`, `description`, `price`, `img_url`) VALUES
(1, 'Облепиховый морс 0,5', 500, '', 99, '/assets/images/img/addictionally/add_1.jpg'),
(2, 'Клюквенный морс 0,5', 500, '', 99, '/assets/images/img/addictionally/add_2.jpg'),
(3, 'Кока-кола 0,5л', 500, '', 99, '/assets/images/img/addictionally/add_3.png'),
(4, 'Нектар RIOBA персик 1.0 л', 1000, '', 180, '/assets/images/img/addictionally/add_4.jpg'),
(5, 'Нектар RIOBA вишня 1.0 л', 1000, '', 180, '/assets/images/img/addictionally/add_5.jpg'),
(6, 'Ореховый соус', 25, '', 70, '/assets/images/img/addictionally/add_6.jpg'),
(7, 'Соевый соус', 40, '', 25, '/assets/images/img/addictionally/add_7.jpg'),
(8, 'Спайси соус', 30, '', 46, '/assets/images/img/addictionally/add_8.jpg'),
(9, 'Васаби', 7, '', 25, '/assets/images/img/addictionally/add_9.jpg'),
(10, 'Имбирь', 25, '', 25, '/assets/images/img/addictionally/add_10.jpg'),
(11, 'Облепиховый морс 0,5', 500, '', 99, '/assets/images/img/addictionally/add_1.jpg'),
(12, 'Клюквенный морс 0,5', 500, '', 99, '/assets/images/img/addictionally/add_2.jpg'),
(13, 'Кока-кола 0,5л', 500, '', 99, '/assets/images/img/addictionally/add_3.png'),
(14, 'Нектар RIOBA персик 1.0 л', 1000, '', 180, '/assets/images/img/addictionally/add_4.jpg'),
(15, 'Нектар RIOBA вишня 1.0 л', 1000, '', 180, '/assets/images/img/addictionally/add_5.jpg'),
(16, 'Ореховый соус', 25, '', 70, '/assets/images/img/addictionally/add_6.jpg'),
(17, 'Соевый соус', 40, '', 25, '/assets/images/img/addictionally/add_7.jpg'),
(18, 'Спайси соус', 30, '', 46, '/assets/images/img/addictionally/add_8.jpg'),
(19, 'Васаби', 7, '', 25, '/assets/images/img/addictionally/add_9.jpg'),
(20, 'Имбирь', 25, '', 25, '/assets/images/img/addictionally/add_10.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `baked rolls`
--

CREATE TABLE `baked rolls` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `baked rolls`
--

INSERT INTO `baked rolls` (`id`, `title`, `weight`, `description`, `price`, `img_url`) VALUES
(1, 'Жгучий ролл запечен.', 120, 'Лосось тушеный, соус Терияки, лучок, рис, водоросли Нори. Шапочка из острого Спайси соуса', 330, '/assets/images/img/baked_rolls/roll_1.jpg'),
(2, 'Хатико ролл запечен.', 250, 'Сыр сливочный, помидорчик, свежий огурчик, крабовое мясо (сурими), рис, водоросли Нори. Шапочка из сыра Пармезан и японского майонеза.', 330, '/assets/images/img/baked_rolls/roll_2.jpg'),
(3, 'Кардинал ролл запечен.', 270, 'Лосось тушеный, соус Терияки, хрустящий лук фри, огурчик, сыр сливочный, водоросли Нори, рис. Шапочка из соуса Лава с чесночком', 390, '/assets/images/img/baked_rolls/roll_3.jpg'),
(4, 'УкушуКа ролл запечен.', 270, 'Угорь жареный, сыр сливочный, кунжут черный, огурчик, рис, водоросли Нори. Шапочка из сыра Пармезан с японским майонезом.', 550, '/assets/images/img/baked_rolls/roll_4.jpg'),
(5, 'Черная Мамба ролл запечен.', 270, 'Угорь жареный, сыр сливочный, кунжут черный, огурчик, рис, водоросли Нори. Шапочка из соуса Лава с японским майонезом, с чесночком и икрой Масага.', 540, '/assets/images/img/baked_rolls/roll_5.jpg'),
(6, 'Яки Маки Терияки запечен.', 130, 'Лосось тушеный, соус Терияки, рис, водоросли Нори. Шапочка из сыра Пармезан и японского майонеза', 350, '/assets/images/img/baked_rolls/roll_6.jpg'),
(7, 'Яки Маки с крабом запечен.', 120, 'Крабовое мясо (сурими), рис, водоросли Нори. Шапочка из сыра Пармезан и японского майонеза.', 240, '/assets/images/img/baked_rolls/roll_7.jpg'),
(8, 'Яки Маки с креветкой запечен.', 120, 'Коктейльная креветка, лучок зеленый, рис, водоросли Нори. Шапочка из сыра Пармезан и японского майонеза.', 270, '/assets/images/img/baked_rolls/roll_8.jpg'),
(9, 'Канкун запечен.', 220, 'В состав ролла входят бекон, курочка, сыр сливочный, рис, водоросли нори. Сверху идет сырная шапочка из сыра Пармезан и японского майонеза.', 450, '/assets/images/img/baked_rolls/roll_9.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `nudles-and-wok`
--

CREATE TABLE `nudles-and-wok` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nudles-and-wok`
--

INSERT INTO `nudles-and-wok` (`id`, `title`, `weight`, `description`, `price`, `img_url`) VALUES
(1, 'Карбонара', 320, 'Гнезда тальятелле с беконом под сливочным соусом с томатом и сыром Пармезан', 500, '/assets/images/img/nudles-and-WOK/wok_1.jpg'),
(2, 'Соба с курицей Терияки', 320, 'Гречневая лапша Соба с курочкой в соусе Терияки с грибами, сладким перцем, морковью, лучком, кунжутом и петрушкой.', 400, '/assets/images/img/nudles-and-WOK/wok_2.jpg'),
(3, 'Удон с курицей', 320, 'Спагетти из пшеницы с курочкой в соусе Терияки, с луком, морковью, огурчиком, пекинской капустой, томатами и сладким перцем', 380, '/assets/images/img/nudles-and-WOK/wok_3.jpg'),
(4, 'Фетучини с грибами и курицей', 320, 'Спагетти с грибами и курицей под сливочным соусом с сыром Пармезан и петрушкой.', 450, '/assets/images/img/nudles-and-WOK/wok_4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `positions` blob,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `recomendations`
--

CREATE TABLE `recomendations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recomendations`
--

INSERT INTO `recomendations` (`id`, `title`, `weight`, `description`, `price`, `img_url`) VALUES
(1, 'Обжорка сет', 1700, '80шт. Большой набор для большой компании, много и недорого на 5-7 персон: ролл Бавария,ролл Цыбуля с курой, ролл с креветкой и огурцом, ролл с лососем, ролл с тунцом, Афина ролл, Ямайка ролл, Фетаки ролл, Камбоджа ролл, Лава ролл', 2368, '/assets/images/img/sets/set_4.jpg'),
(2, 'Золото сет', 1340, '48шт. Золотая коллекция самых популярных блюд: 1/2 Филадельфия Original ролл, 1/2 Унаги-Лайт ролл, 1/2 Филадельфия Лайт ролл, 1/2 Эйфория ролл, Спайси с креветкой ролл, Паттайя НОТ ролл, горячий Терияки ролл, Цезарь НОТ ролл', 2157, '/assets/images/img/sets/set_3.jpg'),
(3, 'Карбонара', 320, 'Гнезда тальятелле с беконом под сливочным соусом с томатом и сыром Пармезан', 500, '/assets/images/img/nudles-and-WOK/wok_1.jpg'),
(4, 'Феррари', 210, 'Икра Масаго, Креветки в имбирном соусе, огурчик, сыр сливочный, водоросли Нори, рис', 390, '/assets/images/img/rolls/roll_11.jpg'),
(5, '1/2 Филадельфия Original', 135, '4 шт.Лосось, сливочный сыр, рис', 390, '/assets/images/img/rolls/roll_34.jpg'),
(6, 'Гункан креветка', 40, 'Креветка, спайси соус, рис', 190, '/assets/images/img/sushi/roll_6.jpg'),
(7, 'Суши с лососем', 35, 'Лосось, рис, соус из сливочного сыра', 160, '/assets/images/img/sushi/roll_2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `rolls`
--

CREATE TABLE `rolls` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rolls`
--

INSERT INTO `rolls` (`id`, `title`, `weight`, `description`, `price`, `img_url`) VALUES
(1, 'Снежный краб', 210, 'Мясо краба (сурими), стружка Тунца, Икра рыбы Капеллан, омлет японский, авокадо, рис, водоросли Нори', 320, '/assets/images/img/rolls/roll_1.jpg'),
(2, 'Шах-и-Мат ролл', 220, 'Угорь жареный рубленый, Унаги соус сладковатый, кунжут черный и белый, огурчик, сыр сливочный, водоросли Нори, рис', 420, '/assets/images/img/rolls/roll_2.jpg'),
(3, 'Лосось Терияки ролл', 230, 'Лосось тушеный, соус Терияки, хрустящий лук фри, огурчик, сыр сливочный, водоросли Нори, рис', 390, '/assets/images/img/rolls/roll_3.jpg'),
(4, 'Фитнес', 215, 'Перчик болгарский, сливочный сыр, салат, огурчик, томат, укроп, рис, водоросли Нори', 220, '/assets/images/img/rolls/roll_4.jpg'),
(5, 'Эйфория', 230, 'Креветки в имбирном соусе, соус Лава с чесночком и с Икрой рыбы Капеллан, лосось, сливочный сыр, рис, водоросли нори', 430, '/assets/images/img/rolls/roll_5.jpg'),
(6, 'Канадский-Лайт', 240, 'Угорь, лосось, соус Унаги, кунжут, огурчик, рис, водоросли нори, соус из сливочного сыра', 540, '/assets/images/img/rolls/roll_6.jpg'),
(7, 'Унаги-Лайт', 230, 'Угорь, сыр сливочный, соус Унаги, кунжут, рис, водоросли нори', 440, '/assets/images/img/rolls/roll_7.jpg'),
(8, 'Тамаго ролл', 210, 'Омлет японский, Икра рыбы Капеллан, сливочный сыр, водоросли Нори', 250, '/assets/images/img/rolls/roll_8.jpg'),
(9, 'Цыбуля с курой', 220, 'Хрустящий лук фри вокруг, копченая курица, сыр Фетакса, помидор, рис, водоросли нори', 280, '/assets/images/img/rolls/roll_9.jpg'),
(10, 'Шанхай ролл', 245, 'Лосось, огурец, сливочный сыр, рис, водоросли Нори', 300, '/assets/images/img/rolls/roll_10.jpg'),
(11, 'Феррари', 210, 'Икра Масаго, Креветки в имбирном соусе, огурчик, сыр сливочный, водоросли Нори, рис', 390, '/assets/images/img/rolls/roll_11.jpg'),
(12, 'Чикки Пигги ролл', 220, 'Кура копченая, Бекончик , помидорчик, огурчик, сливочный сыр, рис, водоросли нори', 320, '/assets/images/img/rolls/roll_12.jpg'),
(13, 'Гейша', 215, 'Лосось, огурец, кунжут, сыр сливочный, рис, водоросли нори', 330, '/assets/images/img/rolls/roll_13.jpg'),
(14, 'Лава', 240, 'Лосось, огурец, сыр сливочный, соус Лава с чесночком ,Икра рыбы Капеллан, рис, водоросли нори', 360, '/assets/images/img/rolls/roll_14.jpg'),
(15, 'Бонито', 205, 'Лосось, огурец, сливочный сыр, стружка тунца, рис, водоросли нори', 380, '/assets/images/img/rolls/roll_15.jpg'),
(16, 'Фахитос ролл', 250, 'Бекон , курочка, болгарский перец, огурчик, сливочный сыр, рис', 320, '/assets/images/img/rolls/roll_16.jpg'),
(17, 'Красный Дракон', 270, 'Сливочный сыр, икра лосося, Икра рыбы Капеллан, крабовое мясо (сурими), стружка тунца, свежий огурец, фирменный соус Спайси', 430, '/assets/images/img/rolls/roll_17.jpg'),
(18, 'Черный Дракон', 230, 'Соус Лава с чесночком,Икра рыбы Капеллан, крабовое мясо (имитация), стружка тунца, свежий огурчик, фирменный соус Спайси', 320, '/assets/images/img/rolls/roll_18.jpg'),
(19, 'Ролл с лососем', 120, 'Лосось, рис, водоросли Нори', 280, '/assets/images/img/rolls/roll_19.jpg'),
(20, 'Ролл с курицей', 130, '5шт. Курочка, огурчик, болгарский перчик, сливочный сыр, рис, водоросли Нори', 230, '/assets/images/img/rolls/roll_20.jpg'),
(21, 'Калифорния с крабом', 230, 'Икра рыбы Капеллан, крабовое мясо (сурими), авокадо, огурец, сливочный сыр, рис, водоросли нори', 330, '/assets/images/img/rolls/roll_21.jpg'),
(22, 'Калифорния с креветкой', 230, 'Икра рыбы Капеллан, креветка, авокадо, огурец, сливочный сыр, рис, водоросли нори', 460, '/assets/images/img/rolls/roll_22.jpg'),
(23, 'Паттайя', 230, 'Курочка, томат, пекинская капуста, свежий лучок, сливочный сыр, рис, водоросли Нори.', 260, '/assets/images/img/rolls/roll_23.jpg'),
(24, 'Горячий Унаги ролл', 250, 'Угорь жареный, соус Унаги,сыр сливочный, кунжут, водоросли Нори, кляр, рис', 460, '/assets/images/img/rolls/roll_24.jpg'),
(25, 'Венеция', 280, 'Креветки, сухари Панко, сыр Гауда, сливочный сыр, укроп, майонез, чеснок, водоросли Нори, рис', 420, '/assets/images/img/rolls/roll_25.jpg'),
(26, 'Банзай', 280, 'Снежный краб (сурими), лосось, сливочный сыр, Икра рыбы Капеллан, рис, водоросли Нори, сухари Панко', 430, '/assets/images/img/rolls/roll_26.jpg'),
(27, 'Горячая Эйфория', 220, 'Креветки, лосось, сыр сливочный, кляр, сухари Панко,Икра рыбы Капеллан, рис, соус из сыра и укропчика.', 550, '/assets/images/img/rolls/roll_27.jpg'),
(28, '1/2 Горячая Филадельфия', 135, '4 шт. Лосось, сливочный сыр, кляр, рис, водоросли Нори', 400, '/assets/images/img/rolls/roll_28.jpg'),
(29, 'Камчатка Hot', 200, 'Мясо Краба (сурими), авокадо, рис, Икра рыбы Капеллан, лист салата, зеленый лучок', 300, '/assets/images/img/rolls/roll_29.jpg'),
(30, 'Такос Териякос ролл', 210, 'Лосось тушеный, соус Терияки, лепешка Тортилья сырная, сливочный сыр, лист салата, огурчик', 430, '/assets/images/img/rolls/roll_30.jpg'),
(31, 'Самурай', 220, 'Крабовое мясо (сурими), лосось, сливочный сыр, рис, водоросли Нори, сухари Панко', 380, '/assets/images/img/rolls/roll_31.jpg'),
(32, 'Фила-Лайт', 190, 'Лосось свежий, сыр сливочный, водоросли Нори, рис', 400, '/assets/images/img/rolls/roll_32.jpg'),
(33, 'Фила-Лайт с огурцом', 190, 'Лосось,свежий огурчик, сыр сливочный, водоросли Нори, рис', 400, '/assets/images/img/rolls/roll_33.jpg'),
(34, '1/2 Филадельфия Original', 135, '4 шт.Лосось, сливочный сыр, рис', 390, '/assets/images/img/rolls/roll_34.jpg'),
(35, '1/2 Филадельфия Мега', 190, 'Лосось,свежий огурчик, сыр сливочный, водоросли Нори, рис', 400, '/assets/images/img/rolls/roll_35.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `sets`
--

CREATE TABLE `sets` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sets`
--

INSERT INTO `sets` (`id`, `title`, `weight`, `description`, `price`, `img_url`) VALUES
(1, 'Рыбка сет запечен.', 380, '24шт. В набор входят три ролла: Яки Маки с креветкой, Яки Маки Терияки, Яки Маки с крабом. Весь сет сверху посыпан белым кунжутом и полит соусом унаги', 940, '/assets/images/img/sets/set_1.jpg'),
(2, 'Баунти для двоих сет.', 675, '32шт. Набор из 4 роллов на 2 персоны: Эйфория ролл, Филадельфия-Лайт ролл, Самурай HOT ролл, Венеция HOT ролл', 1592, '/assets/images/img/sets/set_2.jpg'),
(3, 'Золото сет', 1340, '48шт. Золотая коллекция самых популярных блюд: 1/2 Филадельфия Original ролл, 1/2 Унаги-Лайт ролл, 1/2 Филадельфия Лайт ролл, 1/2 Эйфория ролл, Спайси с креветкой ролл, Паттайя НОТ ролл, горячий Терияки ролл, Цезарь НОТ ролл', 2157, '/assets/images/img/sets/set_3.jpg'),
(4, 'Обжорка сет', 1700, '80шт. Большой набор для большой компании, много и недорого на 5-7 персон: ролл Бавария,ролл Цыбуля с курой, ролл с креветкой и огурцом, ролл с лососем, ролл с тунцом, Афина ролл, Ямайка ролл, Фетаки ролл, Камбоджа ролл, Лава ролл', 2368, '/assets/images/img/sets/set_4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `sushi`
--

CREATE TABLE `sushi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sushi`
--

INSERT INTO `sushi` (`id`, `title`, `weight`, `description`, `price`, `img_url`) VALUES
(1, 'Суши с креветкой', 35, 'Креветка, рис, соус из сливочного сыра', 160, '/assets/images/img/sushi/roll_1.jpg'),
(2, 'Суши с лососем', 35, 'Лосось, рис, соус из сливочного сыра', 160, '/assets/images/img/sushi/roll_2.jpg'),
(3, 'Суши с тунцом', 35, 'Тунец, рис, соус из сливочного сыра', 160, '/assets/images/img/sushi/roll_3.jpg'),
(4, 'Гункан лосось', 40, 'Лосось, спайси соус, рис', 190, '/assets/images/img/sushi/roll_4.jpg'),
(5, 'Гункан тунец', 40, 'Тунец, спайси соус, рис', 190, '/assets/images/img/sushi/roll_5.jpg'),
(6, 'Гункан креветка', 40, 'Креветка, спайси соус, рис', 190, '/assets/images/img/sushi/roll_6.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `orders`) VALUES
(1, 'Денис', '79126937153', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `addictionally`
--
ALTER TABLE `addictionally`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `baked rolls`
--
ALTER TABLE `baked rolls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `nudles-and-wok`
--
ALTER TABLE `nudles-and-wok`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recomendations`
--
ALTER TABLE `recomendations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rolls`
--
ALTER TABLE `rolls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sets`
--
ALTER TABLE `sets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sushi`
--
ALTER TABLE `sushi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `orders` (`orders`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `addictionally`
--
ALTER TABLE `addictionally`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `baked rolls`
--
ALTER TABLE `baked rolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `nudles-and-wok`
--
ALTER TABLE `nudles-and-wok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `recomendations`
--
ALTER TABLE `recomendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `rolls`
--
ALTER TABLE `rolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `sets`
--
ALTER TABLE `sets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sushi`
--
ALTER TABLE `sushi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`orders`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
