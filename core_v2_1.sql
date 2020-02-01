-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Şub 2020, 17:13:08
-- Sunucu sürümü: 10.4.8-MariaDB
-- PHP Sürümü: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `core_v2.1`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`id`, `desc_az`, `desc_en`, `desc_ru`) VALUES
(1, '<p><span style=\"font-size:18px\">jjjj</span></p>\r\n', '<p>asdasadasdas</p>\r\n', '<p>asdsadas</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_category_id` int(10) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL,
  `img` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`id`, `blog_category_id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `img`) VALUES
(3, 3, 'ad', 'asdas', 'asasd', '<p><img alt=\"\" src=\"/LuckyTravel/public/admin/ckeditor/kcfinder/upload/images/kali-theme.jpg\" style=\"height:214px; width:380px\" />aasdasass</p>\r\n', '', '', 'macbook_pro_apple_laptop_headphones_table_98893_2560x1440.jpg'),
(10, 1, 'asdasd', 'asdas', 'adas', '', '', '<p>asda</p>\r\n', 'minecraft_planet_cube_cubes_world_2228_1920x1080.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog_category`
--

INSERT INTO `blog_category` (`id`, `name_az`, `name_en`, `name_ru`, `img`) VALUES
(1, 'asdsd', 'asdsa', 'asdsa', '7.png'),
(2, 'asdsa', 'asdas', 'asdas', '9357103b-c168-4c28-a10c-4c04e6b079d9.jpg'),
(3, 'ff', 'asdsa', 'asdsa', '7.png'),
(4, 'asdsa', 'asdas', 'asdas', '9357103b-c168-4c28-a10c-4c04e6b079d9.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_gallery`
--

CREATE TABLE `blog_gallery` (
  `id` int(11) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `file` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog_gallery`
--

INSERT INTO `blog_gallery` (`id`, `blog_id`, `file`) VALUES
(59, 0, 'world_of_tanks_wargaming_net_object_260_tank_102939_1920x1080.jpg'),
(64, 0, 'ford_mustang_ford_car_147558_1920x1080.jpg'),
(66, 0, 'ford_mustang_car_convertible_139581_1920x1080.jpg'),
(67, 1, 'world_of_tanks_t_62a_field_105518_1920x1080.jpg'),
(69, 10, 'project_cars_lykan_hypersport_hypersport_104438_1920x1080.jpg'),
(73, 3, 'skyrim_buildings_mountains_night_98682_1920x1080.jpg'),
(86, 12, 'fallout_4_bethesda_softworks_armor_104221_1920x1080.jpg'),
(99, 10, '5d5bda405449c_(1).jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_includes`
--

CREATE TABLE `blog_includes` (
  `id` int(11) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `includes_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog_includes`
--

INSERT INTO `blog_includes` (`id`, `blog_id`, `includes_id`) VALUES
(46, 10, 1),
(48, 3, 1),
(52, 10, 2),
(54, 10, 3),
(55, 10, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `includes`
--

CREATE TABLE `includes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `yas` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `includes`
--

INSERT INTO `includes` (`id`, `name`, `yas`, `date`) VALUES
(1, 'ssdfsdf', 34, '0000-00-00'),
(2, 'fghfghfgh', 0, '0000-00-00'),
(3, '123', 3454, '0000-00-00'),
(4, '789', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `new_subblog`
--

CREATE TABLE `new_subblog` (
  `id` int(11) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL,
  `img1` varchar(254) NOT NULL,
  `img2` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `new_subblog`
--

INSERT INTO `new_subblog` (`id`, `blog_id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `img1`, `img2`) VALUES
(4, 10, 'adsd', 'asdas', 'asdas', '<p>asdas</p>\r\n', '<p>asda</p>\r\n', '<p>aas</p>\r\n', 'iphone_ipad_apple_watches_stylus_pen_style_99204_1920x1080.jpg', 'clouds_milky_way_eclipse_light_68883_2560x1440.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sub_blog`
--

CREATE TABLE `sub_blog` (
  `id` int(11) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `img` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sub_blog`
--

INSERT INTO `sub_blog` (`id`, `blog_id`, `name`, `surname`, `img`) VALUES
(13, 10, 'aasd', '', 'default.png'),
(14, 10, '123', '', 'default.png'),
(15, 3, 'ffff', '', 'default.png'),
(16, 3, 'aads', 'asdasd', 'ford_mustang_ford_car_147558_1920x1080.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `isAdmin`) VALUES
(1, 'super_admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 0),
(6, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_gallery`
--
ALTER TABLE `blog_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_id` (`blog_id`);

--
-- Tablo için indeksler `blog_includes`
--
ALTER TABLE `blog_includes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `includes`
--
ALTER TABLE `includes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `new_subblog`
--
ALTER TABLE `new_subblog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sub_blog`
--
ALTER TABLE `sub_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `blog_gallery`
--
ALTER TABLE `blog_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Tablo için AUTO_INCREMENT değeri `blog_includes`
--
ALTER TABLE `blog_includes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Tablo için AUTO_INCREMENT değeri `includes`
--
ALTER TABLE `includes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `new_subblog`
--
ALTER TABLE `new_subblog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `sub_blog`
--
ALTER TABLE `sub_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
