-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Nis 2019, 19:48:42
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `todolistdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `todoitem`
--

CREATE TABLE `todoitem` (
  `ItemID` int(11) NOT NULL,
  `ListID` int(11) NOT NULL,
  `Title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Description` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `todoitem`
--

INSERT INTO `todoitem` (`ItemID`, `ListID`, `Title`, `Description`, `Status`) VALUES
(1, 1, 'CRUD Item Test', 'This is CRUD Item update test', 'W'),
(2, 1, 'Second Item', 'This is the second to-do item', 'W'),
(13, 1, 'My CRUD Test ToDoItem1', 'This is my CRUD test toDoItem1', 'W');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `todolist`
--

CREATE TABLE `todolist` (
  `ListID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Description` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `todolist`
--

INSERT INTO `todolist` (`ListID`, `UserID`, `Title`, `Description`) VALUES
(1, 1, 'CRUD Test', 'This is CRUD update test'),
(3, 1, 'Spring MVC Project', 'This is a Spring MVC Project for to-do lists'),
(8, 1, 'My CRUD Test ToDoList2', 'This is my CRUD test toDoList1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_detail`
--

CREATE TABLE `user_detail` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `user_detail`
--

INSERT INTO `user_detail` (`UserID`, `UserName`, `Password`, `Email`) VALUES
(1, 'EGUVERCIN', 'EG123456', 'ersin.guvercin@gmail.com'),
(2, 'USERTEST', 'ABC12456', 'user.test@gmail.com');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `todoitem`
--
ALTER TABLE `todoitem`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `fk_item_list_id` (`ListID`);

--
-- Tablo için indeksler `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`ListID`);

--
-- Tablo için indeksler `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`UserID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `todoitem`
--
ALTER TABLE `todoitem`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `todolist`
--
ALTER TABLE `todolist`
  MODIFY `ListID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `todoitem`
--
ALTER TABLE `todoitem`
  ADD CONSTRAINT `fk_item_list_id` FOREIGN KEY (`ListID`) REFERENCES `todolist` (`ListID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
