
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `catalog_sections_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `preview_img` varchar(6500) DEFAULT NULL,
  `img` varchar(6500) DEFAULT NULL,
  `list_sections` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL,
  `price_promo` int(11) NOT NULL,
   `description` varchar(6500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_sections_id`, `name` ,`preview_img`, `img`, `list_sections`, `price`, `discount_price`, `price_promo`, `description`) VALUES
(1, 1, 'Жилеты', 'картинка анонса', 'доп картинка', '2', '22.5', '23.4', '27', 'Описание'),
(2, 1, 'Классические брюки', 'картинка анонса', '3', '23.5', '26.4', '20', 'Описание'),
(3, 1, 'Водолазки', 'картинка анонса', '4', '22.5', '23.4', '28', 'Описание');
-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `parent_product_id` int(11) DEFAULT NULL,
  `name_category` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `parent_product_id`, `name_category`, `count`) VALUES
(1, NULL, 'Мужская одежда', 4047),
(2, 1,'Верхняя одежда', 1560),
(3, 1, 'Брюки', 770),
(4, 1, 'Свитеры', 360),
(5, 1, 'Джинсы', 280),
(6, 1, 'Домашняя одежда', 190),
(7, 1, 'Комбинезоны', 180),
(8, 1, 'Майки', 170),
(9, 1, 'Нижнее белье', 150),
(10, 1, 'Носки', 130),
(11, 1, 'Пиджаки', 110),
(12, 1, 'Шорты', 60),
(13, 1, 'Рубашки', 55),
(14, 1, 'Спортивные костюмы', 30),
(15, NULL, 'Женская одежда', 4045),
(16, 2, 'Рубашки', 1558),
(17, 2, 'Брюки', 770),
(18, 2, 'Верхняя одежда', 360),
(19, 2, 'Свитеры', 280),
(20, 2, 'Джинсы', 190),
(21, 2, 'Домашняя одежда', 180),
(22, 2, 'Комбинезоны', 170),
(23, 2, 'Нижнее белье', 150),
(24, 2, 'Носки', 130),
(25, 2, 'Одежда для беременных', 110),
(26, 2, 'Костюмы женские', 60),
(27, 2, 'Топы', 56),
(28, 2, 'Юбки', 30);

-- --------------------------------------------------------

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_sections_id` (`catalog_sections_id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_product_id` (`parent_product_id`);
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1058;
--
-- AUTO_INCREMENT для таблицы `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Ограничения внешнего ключа сохраненных таблиц
--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catalog_sections_id`) REFERENCES `product_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Ограничения внешнего ключа таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`parent_product_id`) REFERENCES `product_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
