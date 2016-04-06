-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 06 2016 г., 21:37
-- Версия сервера: 5.6.17
-- Версия PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `codeacademy`
--

-- --------------------------------------------------------

--
-- Структура таблицы `assignments`
--

CREATE TABLE IF NOT EXISTS `assignments` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_name` varchar(255) NOT NULL,
  `assignment_date` date NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `assignments`
--

INSERT INTO `assignments` (`assignment_id`, `assignment_name`, `assignment_date`, `student_id`) VALUES
(1, 'Homework 1', '2016-04-05', 0),
(2, 'Homework 2 Css', '2016-04-05', 0),
(3, 'Homework html jquery', '2016-04-14', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `year`) VALUES
(1, 'Harry potter and prisoner of Azkaban', 'J.W Rowling', 'Cool book for children', 2001),
(2, 'Crime and punishment', 'Dostoyevskiy Fyodor', 'Cool classic book', 1890);

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(50) NOT NULL,
  `car_year` int(11) DEFAULT NULL,
  `car_color` varchar(50) DEFAULT NULL,
  `car_price` int(11) DEFAULT NULL,
  `car_power` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `coders`
--

CREATE TABLE IF NOT EXISTS `coders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coder_name` varchar(120) DEFAULT NULL,
  `coder_surname` varchar(120) DEFAULT NULL,
  `coder_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_start_date` date NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_email`, `company_address`, `company_start_date`) VALUES
(1, 'Code academy', 'admin@code.edu.az', 'Nizami 11', '2005-01-01'),
(2, 'Baku business factory', 'bbf@technopark.az', 'Nizami 11', '2008-07-06'),
(3, 'BHOS', 'admin@bhos.edu.az', 'Xocali', '2010-10-11'),
(4, 'Code academy', 'admin@code.edu.az', 'Nizami 11', '2012-01-01');

-- --------------------------------------------------------

--
-- Структура таблицы `mentors`
--

CREATE TABLE IF NOT EXISTS `mentors` (
  `mentor_id` int(11) NOT NULL,
  `mentor_name` varchar(100) NOT NULL,
  `mentor_bday` date NOT NULL,
  `mentor_group` varchar(100) NOT NULL,
  `mentor_teacher` varchar(100) NOT NULL,
  `mentor_phone` int(11) NOT NULL,
  `mentor_email` varchar(100) NOT NULL,
  PRIMARY KEY (`mentor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `img_src` varchar(255) NOT NULL,
  `img_thumb_src` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `datetime`, `title`, `description`, `text`, `img_src`, `img_thumb_src`, `status`) VALUES
(11, '2016-03-24 20:24:36', 'ANALOGU OLMAYAN XEBER ', 'ZOR XEBERDI BU', 'YAXCI OGLANNAR MONTINDE SOHBET ELEDILER', 'app/upload/12717626_1514152375561025_3914287938624199413_n.jpg', '12717626_1514152375561025_3914287938624199413_n.jpg', 1),
(12, '2016-03-24 20:37:24', 'Bu onnanda qeshey xeberdi', 'Heri qaqa', 'Bu zor xeberdi', 'app/upload/12717626_1514152375561025_3914287938624199413_n.jpg', '12717626_1514152375561025_3914287938624199413_n.jpg', 1),
(26, '2016-03-24 21:13:17', 'bunu publish ele', 'publish', 'heri qaqa', 'app/upload/https_certificate.PNG', 'https_certificate.PNG', 1),
(28, '2016-03-24 21:18:28', 'bunu publish eleme', 'Eleme bunu', 'Elemede dedim', 'app/upload/https_certificate.PNG', 'https_certificate.PNG', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(50) NOT NULL,
  `student_phone` int(11) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_bday` date NOT NULL,
  `student_group` varchar(100) NOT NULL,
  `student_class` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_phone`, `student_email`, `student_bday`, `student_group`, `student_class`) VALUES
(1, 'Rahimli Rahim', 703772245, 'ragim95@gmail.com', '1995-06-22', 'Evening Group', 'Codeacademy'),
(2, 'Kerim Kerimov', 504548787, 'kerimovscreations@gmail.com', '1996-03-08', 'Evening', 'Codeacademy'),
(3, 'Vahab Valiyev', 554329058, 'vahab@gmail.com', '1996-05-15', 'Evening', 'Codeacademy'),
(4, 'Ceyhun Sadiqov', 504444444, 'ceyhun.s@code.edu.az', '1983-05-15', 'Evening', 'Codeacademy'),
(5, 'Shamil Omarov', 554320432, 'wamil95omarov@gmail.com', '1995-03-07', 'AM01', 'Automation'),
(8, 'Samir', 1111111, 'samir@code.edu.az', '1983-05-15', 'Code 2014', 'Evening');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_email` varchar(100) NOT NULL,
  `teacher_phone` int(11) NOT NULL,
  `teacher_bday` date NOT NULL,
  `teacher_class` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_type`, `group`) VALUES
(1, 'Rahim Rahimli', 'ragim95@gmail.com', 'student', 'CA16101'),
(2, 'Kerim Kerimov', 'kerimovscreations@gmail.com', 'student', 'CA16101');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
