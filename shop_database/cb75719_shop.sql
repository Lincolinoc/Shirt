-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 26 2022 г., 06:06
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
-- Структура таблицы `category_product`
--

CREATE TABLE IF NOT EXISTS `category_product` (
  `id_catalog_product` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(255) NOT NULL,
  `parent_category_product_id` int(11) DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `count_product` int(11) NOT NULL,
  PRIMARY KEY (`id_catalog_product`),
  KEY `parent_product_id` (`parent_category_product_id`),
  KEY `product` (`product`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category_product`
--

INSERT INTO `category_product` (`id_catalog_product`, `product`, `parent_category_product_id`, `product_description`, `count_product`) VALUES
(1, 'Брюки', 1, 'Брюки мужские', 2),
(2, 'Свитеры', 1, 'Свитеры мужские', 2),
(3, 'Ботинки', 2, 'Ботинки мужские', 3),
(4, 'Кроссовки', 2, 'Кроссовки мужские', 3),
(5, 'Сандалии', 2, 'Сандалии мужские', 3),
(6, 'Защитные маски', 3, 'Защитные маски мужские', 4),
(7, 'Очки', 3, 'Очки мужские', 4),
(8, 'Галстуки', 3, 'Галстуки мужские', 4),
(9, 'Зонты', 3, 'Зонты мужские', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `category_shop`
--

CREATE TABLE IF NOT EXISTS `category_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_section` varchar(255) NOT NULL,
  `count_product` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `catalog_section` (`catalog_section`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `category_shop`
--

INSERT INTO `category_shop` (`id`, `catalog_section`, `count_product`) VALUES
(1, 'Одежда', 4),
(2, 'Обувь', 9),
(3, 'Аксессуары', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `id_pictures` int(11) NOT NULL AUTO_INCREMENT,
  `link_pictures_preview` varchar(255) NOT NULL,
  `name_preview_picture` varchar(255) NOT NULL,
  `link_detail_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pictures`),
  KEY `name_preview_picture` (`name_preview_picture`),
  KEY `link_detail_image` (`link_detail_image`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `picture`
--

INSERT INTO `picture` (`id_pictures`, `link_pictures_preview`, `name_preview_picture`, `link_detail_image`) VALUES
(1, 'https://a.lmcdn.ru/img236x341/R/T/RTLAAF706601_15816306_1_v1.jpg', 'Polo Ralph Lauren\r\nМаска для лица защитная', 'https://a.lmcdn.ru/img236x341/R/T/RTLAAF706601_15816307_2_v1.jpg'),
(2, 'https://a.lmcdn.ru/img236x341/R/T/RTLAAX133901_16384002_1_v1.jpg', 'UYN\r\nМаска для лица защитная COMMUNIT', 'https://a.lmcdn.ru/img236x341/R/T/RTLAAX133901_16384003_2_v1.jpg'),
(3, 'https://a.lmcdn.ru/img236x341/A/D/AD093LUMPQE7_13485582_1_v1.jpg', 'adidas Originals\r\nМаски для лица защитные 3 шт. IC...', 'https://a.lmcdn.ru/img236x341/A/D/AD093LUMPQE6_13485581_2_v1.jpg'),
(4, 'https://a.lmcdn.ru/img236x341/R/T/RTLAAX134001_16384004_1_v1.jpg', 'adidas Originals\r\nМаски для лица защитные 3 шт. IC...', 'https://a.lmcdn.ru/img236x341/A/D/AD093LUMPQE7_13485583_2_v1.jpg'),
(5, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM089NH_17075723_1_v1.jpg', 'Henderson\r\nГалстук TS-2455', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM12EAQ_14989675_2_v1.jpg'),
(6, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0MUNF_12162066_1_v2.jpg', 'Stilmark\r\nГалстук', 'Ссылка из анонса'),
(7, 'https://a.lmcdn.ru/img236x341/R/T/RTLABO750701_17556920_1_v1.jpg', 'Hugo\r\nГалстук', 'https://a.lmcdn.ru/img236x341/R/T/RTLABY557401_17976889_2_v1.jpg'),
(8, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I3AV_16354927_1_v1.jpg', 'Stenser\r\nГалстук', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I3AV_16354928_2_v1.jpg'),
(9, 'https://a.lmcdn.ru/img236x341/R/T/RTLAAV345301_15612704_1_v1.jpg', 'Armani Exchange\r\nОчки солнцезащитные AX4112SU 8181...', 'https://a.lmcdn.ru/img236x341/R/T/RTLABH305501_16695932_2_v1.jpg'),
(10, 'https://a.lmcdn.ru/img236x341/R/A/RA014DUATCF7_6317025_1_v2.jpg', 'Ray-Ban®\r\nОчки солнцезащитные ROUND METAL ', 'https://a.lmcdn.ru/img236x341/R/A/RA014DUATCF7_6317027_3_v2.jpg'),
(11, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM23JJ6_11349948_1_v2.jpg', 'Ray Flector\r\nОчки солнцезащитные с поляризационным...', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM23JJ6_11349949_2_v2.jpg'),
(12, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1K8NF_11444905_1_v2.jpeg', 'Matrix\r\nОчки солнцезащитные', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0VPJN_14745447_2_v1.jpg'),
(13, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08XBX_18262674_1_v1.jpg', 'Fabretti\r\nЗонт складной', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08H6J_17331688_2_v1.jpeg'),
(14, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HHQH_13933428_1_v2.jpg', 'Lamberti\r\nЗонт-трость', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HI58_13974054_2_v3.jpg'),
(15, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1K40G_9444277_1_v3.jpg', 'VOGUE\r\nЗонт-трость', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1K40G_9444280_2_v3.jpg'),
(16, 'https://a.lmcdn.ru/img236x341/L/A/LA145DUJXRQ3_11566670_1_v1.jpg', 'Lamoda\r\nЗонт складной', 'https://a.lmcdn.ru/img236x341/L/A/LA145DUJXRQ3_11566671_2_v1.jpg'),
(17, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM20U4I_10840563_1_v1.jpg', 'Alessio Nesca\r\nСандалии', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I5ZQ_16279227_2_v4.jpg'),
(18, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I8OZ_16987798_1_v1.jpg', 'Leon Medikal\r\nСандалии', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I8P5_16987829_2_v1.jpg'),
(19, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1H2BM_17642341_1_v1.jpg', 'Wanngo Сандалии', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1H2BM_17642342_2_v1.jpg'),
(20, 'https://a.lmcdn.ru/img236x341/R/T/RTLABJ096602_17899692_1_v1.jpg', 'Кроссовки Voyage Nitro GTX', 'https://a.lmcdn.ru/img236x341/R/T/RTLABR131301_17767160_2_v1.jpg'),
(21, 'https://a.lmcdn.ru/img236x341/A/D/AD002AMHLMW8_10905929_3_v1.jpg', 'Кроссовки LITE RACER 2.0', 'https://a.lmcdn.ru/img236x341/A/D/AD002AMJYMA2_11576771_2_v3.jpg'),
(22, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HFFK_13910426_1_v1.jpg', 'Кроссовки ECCO EXOSTRIDE', 'https://a.lmcdn.ru/img236x341/R/T/RTLABP389801_17577951_2_v1.jpg'),
(23, 'https://a.lmcdn.ru/img236x341/M/P/MP002XU04RWM_16247599_1_v1.jpg', 'Ботинки трекинговые', 'https://a.lmcdn.ru/img236x341/M/P/MP002XU04RWM_16247600_2_v1.jpg'),
(24, 'Ссылка на фото анонса', 'Ботинки мужски', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HVQ4_15965340_2_v1.jpg'),
(25, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0T2AL_15370380_1_v1.jpg', 'Ботинки полнота F', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0T2AL_15370381_2_v1.jpg'),
(26, 'https://a.lmcdn.ru/img236x341/R/T/RTLABW772601_17845860_1_v1_2x.jpg', 'Брюки SMART', 'https://a.lmcdn.ru/img236x341/R/T/RTLABW772601_17845861_2_v1_2x.jpg'),
(27, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08CR1_17213994_1_v1_2x.jpg', 'Брюки спортивные', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08CR1_17213995_2_v1_2x.jpg'),
(28, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08PP2_17913508_1_v1_2x.jpg', 'DeFacto\r\nСвитер', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08PPC_17913545_2_v1_2x.jpg'),
(29, 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HWUG_15838824_1_v1.jpeg', 'Finn Flare\r\nСвитер', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HZLG_15953741_2_v1.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(255) NOT NULL,
  `parent_product_id` int(11) NOT NULL,
  `alt_picture_preview` varchar(255) DEFAULT NULL,
  `parent_product_section_name` varchar(255) DEFAULT NULL,
  `price_product` int(11) NOT NULL,
  `discount_price_product` int(11) DEFAULT NULL,
  `price_promo_product` int(11) DEFAULT NULL,
  `description_product` varchar(255) NOT NULL,
  `detail_product_img` varchar(255) DEFAULT NULL,
  `count_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `parent_product_id` (`parent_product_id`),
  KEY `alt_picture_preview` (`alt_picture_preview`),
  KEY `parent_product_section_name` (`parent_product_section_name`),
  KEY `detail_product_img` (`detail_product_img`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id_product`, `name_product`, `parent_product_id`, `alt_picture_preview`, `parent_product_section_name`, `price_product`, `discount_price_product`, `price_promo_product`, `description_product`, `detail_product_img`, `count_product`) VALUES
(1, 'Брюки спортивные', 1, 'Брюки спортивные', 'Брюки', 1102, 2320, NULL, 'Описание: Брюки спортивные', 'https://a.lmcdn.ru/img236x341/A/D/AD002AMJYMA2_11576771_2_v3.jpg', 0),
(2, 'Брюки SMART', 1, 'Брюки SMART', 'Брюки', 3999, NULL, NULL, 'Описание: Брюки SMART', 'https://a.lmcdn.ru/img236x341/A/D/AD093LUMPQE6_13485581_2_v1.jpg', 0),
(3, 'Ботинки полнота F', 2, 'Ботинки полнота F', 'Брюки', 7450, NULL, NULL, 'Описание: Ботинки полнота F', 'https://a.lmcdn.ru/img236x341/L/A/LA145DUJXRQ3_11566671_2_v1.jpg', 0),
(4, 'Ботинки мужски\r\n', 2, 'Ботинки мужски', 'Ботинки', 10990, 9490, NULL, 'Описание: Ботинки мужски', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0T2AL_15370381_2_v1.jpg', 0),
(5, 'Ботинки трекинговые', 2, 'Ботинки трекинговые', 'Ботинки', 10990, NULL, 10000, 'Описание: Ботинки трекинговые', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08CR1_17213995_2_v1_2x.jpg', 0),
(6, 'Кроссовки ECCO EXOSTRIDE', 2, 'Кроссовки ECCO EXOSTRIDE', 'Кроссовки', 5522, 4500, 4320, 'Описание: Кроссовки ECCO EXOSTRIDE', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08PPC_17913545_2_v1_2x.jpg', 0),
(7, 'Кроссовки LITE RACER 2.0', 2, 'Кроссовки LITE RACER 2.0', 'Кроссовки', 11990, 11390, 6834, 'Описание: Кроссовки LITE RACER 2.0', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08H6J_17331688_2_v1.jpeg', 0),
(8, 'Кроссовки Voyage Nitro GTX', 2, 'Кроссовки Voyage Nitro GTX', 'Кроссовки', 11590, 9850, NULL, 'Описание: Кроссовки Voyage Nitro GTX', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM12EAQ_14989675_2_v1.jpg', 0),
(11, 'Wanngo Сандалии\r\n', 2, 'Wanngo Сандалии', 'Сандалии', 8700, 5220, NULL, 'Описание: Wanngo Сандалии', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1H2BM_17642342_2_v1.jpg', 0),
(12, 'Leon Medikal\r\nСандалии', 2, 'Leon Medikal\r\nСандалии', 'Сандалии', 9300, 5580, NULL, 'Описание: Leon Medikal Сандалии', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM12EAQ_14989675_2_v1.jpg', 0),
(13, 'Alessio Nesca\r\nСандалии', 2, 'Alessio Nesca\r\nСандалии', 'Сандалии', 9990, 64900, NULL, 'Описание: Alessio Nesca Сандалии', 'Ссылка из анонса', 0),
(14, 'Lamoda\r\nЗонт складной', 3, 'Lamoda\r\nЗонт складной', 'Зонты', 1100, NULL, NULL, 'Описание: Lamoda Зонт складной', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM12EAQ_14989675_2_v1.jpg', 0),
(15, 'VOGUE\r\nЗонт-трость', 3, 'VOGUE\r\nЗонт-трость', 'Зонты', 4667, 4227, 0, 'Описание: VOGUE Зонт-трость', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HZLG_15953741_2_v1.jpeg', 0),
(16, 'Lamberti\r\nЗонт-трость', 3, 'Lamberti\r\nЗонт-трость', 'Зонты', 2075, NULL, NULL, 'Описание: Lamberti Зонт-трость', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0VPJN_14745447_2_v1.jpg', 0),
(17, 'Fabretti\r\nЗонт складной', 3, 'Fabretti\r\nЗонт складной', 'Зонты', 6499, 3490, NULL, 'Описание: Fabretti Зонт складной', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1K40G_9444280_2_v3.jpg', 0),
(18, 'Matrix\r\nОчки солнцезащитные', 3, 'Matrix\r\nОчки солнцезащитные', 'Очки', 2770, 1485, NULL, 'Описание: Matrix Очки солнцезащитные', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM0VPJN_14745447_2_v1.jpg', 0),
(19, 'Ray Flector\r\nОчки солнцезащитные с поляризационными линзами\r\n', 3, 'Ray Flector\r\nОчки солнцезащитные с поляризационным...', 'Очки', 2590, 1590, 0, 'Описание: Ray Flector Очки солнцезащитные с поляризационными линзами\r\n', 'https://a.lmcdn.ru/img236x341/R/T/RTLABY557401_17976889_2_v1.jpg', 0),
(20, 'Ray-Ban®\r\nОчки солнцезащитные ROUND METAL ', 3, 'Ray-Ban®\r\nОчки солнцезащитные ROUND METAL ', 'Очки', 16100, 13100, NULL, 'Описание: Ray-Ban® Очки солнцезащитные ROUND METAL', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1HI58_13974054_2_v3.jpg', 0),
(21, 'Armani Exchange\r\nОчки солнцезащитные AX4112SU 818180\r\n', 3, 'Armani Exchange\r\nОчки солнцезащитные AX4112SU 8181...', 'Очки', 6125, 4620, 4000, 'Описание: Armani Exchange Очки солнцезащитные AX4112SU 818180', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM08CR1_17213995_2_v1_2x.jpg', 0),
(22, 'Stenser\r\nГалстук\r\n', 3, 'Stenser\r\nГалстук', 'Галстуки', 2490, 1490, NULL, 'Описание: Stenser Галстук', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I8P5_16987829_2_v1.jpg', 0),
(23, 'Hugo\r\nГалстук', 3, 'Hugo\r\nГалстук', 'Галстуки', 670, NULL, NULL, 'Описание: Hugo Галстук', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1K40G_9444280_2_v3.jpg', 0),
(24, 'Stilmark\r\nГалстук', 3, 'Stilmark\r\nГалстук', 'Галстуки', 999, NULL, NULL, 'Описание: Stilmark Галстук', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM12EAQ_14989675_2_v1.jpg', 0),
(25, 'Henderson\r\nГалстук TS-2455', 3, 'Henderson\r\nГалстук TS-2455', 'Галстуки', 599, NULL, NULL, 'Описание: Henderson Галстук TS-2455', 'https://a.lmcdn.ru/img236x341/M/P/MP002XM1I3AV_16354928_2_v1.jpg', 0),
(26, 'UYN\r\nМаска для лица защитная COMMUNITY MASK WINTER\r\n', 3, 'UYN\r\nМаска для лица защитная COMMUNIT', 'Защитные маски', 1599, 1299, 1200, 'Описание: UYN Маска для лица защитная COMMUNITY MASK WINTER', 'https://a.lmcdn.ru/img236x341/R/T/RTLABR131301_17767160_2_v1.jpg', 0),
(27, 'adidas Originals\r\nМаски для лица защитные 3 шт. ICY PARK от adidas X IVY PARK\r\n', 3, 'adidas Originals\r\nМаски для лица защитные 3 шт. IC...', 'Защитные маски', 499, NULL, NULL, 'Описание: adidas Originals\r\nМаски для лица защитные 3 шт. ICY PARK от adidas X IVY PARK', NULL, 0),
(28, 'UYN\r\nМаска для лица защитная COMMUNIT', 3, 'UYN\r\nМаска для лица защитная COMMUNIT', 'Защитные маски', 865, 800, 701, 'Описание: UYN\r\nМаска для лица защитная COMMUNIT', NULL, 0),
(29, 'Polo Ralph Lauren\r\nМаска для лица защитная\r\n', 3, 'Polo Ralph Lauren\r\nМаска для лица защитная', 'Защитные маски', 1399, NULL, NULL, 'Описание: Polo Ralph Lauren\r\nМаска для лица защитная', NULL, 0),
(30, 'Finn Flare\r\nСвитер', 1, 'Finn Flare\r\nСвитер', 'Свитеры', 2999, 2599, NULL, 'Описание: Finn Flare Свитер', NULL, 0),
(31, 'DeFacto\r\nСвитер', 1, 'DeFacto\r\nСвитер', 'Свитеры', 4999, 3999, 2599, 'Описание: DeFacto Свитер', NULL, 0);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`parent_category_product_id`) REFERENCES `category_shop` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`parent_product_id`) REFERENCES `category_shop` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`alt_picture_preview`) REFERENCES `picture` (`name_preview_picture`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`parent_product_section_name`) REFERENCES `category_product` (`product`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`detail_product_img`) REFERENCES `picture` (`link_detail_image`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
