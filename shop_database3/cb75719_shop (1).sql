-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 26 2022 г., 17:56
-- Версия сервера: 5.7.35-38
-- Версия PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cb75719_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id_catalog_product` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `count_product` int(11) NOT NULL,
  PRIMARY KEY (`id_catalog_product`),
  KEY `product` (`product`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id_catalog_product`, `product`, `product_description`, `count_product`) VALUES
(1, 'Брюки', 'Брюки мужские', 2),
(2, 'Свитеры', 'Свитеры мужские', 2),
(3, 'Ботинки', 'Ботинки мужские', 3),
(4, 'Кроссовки', 'Кроссовки мужские', 3),
(5, 'Сандалии', 'Сандалии мужские', 3),
(6, 'Защитные маски', 'Защитные маски мужские', 4),
(7, 'Очки', 'Очки мужские', 4),
(8, 'Галстуки', 'Галстуки мужские', 4),
(9, 'Зонты', 'Зонты мужские', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `category_product`
--

CREATE TABLE IF NOT EXISTS `category_product` (
  `id_cat_prod` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  KEY `id_cat_prod` (`id_cat_prod`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category_product`
--

INSERT INTO `category_product` (`id_cat_prod`, `id_product`) VALUES
(1, 1),
(1, 2),
(2, 30),
(2, 31),
(3, 3),
(3, 4),
(3, 5),
(4, 6),
(4, 7),
(4, 8),
(5, 11),
(5, 12),
(5, 13),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(7, 18),
(7, 19),
(7, 20),
(7, 21),
(8, 22),
(8, 23),
(8, 24),
(8, 25),
(9, 14),
(9, 15),
(9, 15),
(9, 16);

-- --------------------------------------------------------

--
-- Структура таблицы `main_category_main_picture`
--

CREATE TABLE IF NOT EXISTS `main_category_main_picture` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_main_picture` int(11) NOT NULL,
  KEY `id_category` (`id_category`),
  KEY `id_product` (`id_product`),
  KEY `id_main_picture` (`id_main_picture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `main_category_main_picture`
--

INSERT INTO `main_category_main_picture` (`id_product`, `id_category`, `id_main_picture`) VALUES
(1, 1, 27),
(4, 3, 24),
(16, 9, 14),
(23, 8, 7),
(25, 8, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `id_pictures` int(11) NOT NULL AUTO_INCREMENT,
  `name_preview_picture` varchar(255) NOT NULL,
  `link_pictures_preview` varchar(255) NOT NULL,
  `link_detail_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pictures`),
  KEY `name_preview_picture` (`name_preview_picture`),
  KEY `link_detail_image` (`link_detail_image`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `picture`
--

INSERT INTO `picture` (`id_pictures`, `name_preview_picture`, `link_pictures_preview`, `link_detail_image`) VALUES
(1, 'Polo Ralph Lauren\r\nМаска для лица защитная', 'https://a.lmcdn.ru/img236x341/R/T/RTLAAF706601_15816306_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/R/T/RTLAAF706601_15816307_2_v1.jpg'),
(2, 'UYN\r\nМаска для лица защитная COMMUNIT', 'https://a.lmcdn.ru/img236x341/R/T/RTLAAX133901_16384002_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/R/T/RTLAAX133901_16384003_2_v1.jpg'),
(3, 'adidas Originals\r\nМаски для лица защитные 3 шт. IC...', 'https://a.lmcdn.ru/img236x341/A/D/AD093LUMPQE7_13485582_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/A/D/AD093LUMPQE6_13485581_2_v1.jpg'),
(4, 'adidas Originals\r\nМаски для лица защитные 3 шт. IC...', 'https://a.lmcdn.ru/img236x341/R/T/RTLAAX134001_16384004_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/A/D/AD093LUMPQE7_13485583_2_v1.jpg'),
(5, 'Henderson\r\nГалстук TS-2455', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM089NH_17075723_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM12EAQ_14989675_2_v1.jpg'),
(6, 'Stilmark\r\nГалстук', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0MUNF_12162066_1_v2.jpg', 'Ссылка из анонса'),
(7, 'Hugo\r\nГалстук', 'https://a.lmcdn.ru/img236x341/R/T/RTLABO750701_17556920_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/R/T/RTLABY557401_17976889_2_v1.jpg'),
(8, 'Stenser\r\nГалстук', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I3AV_16354927_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I3AV_16354928_2_v1.jpg'),
(9, 'Armani Exchange\r\nОчки солнцезащитные AX4112SU 8181...', 'https://a.lmcdn.ru/img236x341/R/T/RTLAAV345301_15612704_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/R/T/RTLABH305501_16695932_2_v1.jpg'),
(10, 'Ray-Ban®\r\nОчки солнцезащитные ROUND METAL ', 'https://a.lmcdn.ru/img236x341/R/A/RA014DUATCF7_6317025_1_v2.jpg', 'https://a.lmcdn.ru/img236x341/R/A/RA014DUATCF7_6317027_3_v2.jpg'),
(11, 'Ray Flector\r\nОчки солнцезащитные с поляризационным...', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM23JJ6_11349948_1_v2.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM23JJ6_11349949_2_v2.jpg'),
(12, 'Matrix\r\nОчки солнцезащитные', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1K8NF_11444905_1_v2.jpeg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0VPJN_14745447_2_v1.jpg'),
(13, 'Fabretti\r\nЗонт складной', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08XBX_18262674_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08H6J_17331688_2_v1.jpeg'),
(14, 'Lamberti\r\nЗонт-трость', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HHQH_13933428_1_v2.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HI58_13974054_2_v3.jpg'),
(15, 'VOGUE\r\nЗонт-трость', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1K40G_9444277_1_v3.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1K40G_9444280_2_v3.jpg'),
(16, 'Lamoda\r\nЗонт складной', 'https://a.lmcdn.ru/img236x341/L/A/LA145DUJXRQ3_11566670_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/L/A/LA145DUJXRQ3_11566671_2_v1.jpg'),
(17, 'Alessio Nesca\r\nСандалии', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM20U4I_10840563_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I5ZQ_16279227_2_v4.jpg'),
(18, 'Leon Medikal\r\nСандалии', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I8OZ_16987798_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I8P5_16987829_2_v1.jpg'),
(19, 'Wanngo Сандалии', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1H2BM_17642341_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1H2BM_17642342_2_v1.jpg'),
(20, 'Кроссовки Voyage Nitro GTX', 'https://a.lmcdn.ru/img236x341/R/T/RTLABJ096602_17899692_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/R/T/RTLABR131301_17767160_2_v1.jpg'),
(21, 'Кроссовки LITE RACER 2.0', 'https://a.lmcdn.ru/img236x341/A/D/AD002AMHLMW8_10905929_3_v1.jpg', 'https://a.lmcdn.ru/img236x341/A/D/AD002AMJYMA2_11576771_2_v3.jpg'),
(22, 'Кроссовки ECCO EXOSTRIDE', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HFFK_13910426_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/R/T/RTLABP389801_17577951_2_v1.jpg'),
(23, 'Ботинки трекинговые', 'https://a.lmcdn.ru/img236x341/M/P/MP002XU04RWM_16247599_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XU04RWM_16247600_2_v1.jpg'),
(24, 'Ботинки мужски', 'Ссылка на фото анонса', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HVQ4_15965340_2_v1.jpg'),
(25, 'Ботинки полнота F', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0T2AL_15370380_1_v1.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0T2AL_15370381_2_v1.jpg'),
(26, 'Брюки SMART', 'https://a.lmcdn.ru/img236x341/R/T/RTLABW772601_17845860_1_v1_2x.jpg', 'https://a.lmcdn.ru/img236x341/R/T/RTLABW772601_17845861_2_v1_2x.jpg'),
(27, 'Брюки спортивные', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08CR1_17213994_1_v1_2x.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08CR1_17213995_2_v1_2x.jpg'),
(28, 'DeFacto\r\nСвитер', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08PP2_17913508_1_v1_2x.jpg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08PPC_17913545_2_v1_2x.jpg'),
(29, 'Finn Flare\r\nСвитер', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HWUG_15838824_1_v1.jpeg', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HZLG_15953741_2_v1.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(255) NOT NULL,
  `price_product` int(11) NOT NULL,
  `discount_price_product` int(11) DEFAULT NULL,
  `price_promo_product` int(11) DEFAULT NULL,
  `description_product` varchar(255) NOT NULL,
  `count_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id_product`, `name_product`, `price_product`, `discount_price_product`, `price_promo_product`, `description_product`, `count_product`) VALUES
(1, 'Брюки спортивные', 1102, 2320, NULL, 'Описание: Брюки спортивные', 0),
(2, 'Брюки SMART', 3999, NULL, NULL, 'Описание: Брюки SMART', 0),
(3, 'Ботинки полнота F', 7450, NULL, NULL, 'Описание: Ботинки полнота F', 0),
(4, 'Ботинки мужски\r\n', 10990, 9490, NULL, 'Описание: Ботинки мужски', 0),
(5, 'Ботинки трекинговые', 10990, NULL, 10000, 'Описание: Ботинки трекинговые', 0),
(6, 'Кроссовки ECCO EXOSTRIDE', 5522, 4500, 4320, 'Описание: Кроссовки ECCO EXOSTRIDE', 0),
(7, 'Кроссовки LITE RACER 2.0', 11990, 11390, 6834, 'Описание: Кроссовки LITE RACER 2.0', 0),
(8, 'Кроссовки Voyage Nitro GTX', 11590, 9850, NULL, 'Описание: Кроссовки Voyage Nitro GTX', 0),
(11, 'Wanngo Сандалии\r\n', 8700, 5220, NULL, 'Описание: Wanngo Сандалии', 0),
(12, 'Leon Medikal\r\nСандалии', 9300, 5580, NULL, 'Описание: Leon Medikal Сандалии', 0),
(13, 'Alessio Nesca\r\nСандалии', 9990, 64900, NULL, 'Описание: Alessio Nesca Сандалии', 0),
(14, 'Lamoda\r\nЗонт складной', 1100, NULL, NULL, 'Описание: Lamoda Зонт складной', 0),
(15, 'VOGUE\r\nЗонт-трость', 4667, 4227, 0, 'Описание: VOGUE Зонт-трость', 0),
(16, 'Lamberti\r\nЗонт-трость', 2075, NULL, NULL, 'Описание: Lamberti Зонт-трость', 0),
(17, 'Fabretti\r\nЗонт складной', 6499, 3490, NULL, 'Описание: Fabretti Зонт складной', 0),
(18, 'Matrix\r\nОчки солнцезащитные', 2770, 1485, NULL, 'Описание: Matrix Очки солнцезащитные', 0),
(19, 'Ray Flector\r\nОчки солнцезащитные с поляризационными линзами\r\n', 2590, 1590, 0, 'Описание: Ray Flector Очки солнцезащитные с поляризационными линзами\r\n', 0),
(20, 'Ray-Ban®\r\nОчки солнцезащитные ROUND METAL ', 16100, 13100, NULL, 'Описание: Ray-Ban® Очки солнцезащитные ROUND METAL', 0),
(21, 'Armani Exchange\r\nОчки солнцезащитные AX4112SU 818180\r\n', 6125, 4620, 4000, 'Описание: Armani Exchange Очки солнцезащитные AX4112SU 818180', 0),
(22, 'Stenser\r\nГалстук\r\n', 2490, 1490, NULL, 'Описание: Stenser Галстук', 0),
(23, 'Hugo\r\nГалстук', 670, NULL, NULL, 'Описание: Hugo Галстук', 0),
(24, 'Stilmark\r\nГалстук', 999, NULL, NULL, 'Описание: Stilmark Галстук', 0),
(25, 'Henderson\r\nГалстук TS-2455', 599, NULL, NULL, 'Описание: Henderson Галстук TS-2455', 0),
(26, 'UYN\r\nМаска для лица защитная COMMUNITY MASK WINTER\r\n', 1599, 1299, 1200, 'Описание: UYN Маска для лица защитная COMMUNITY MASK WINTER', 0),
(27, 'adidas Originals\r\nМаски для лица защитные 3 шт. ICY PARK от adidas X IVY PARK\r\n', 499, NULL, NULL, 'Описание: adidas Originals\r\nМаски для лица защитные 3 шт. ICY PARK от adidas X IVY PARK', 0),
(28, 'UYN\r\nМаска для лица защитная COMMUNIT', 865, 800, 701, 'Описание: UYN\r\nМаска для лица защитная COMMUNIT', 0),
(29, 'Polo Ralph Lauren\r\nМаска для лица защитная\r\n', 1399, NULL, NULL, 'Описание: Polo Ralph Lauren\r\nМаска для лица защитная', 0),
(30, 'Finn Flare\r\nСвитер', 2999, 2599, NULL, 'Описание: Finn Flare Свитер', 0),
(31, 'DeFacto\r\nСвитер', 4999, 3999, 2599, 'Описание: DeFacto Свитер', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `id_product` int(11) NOT NULL,
  `id_image` int(11) NOT NULL,
  KEY `id_product` (`id_product`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product_image`
--

INSERT INTO `product_image` (`id_product`, `id_image`) VALUES
(1, 27),
(2, 26),
(3, 25),
(4, 24),
(5, 23),
(6, 22),
(7, 21),
(8, 20),
(11, 19),
(12, 18),
(13, 17),
(14, 16),
(15, 15),
(16, 14),
(17, 13),
(18, 12),
(19, 11),
(20, 10),
(21, 9),
(22, 8),
(23, 7),
(24, 6),
(25, 5),
(26, 2),
(27, 3),
(28, 2),
(29, 1),
(30, 29),
(31, 28);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`id_cat_prod`) REFERENCES `category` (`id_catalog_product`) ON UPDATE CASCADE,
  ADD CONSTRAINT `category_product_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Ограничения внешнего ключа таблицы `main_category_main_picture`
--
ALTER TABLE `main_category_main_picture`
  ADD CONSTRAINT `main_category_main_picture_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_catalog_product`) ON UPDATE CASCADE,
  ADD CONSTRAINT `main_category_main_picture_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON UPDATE CASCADE,
  ADD CONSTRAINT `main_category_main_picture_ibfk_3` FOREIGN KEY (`id_main_picture`) REFERENCES `picture` (`id_pictures`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_image_ibfk_2` FOREIGN KEY (`id_image`) REFERENCES `picture` (`id_pictures`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
