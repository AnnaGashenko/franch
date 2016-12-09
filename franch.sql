-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 09 2016 г., 10:53
-- Версия сервера: 5.5.50-log
-- Версия PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `franch`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Achievs`
--

CREATE TABLE IF NOT EXISTS `Achievs` (
  `AchievsID` int(11) NOT NULL,
  `Mark` int(3) NOT NULL,
  `Description` text NOT NULL,
  `CategoryID` tinyint(4) NOT NULL,
  `Icon` varchar(255) NOT NULL,
  `StatusID` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Achievs`
--

INSERT INTO `Achievs` (`AchievsID`, `Mark`, `Description`, `CategoryID`, `Icon`, `StatusID`) VALUES
(1, 100, 'Вы заполнили анкету курса', 1, '/skins/default/img/achievs/1_simply.png', NULL),
(2, 200, 'Вы выполнили 2 домашних работы вовремя и получили за них суммарно не менее 150 баллов.', 2, '/skins/default/img/achievs/2_bronze.png', 1),
(3, 300, 'Вы выполнили 5 домашних работ вовремя и получили за них суммарно не менее 350 баллов.', 2, '/skins/default/img/achievs/2_silver.png ', 2),
(4, 400, 'Вы выполнили 8 домашних работ вовремя и получили за них суммарно не менее 600 баллов.', 2, '/skins/default/img/achievs/2_gold.png', 3),
(5, 100, 'Вы полностью посмотрели 2 занятия онлайн или в записи.', 3, '/skins/default/img/achievs/3_bronze.png', 1),
(6, 200, 'Вы полностью посмотрели 5 занятий онлайн или в записи.', 3, '/skins/default/img/achievs/3_silver.png', 2),
(7, 300, 'Вы полностью посмотрели 8 занятий онлайн или в записи.', 3, '/skins/default/img/achievs/3_gold.png', 3),
(8, 100, 'Вы написали 20 осмысленных комментариев в чате занятий.', 4, '/skins/default/img/achievs/4_bronze.png', 1),
(9, 200, 'Вы написали 100 осмысленных комментариев в чате занятий.', 4, '/skins/default/img/achievs/4_silver.png', 2),
(10, 500, 'Вы написали 500 осмысленных комментариев в чате занятий.', 4, '/skins/default/img/achievs/4_gold.png', 3),
(11, 100, 'На заданный вами вопрос в прямом эфире ответили ведущие или спикеры курса. Достижения выдается за 2 таких вопроса. Учитываются как вопросы из зала, так и заданные в чате занятия.', 5, '/skins/default/img/achievs/5_bronze.png', 1),
(12, 300, 'На заданный вами вопрос в прямом эфире ответили ведущие или спикеры курса. Достижения выдается за 5 таких вопросов. Учитываются как вопросы из зала, так и заданные в чате занятия.', 5, '/skins/default/img/achievs/5_silver.png', 2),
(13, 500, 'На заданный вами вопрос в прямом эфире ответили ведущие или спикеры курса. Достижения выдается за 8 таких вопросов. Учитываются как вопросы из зала, так и заданные в чате занятия.', 5, '/skins/default/img/achievs/5_gold.png', 3),
(14, 200, 'По вашей ссылке на курсе зарегистрировалось минимум 2 человека (с любым пакетом участия), и этим человеком были не вы (мы проверяем)', 6, '/skins/default/img/achievs/6_bronze.png', 1),
(15, 1000, 'По вашей ссылке на курсе зарегистрировалось минимум 5 человек (с любым пакетом участия), и этим человеком были не вы (мы проверяем)', 6, '/skins/default/img/achievs/6_silver.png', 2),
(16, 2000, 'По вашей ссылке на курсе зарегистрировался 1 человек, который купил пакет VIP', 6, '/skins/default/img/achievs/6_gold.png', 3),
(17, 100, 'Вы поделились информацией о курсе в социальных сетях, где у вас более 50 друзей / подписчиков.', 7, '/skins/default/img/achievs/7_bronze.png', 1),
(18, 400, 'Вы поделились информацией о курсе в социальных сетях, где у вас более 500 друзей / подписчиков.', 7, '/skins/default/img/achievs/7_silver.png', 2),
(19, 800, 'Вы поделились информацией о курсе в социальных сетях, где у вас более 1000 друзей / подписчиков.', 7, '/skins/default/img/achievs/7_gold.png', 3),
(20, 200, 'Вы нашли 1 секретный код в занятии. Секретные коды отображаются на экране в зале и в онлайн-трансляции. Код представляет собой цифру в оранжевом круге.', 8, '/skins/default/img/achievs/8_bronze.png', 1),
(21, 600, 'Вы нашли 3 секретных кодов в занятиях. Секретные коды отображаются на экране в зале и в онлайн-трансляции. Код представляет собой цифру в оранжевом круге.', 8, '/skins/default/img/achievs/8_silver.png', 2),
(22, 1000, 'Вы нашли 5 секретных кодов в занятиях. Секретные коды отображаются на экране в зале и в онлайн-трансляции. Код представляет собой цифру в оранжевом круге.', 8, '/skins/default/img/achievs/8_gold.png', 3),
(23, 100, 'Вы оценили достижения троицы героев шоу в 2 занятиях, и поставили им рейтинги.', 9, '/skins/default/img/achievs/9_bronze.png', 1),
(24, 300, 'Вы оценили достижения троицы героев шоу в 5 занятиях, и поставили им рейтинги.', 9, '/skins/default/img/achievs/9_silver.png', 2),
(25, 500, 'Вы оценили достижения троицы героев шоу в 8 занятиях, и поставили им рейтинги.', 9, '/skins/default/img/achievs/9_gold.png', 3),
(26, 500, 'Вы купили пакет VIP. Теперь вы один из самых важных людей на курсе!', 11, '/skins/default/img/achievs/11_simply.png', NULL),
(27, 600, '	\nВы записали видеоотзыв об участии в курсе. Содержание видеоотзыва и ваша оценка не имеют значения. Даже если вам не понравился курс или отдельное занятие, но вы записали отзыв о нем, это также учитывается. Ссылку на видеоотзыв нужно прислать на адрес legend@franch.biz', 12, '/skins/default/img/achievs/12_simply.png', NULL),
(28, 1000, 'Ваш фаворит курса (один из троицы) выиграл в финале проекта (на 8-м занятии). Вашим фаворитом будет считаться тот, кому вы дали больше звезд.', 13, '/skins/default/img/achievs/13_simply.png', NULL),
(29, 200, 'Вы написали честные отзывы о том, что вам понравилось, и что нет на 2-х занятиях курса.', 14, '/skins/default/img/achievs/14_bronze.png', 1),
(30, 500, 'Вы написали честные отзывы о том, что вам понравилось, и что нет на 5-ти занятиях курса.', 14, '/skins/default/img/achievs/14_silver.png', 2),
(31, 1000, 'Вы написали честные отзывы о том, что вам понравилось, и что нет на 9-ти занятиях курса.', 14, '/skins/default/img/achievs/14_gold.png', 3),
(32, 2000, '<p>Воспользуйтесь любой услугой компании «Франч» со скидкой. <a href="http://franch.biz/aaa/franch-biz-myfranch-ru.pdf" target="_blank">Продвижение франшизы</a> (скидка для участников курса — 10%, VIP-участников — 20%). <a href="http://franch.biz/aaa/franch-2016.pdf" target="_blank">Создание франшизы</a> (скидка для участников курса — 5%, VIP-участников — 10%).</p>', 15, '/skins/default/img/achievs/15_simply.png', NULL),
(33, 500, 'Секретное достижение. Его условия вы узнаете после прохождения курса (8 занятий).', 16, '/skins/default/img/achievs/16_simply.png', NULL),
(34, 1000, 'Вы скачали все материалы курса и воспользовались всеми онлайн-сервисами.', 10, '/skins/default/img/achievs/10_simply.png', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `CategoryID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Description` text NOT NULL,
  `Icon` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Category`
--

INSERT INTO `Category` (`CategoryID`, `Name`, `Description`, `Icon`) VALUES
(1, 'Первое достижение', 'Вы заполнили анкету курса', '/skins/default/img/archievsDefault/1.png'),
(2, 'Прилежный ученик', 'Вы выполнили 2 домашних работы вовремя и получили за них суммарно не менее 150 баллов.', '/skins/default/img/archievsDefault/2.png'),
(3, 'Красные глаза', 'Вы полностью посмотрели 2 занятия онлайн или в записи.', '/skins/default/img/archievsDefault/3.png'),
(4, 'Разговорный жанр', 'Вы написали 20 осмысленных комментариев в чате занятий.', '/skins/default/img/archievsDefault/4.png'),
(5, 'Рука вверх', 'На заданный вами вопрос в прямом эфире ответили ведущие или спикеры курса. Достижения выдается за 2 таких вопроса. Учитываются как вопросы из зала, так и заданные в чате занятия.', '/skins/default/img/archievsDefault/5.png'),
(6, 'Приведи друга', 'По вашей ссылке на курсе зарегистрировалось минимум 2 человека (с любым пакетом участия), и этим человеком были не вы (мы проверяем)', '/skins/default/img/archievsDefault/6.png'),
(7, 'Социальная активность', 'Вы поделились информацией о курсе в социальных сетях, где у вас более 50 друзей / подписчиков.', '/skins/default/img/archievsDefault/7.png'),
(8, 'Секретные материалы', 'Вы нашли 1 секретный код в занятии. Секретные коды отображаются на экране в зале и в онлайн-трансляции. Код представляет собой цифру в оранжевом круге.', '/skins/default/img/archievsDefault/8.png'),
(9, 'Рождение Легенды', 'Вы оценили достижения троицы героев шоу в 2 занятиях, и поставили им рейтинги.', '/skins/default/img/archievsDefault/9.png'),
(10, 'Гигабайты знаний', 'Вы скачали все материалы курса и воспользовались всеми онлайн-сервисами.', '/skins/default/img/archievsDefault/10.png'),
(11, 'Важная персона', 'Вы купили пакет VIP. Теперь вы один из самых важных людей на курсе!', '/skins/default/img/archievsDefault/11.png'),
(12, 'Камера, мотор!', 'Вы записали видеоотзыв об участии в курсе. Содержание видеоотзыва и ваша оценка не имеют значения. Даже если вам не понравился курс или отдельное занятие, но вы записали отзыв о нем, это также учитывается. Ссылку на видеоотзыв нужно прислать на адрес legend@franch.biz', '/skins/default/img/archievsDefault/12.png'),
(13, 'Последний Герой', 'Ваш фаворит курса (один из троицы) выиграл в финале проекта (на 8-м занятии). Вашим фаворитом будет считаться тот, кому вы дали больше звезд.', '/skins/default/img/archievsDefault/13.png'),
(14, 'Критик Легенды', 'Вы написали честные отзывы о том, что вам понравилось, и что нет на 2-х занятиях курса.', '/skins/default/img/archievsDefault/14.png'),
(15, 'Дорогой клиент', '<p>Воспользуйтесь любой услугой компании «Франч» со скидкой. <a href="http://franch.biz/aaa/franch-biz-myfranch-ru.pdf" target="_blank">Продвижение франшизы</a> (скидка для участников курса — 10%, VIP-участников — 20%). <a href="http://franch.biz/aaa/franch-2016.pdf" target="_blank">Создание франшизы</a> (скидка для участников курса — 5%, VIP-участников — 10%).</p>', '/skins/default/img/archievsDefault/15.png'),
(16, 'Секретное достижение №3', 'Секретное достижение. Его условия вы узнаете после прохождения курса (8 занятий).', '/skins/default/img/archievsDefault/16.png');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `module` varchar(25) NOT NULL,
  `static` tinyint(1) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_title` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `module`, `static`, `meta_description`, `meta_keywords`, `meta_title`, `text`) VALUES
(1, '404', 1, 'Данная страница отсутствует', 'Данная страница отсутствует', 'Данная страница отсутствует', 'Данная страница отсутствует'),
(2, 'static', 0, '', '', '', ''),
(3, 'cab', 0, '', '', '', ''),
(4, 'errors', 0, '', '', '', ''),
(5, 'achievs', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `StatusIcon`
--

CREATE TABLE IF NOT EXISTS `StatusIcon` (
  `StatusID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `StatusIcon`
--

INSERT INTO `StatusIcon` (`StatusID`, `Name`) VALUES
(1, 'бронза'),
(2, 'серебро'),
(3, 'золото');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `UsersID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` char(13) NOT NULL,
  `Country` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `Status` enum('Кто-то другой','Покупатель франшизы','Продавец франшизы') NOT NULL,
  `Company` varchar(25) DEFAULT NULL,
  `Format` enum('online','live') NOT NULL,
  `Avatar` varchar(255) NOT NULL DEFAULT '/skins/default/img/avatars/default.jpg',
  `date_registration` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`UsersID`, `Name`, `Email`, `Password`, `Country`, `City`, `Status`, `Company`, `Format`, `Avatar`, `date_registration`) VALUES
(1, 'Test', 'user@test.test', 'CBGtE5HmzB/WU', 'Украина', 'Киев', 'Кто-то другой', NULL, 'online', '/skins/default/img/avatars/default.jpg', '2016-11-24 15:28:00'),
(2, 'Мария Перышкина', 'masha@gmail.com', 'CBkruLYz6k1UA', 'Украина', 'Киев', 'Кто-то другой', NULL, 'live', '/skins/default/img/avatars/default.jpg', '2016-11-25 16:07:18');

-- --------------------------------------------------------

--
-- Структура таблицы `UsersAchievs`
--

CREATE TABLE IF NOT EXISTS `UsersAchievs` (
  `UsersID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `AchievsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `UsersAchievs`
--

INSERT INTO `UsersAchievs` (`UsersID`, `CategoryID`, `AchievsID`) VALUES
(1, 1, 1),
(1, 2, 3),
(1, 5, 13),
(1, 7, 17),
(1, 13, 28);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Achievs`
--
ALTER TABLE `Achievs`
  ADD PRIMARY KEY (`AchievsID`),
  ADD KEY `StatusID` (`StatusID`);

--
-- Индексы таблицы `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `StatusIcon`
--
ALTER TABLE `StatusIcon`
  ADD PRIMARY KEY (`StatusID`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UsersID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Индексы таблицы `UsersAchievs`
--
ALTER TABLE `UsersAchievs`
  ADD PRIMARY KEY (`CategoryID`,`UsersID`),
  ADD KEY `UsersID` (`UsersID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `AchievsID` (`AchievsID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Achievs`
--
ALTER TABLE `Achievs`
  MODIFY `AchievsID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT для таблицы `Category`
--
ALTER TABLE `Category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `StatusIcon`
--
ALTER TABLE `StatusIcon`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `UsersID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `UsersAchievs`
--
ALTER TABLE `UsersAchievs`
  ADD CONSTRAINT `usersachievs_ibfk_3` FOREIGN KEY (`AchievsID`) REFERENCES `Achievs` (`AchievsID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usersachievs_ibfk_1` FOREIGN KEY (`UsersID`) REFERENCES `Users` (`UsersID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usersachievs_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `Category` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
