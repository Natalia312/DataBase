-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 21 2019 г., 11:06
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dev_team`
--

-- --------------------------------------------------------

--
-- Структура таблицы `member_status`
--

CREATE TABLE `member_status` (
  `ID` int(11) NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `member_status`
--

INSERT INTO `member_status` (`ID`, `Name`) VALUES
(1, 'Лидер'),
(2, 'Наставник'),
(3, 'Куратор'),
(4, 'Дизайнер');

-- --------------------------------------------------------

--
-- Структура таблицы `person`
--

CREATE TABLE `person` (
  `ID` int(11) NOT NULL,
  `LastName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `MiddleName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `person`
--

INSERT INTO `person` (`ID`, `LastName`, `FirstName`, `MiddleName`, `Birthdate`) VALUES
(1, 'Демяшкина', 'Наталья', 'Юрьевна', '1997-12-31');

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE `project` (
  `ID` int(11) NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateStart` date NOT NULL,
  `DateEnd` date NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `StatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project`
--

INSERT INTO `project` (`ID`, `Name`, `DateStart`, `DateEnd`, `Description`, `StatusID`) VALUES
(1, 'Проект №1', '2019-12-18', '2019-12-19', 'Описание проекта №1', 3),
(2, 'Проект №2', '2019-11-11', '2019-12-29', 'Описание проекта №2', 3),
(3, 'Проект №3', '2019-10-08', '2019-12-09', 'Описание проекта №3', 3),
(4, 'Проект №4', '2019-10-18', '2019-12-19', 'Описание проекта №4', 3),
(5, 'Проект №5', '2019-12-18', '2019-12-19', 'Описание проекта №5', 3),
(6, 'Проект №6', '2019-12-18', '2019-12-19', 'Описание проекта №6', 3),
(7, 'Проект №7', '2019-12-18', '2019-12-19', 'Описание проекта №7', 3),
(8, 'Проект №8', '2019-12-18', '2019-12-19', 'Описание проекта №8', 3),
(9, 'Проект №9', '2019-12-18', '2019-12-19', 'Описание проекта №9', 3),
(10, 'Проект №10', '2019-12-18', '2019-12-19', 'Описание проекта №10', 3),
(11, 'Проект №11', '2019-12-18', '2019-12-19', 'Описание проекта №11', 3),
(12, 'Проект №12', '2019-12-18', '2019-12-19', 'Описание проекта №12', 3),
(13, 'Проект №13', '2019-12-18', '2019-12-19', 'Описание проекта №13', 3),
(14, 'Проект №14', '2019-12-18', '2019-12-19', 'Описание проекта №14', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `project_member`
--

CREATE TABLE `project_member` (
  `ID` int(11) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `ProjectID` int(11) NOT NULL,
  `StatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project_member`
--

INSERT INTO `project_member` (`ID`, `PersonID`, `ProjectID`, `StatusID`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `project_status`
--

CREATE TABLE `project_status` (
  `ID` int(11) NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project_status`
--

INSERT INTO `project_status` (`ID`, `Name`) VALUES
(1, 'В процессе формирования'),
(2, 'В работе'),
(3, 'Завершён');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `member_status`
--
ALTER TABLE `member_status`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `StatusID` (`StatusID`);

--
-- Индексы таблицы `project_member`
--
ALTER TABLE `project_member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PersonID` (`PersonID`),
  ADD KEY `ProjectID` (`ProjectID`),
  ADD KEY `StatusID` (`StatusID`),
  ADD KEY `StatusID_2` (`StatusID`);

--
-- Индексы таблицы `project_status`
--
ALTER TABLE `project_status`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `member_status`
--
ALTER TABLE `member_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `person`
--
ALTER TABLE `person`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `project`
--
ALTER TABLE `project`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `project_member`
--
ALTER TABLE `project_member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `project_status`
--
ALTER TABLE `project_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`StatusID`) REFERENCES `project_status` (`ID`);

--
-- Ограничения внешнего ключа таблицы `project_member`
--
ALTER TABLE `project_member`
  ADD CONSTRAINT `project_member_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `project` (`ID`),
  ADD CONSTRAINT `project_member_ibfk_2` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`),
  ADD CONSTRAINT `project_member_ibfk_3` FOREIGN KEY (`StatusID`) REFERENCES `member_status` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
