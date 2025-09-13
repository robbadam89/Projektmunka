-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql.omega:3306
-- Generation Time: Sep 02, 2025 at 10:22 PM
-- Server version: 5.7.42-log
-- PHP Version: 7.2.34-55+0~20250707.109+debian12~1.gbp140deb

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activity`
--
CREATE DATABASE IF NOT EXISTS `activity` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `activity`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(12) COLLATE ucs2_hungarian_ci NOT NULL,
  `email` varchar(50) COLLATE ucs2_hungarian_ci NOT NULL,
  `password` varchar(255) COLLATE ucs2_hungarian_ci NOT NULL,
  `reset_code` varchar(32) COLLATE ucs2_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_hungarian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `reset_code`) VALUES
(1, 'admin', 'admin@activity.nhely.hu', '$2y$10$4NJ9QDcB60vfwSRIp5fXkudUDfxBYYRiFp0tU74SybwuEfIi18Wte', ''),
(2, 'livi', 'livi@livi.hu', '$2y$10$/MO2KoUEmuK6dSj7nJWfVODjjbDxgVsZjKz3MiLEDiVpzOAzUmgma', '');

-- --------------------------------------------------------

--
-- Table structure for table `words_hu`
--

CREATE TABLE `words_hu` (
  `id` bigint(255) NOT NULL,
  `word` varchar(30) CHARACTER SET utf8 NOT NULL,
  `type` varchar(1) CHARACTER SET utf8 NOT NULL,
  `point` int(6) NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '1',
  `reported` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- Dumping data for table `words_hu`
--

INSERT INTO `words_hu` (`id`, `word`, `type`, `point`, `added_by`, `reported`, `deleted`) VALUES
(1, 'kalap', 'r', 2, 1, 0, 0),
(2, 'szénakazal', 'r', 6, 1, 0, 0),
(3, 'érintésvédelem', 'k', 4, 1, 0, 0),
(4, 'gyerekzár', 'k', 4, 1, 0, 0),
(5, 'munkásosztály', 'k', 4, 1, 0, 0),
(6, 'gondolatolvasás', 'r', 3, 1, 0, 0),
(7, 'vesepecsenye ', 'm', 3, 1, 0, 0),
(8, 'kenyérpirító', 'm', 2, 1, 0, 0),
(9, 'kártyavár', 'm', 5, 1, 0, 0),
(10, 'Kőolaj', 'k', 6, 1, 0, 0),
(11, 'tükörtojás', 'r', 6, 1, 0, 0),
(12, 'lemezlovas', 'm', 6, 1, 0, 0),
(13, 'repülőtér', 'm', 2, 1, 0, 0),
(14, 'Eszméletlen', 'm', 3, 1, 0, 0),
(15, 'Ádámkosztüm', 'm', 5, 1, 0, 0),
(16, 'szabadvers', 'k', 5, 1, 0, 0),
(17, 'fapapucs', 'm', 6, 1, 0, 0),
(18, 'szobainas', 'k', 4, 1, 0, 0),
(19, 'ködlámpa', 'r', 5, 1, 0, 0),
(20, 'babaágy', 'm', 4, 1, 0, 0),
(21, 'pásztorkutya', 'r', 4, 1, 0, 0),
(22, 'tüzifa', 'k', 5, 1, 0, 0),
(23, 'borbélyház', 'r', 3, 1, 0, 0),
(24, 'ruháskosár', 'm', 2, 1, 0, 0),
(25, 'selyemhernyó', 'r', 5, 1, 0, 0),
(26, 'almafa', 'k', 4, 1, 0, 0),
(27, 'gyökérkezelés', 'r', 3, 1, 0, 0),
(28, 'bowden', 'm', 5, 1, 0, 0),
(29, 'bukósisak', 'm', 2, 1, 0, 0),
(30, 'csavarhúzó', 'm', 6, 1, 0, 0),
(31, 'durrdefekt', 'r', 3, 1, 0, 0),
(32, 'egyirányú utca', 'k', 5, 1, 0, 0),
(33, 'jelzőlámpa', 'm', 4, 1, 0, 0),
(34, 'folyadékpótlás', 'r', 6, 1, 0, 0),
(35, 'gyalogátkelőhely', 'm', 5, 1, 0, 0),
(36, 'hasraesik', 'k', 3, 1, 0, 0),
(37, 'hegyi kerékpár', 'r', 2, 1, 0, 0),
(38, 'jobbkézszabály', 'r', 5, 1, 0, 0),
(39, 'kerékpártároló', 'k', 2, 1, 0, 0),
(40, 'kerékpárút', 'm', 3, 1, 0, 0),
(41, 'kilóméteróra', 'r', 3, 1, 0, 0),
(42, 'görögdinnye', 'm', 5, 1, 0, 0),
(43, 'kulcstartó', 'k', 4, 1, 0, 0),
(44, 'lakat', 'm', 2, 1, 0, 0),
(45, 'láncolaj', 'r', 2, 1, 0, 0),
(46, 'zűrzavar', 'm', 5, 1, 0, 0),
(47, 'macskaszem', 'r', 3, 1, 0, 0),
(48, 'pótgumi', 'k', 4, 1, 0, 0),
(49, 'széldzseki', 'r', 2, 1, 0, 0),
(50, 'szerelőkészlet', 'k', 4, 1, 0, 0),
(51, 'tricikli', 'm', 4, 1, 0, 0),
(52, 'baszkurál', 'm', 6, 1, 0, 0),
(53, 'halfilé', 'r', 5, 1, 0, 0),
(54, 'hagymapor', 'r', 4, 1, 0, 0),
(55, 'befőttesüveg', 'm', 3, 1, 0, 0),
(56, 'kentaur', 'm', 5, 1, 0, 0),
(57, 'Nyakatekert', 'k', 5, 1, 0, 0),
(58, 'Agysérült', 'r', 5, 1, 0, 0),
(59, 'lütetű', 'r', 4, 1, 0, 0),
(60, 'önkritika', 'k', 5, 1, 0, 0),
(61, 'Szavahihetetlen ember', 'k', 5, 1, 0, 0),
(62, 'fagyáspont', 'r', 4, 1, 0, 0),
(63, 'Laptop hűtő', 'r', 3, 1, 0, 0),
(64, 'Billentyűzet', 'm', 4, 1, 0, 0),
(65, 'Mestermű', 'k', 4, 1, 0, 0),
(66, 'Megfigyelés', 'm', 2, 1, 0, 0),
(67, 'Távcső', 'r', 2, 1, 0, 0),
(68, 'Akvárium', 'm', 4, 1, 0, 0),
(69, 'Képkeret', 'r', 2, 1, 0, 0),
(70, 'Fényképezőgép', 'm', 2, 1, 0, 0),
(71, 'Díszpárna', 'r', 2, 1, 0, 0),
(72, 'bárányhimló', 'r', 2, 1, 0, 0),
(73, 'Hangverseny', 'r', 3, 1, 0, 0),
(74, 'Hidegvér', 'm', 6, 1, 0, 0),
(75, 'Függönykarnis', 'm', 5, 1, 0, 0),
(76, 'Gyémántgyűrű', 'k', 2, 1, 0, 0),
(77, 'zabhegyező', 'k', 6, 1, 0, 0),
(78, 'sóbánya', 'm', 4, 1, 0, 0),
(79, 'Kulturális sokk', 'k', 5, 1, 0, 0),
(80, 'Pápaszem', 'm', 5, 1, 0, 0),
(81, 'Kávébab', 'k', 3, 1, 0, 0),
(82, 'ádámcsutka', 'r', 4, 1, 0, 0),
(83, 'Számmisztika', 'm', 6, 1, 0, 0),
(84, 'Családfa', 'k', 4, 1, 0, 0),
(85, 'Antikrisztus', 'r', 5, 1, 0, 0),
(86, 'Körforgalom', 'k', 3, 1, 0, 0),
(87, 'Szervkereskedelem', 'r', 5, 1, 0, 0),
(88, 'Kutatócsoport', 'k', 2, 1, 0, 0),
(89, 'Konyhanyelv', 'k', 4, 1, 0, 0),
(90, 'Vizibicikli', 'r', 2, 1, 0, 0),
(91, 'Autóbaleset', 'm', 4, 1, 0, 0),
(92, 'Borospince', 'r', 4, 1, 0, 0),
(93, 'Tűznyelő', 'm', 3, 1, 0, 0),
(94, 'Horgászbot', 'k', 2, 1, 0, 0),
(95, 'Szolgasors', 'k', 3, 1, 0, 0),
(96, 'Szkafander', 'k', 4, 1, 0, 0),
(97, 'Villámcsapás', 'm', 4, 1, 0, 0),
(98, 'Disznóvágás', 'k', 3, 1, 0, 0),
(99, 'Villanykörte', 'k', 2, 1, 0, 0),
(100, 'Bakkecske', 'k', 4, 1, 0, 0),
(101, 'Diszkófény', 'k', 2, 1, 0, 0),
(102, 'Csínytevő', 'k', 3, 1, 0, 0),
(103, 'Hangoskönyv', 'm', 5, 1, 0, 0),
(104, 'Bundáskenyér', 'r', 5, 1, 0, 0),
(105, 'Gyapjúszőnyeg', 'r', 4, 1, 0, 0),
(106, 'Borbély', 'r', 5, 1, 0, 0),
(107, 'Elemlámpa', 'm', 2, 1, 0, 0),
(108, 'Széndioxid', 'r', 5, 1, 0, 0),
(109, 'Rakottkrumpli', 'r', 5, 1, 0, 0),
(110, 'Elnökválasztás', 'k', 4, 1, 0, 0),
(111, 'Szövegláda', 'k', 5, 1, 0, 0),
(112, 'Vízipóló', 'k', 4, 1, 0, 0),
(113, 'Aranyeső', 'k', 4, 1, 0, 0),
(114, 'Gumilabda', 'r', 5, 1, 0, 0),
(115, 'Gumiszoba', 'm', 4, 1, 0, 0),
(116, 'Nadrágszíj', 'r', 2, 1, 0, 0),
(117, 'Madártej', 'k', 4, 1, 0, 0),
(118, 'Tőkehal', 'k', 5, 1, 0, 0),
(119, 'Dobverő', 'r', 3, 1, 0, 0),
(120, 'Közellenség', 'k', 5, 1, 0, 0),
(121, 'Bélcsavarodás', 'm', 6, 1, 0, 0),
(122, 'Országház', 'r', 4, 1, 0, 0),
(123, 'Fűszál', 'm', 5, 1, 0, 0),
(124, 'Ütvefúró', 'r', 6, 1, 0, 0),
(125, 'Szorítókötés', 'r', 5, 1, 0, 0),
(126, 'Fakír', 'r', 4, 1, 0, 0),
(127, 'Költőpénz', 'm', 6, 1, 0, 0),
(128, 'Gyerekjáték', 'r', 6, 1, 0, 0),
(129, 'Számlatömb', 'k', 6, 1, 0, 0),
(130, 'Agydaganat', 'm', 6, 1, 0, 0),
(131, 'Lótetű', 'r', 6, 1, 0, 0),
(132, 'Ügyvezető igazgató', 'r', 6, 1, 0, 0),
(133, 'Télapó', 'r', 3, 1, 0, 0),
(134, 'Visszajátszás', 'm', 6, 1, 0, 0),
(135, 'Tojástartó', 'r', 4, 1, 0, 0),
(136, 'Családtag', 'r', 6, 1, 0, 0),
(137, 'Imakönyv', 'k', 6, 1, 0, 0),
(138, 'Öregasszony', 'r', 5, 1, 0, 0),
(139, 'Alagút', 'k', 5, 1, 0, 0),
(140, 'Jelszó', 'm', 6, 1, 0, 0),
(141, 'Hullámlovaglás', 'm', 6, 1, 0, 0),
(142, 'Tökfödő', 'r', 6, 1, 0, 0),
(143, 'Szivargyújtó', 'm', 3, 1, 0, 0),
(144, 'Varródoboz', 'r', 3, 1, 0, 0),
(145, 'Fuvarlevél', 'm', 6, 1, 0, 0),
(146, 'Tejszínhab', 'm', 6, 1, 0, 0),
(147, 'Habverő', 'k', 4, 1, 0, 0),
(148, 'Takarékláng', 'r', 6, 1, 0, 0),
(149, 'Végbélkúp', 'k', 4, 1, 0, 0),
(150, 'Szelepsapka', 'k', 5, 1, 0, 0),
(151, 'Bohóc', 'r', 6, 1, 0, 0),
(152, 'Ágytál', 'r', 4, 1, 0, 0),
(153, 'Akupunktura', 'k', 4, 1, 0, 0),
(154, 'Állatkert', 'r', 6, 1, 0, 0),
(155, 'Nyálgombóc', 'r', 6, 1, 0, 0),
(156, 'Bakancslista', 'r', 5, 1, 0, 0),
(157, 'Bajuszfésű', 'k', 6, 1, 0, 0),
(158, 'Banyakemence', 'm', 2, 1, 0, 0),
(159, 'Bélpoklos', 'm', 6, 1, 0, 0),
(160, 'Nyálbuborék', 'k', 6, 1, 0, 0),
(161, 'Csirkefogó', 'm', 6, 1, 0, 0),
(162, 'Dobostorta', 'm', 6, 1, 0, 0),
(163, 'Dohánylevél', 'k', 6, 1, 0, 0),
(164, 'Húsgombóc', 'm', 6, 1, 0, 0),
(165, 'Gitarhúr', 'k', 4, 1, 0, 0),
(166, 'Csokigolyó', 'm', 6, 1, 0, 0),
(167, 'Göncölszekér', 'm', 6, 1, 0, 0),
(168, 'Világháború', 'm', 6, 1, 0, 0),
(169, 'Hattyúdal', 'k', 6, 1, 0, 0),
(170, 'Mellimplantátum', 'm', 6, 1, 0, 0),
(171, 'Injekcióstű', 'k', 6, 1, 0, 0),
(172, 'Cserépkályha', 'k', 3, 1, 0, 0),
(173, 'Katasztrófafilm', 'm', 6, 1, 0, 0),
(174, 'Kígyóméreg', 'k', 3, 1, 0, 0),
(175, 'Koporsószeg', 'k', 3, 1, 0, 0),
(176, 'Korcsolyapálya', 'k', 3, 1, 0, 0),
(177, 'Kocsmabútor', 'm', 6, 1, 0, 0),
(178, 'Kürtöskalács', 'm', 6, 1, 0, 0),
(179, 'Sírásó', 'r', 4, 1, 0, 0),
(180, 'törökméz', 'r', 4, 1, 0, 0),
(181, 'agysejt', 'm', 4, 1, 0, 0),
(182, 'Ágyútöltelék', 'm', 5, 1, 0, 0),
(183, 'kókuszdió', 'm', 5, 1, 0, 0),
(184, 'zűrzavar ', 'm', 6, 1, 0, 0),
(185, 'pantomimes', 'm', 2, 1, 0, 0),
(186, 'macskajaj', 'm', 5, 1, 0, 0),
(187, 'villásreggeli', 'm', 5, 1, 0, 0),
(188, 'békehadtest', 'r', 4, 1, 0, 0),
(190, 'cigányzene ', 'm', 5, 1, 0, 0),
(191, 'tündérmese ', 'r', 4, 1, 0, 0),
(192, 'ebihal', 'r', 2, 1, 0, 0),
(193, 'fénykard', 'r', 4, 1, 0, 0),
(194, 'fénykard', 'k', 3, 1, 0, 0),
(195, 'spanyolnátha', 'k', 4, 1, 0, 0),
(196, 'infláció ', 'r', 4, 1, 0, 0),
(197, 'bábszínház ', 'r', 4, 1, 0, 0),
(198, 'motorháztető', 'm', 4, 1, 0, 0),
(199, 'hólánc ', 'r', 2, 1, 0, 0),
(200, 'nyelvtörő', 'm', 3, 1, 0, 0),
(201, 'szuperhős ', 'm', 3, 1, 0, 0),
(202, 'láncreakció', 'k', 4, 1, 0, 0),
(203, 'szubatomikus részecske ', 'k', 5, 1, 0, 0),
(204, 'mikroorganizmus', 'k', 4, 1, 0, 0),
(205, 'két ismeretlenes egyenlet', 'k', 5, 1, 0, 0),
(206, 'madártávlat', 'k', 4, 1, 0, 0),
(207, 'női megérzés ', 'k', 3, 1, 0, 0),
(208, 'forgatónyomaték', 'k', 5, 1, 0, 0),
(209, 'különvélemény ', 'k', 5, 1, 0, 0),
(219, 'ponyvaregény ', 'k', 3, 1, 0, 0),
(307, 'szájkarate', 'r', 4, 1, 0, 0),
(308, 'betyárbecsület', 'k', 6, 1, 0, 0),
(309, 'örömóda', 'k', 4, 1, 0, 0),
(310, 'piramisjáték', 'r', 4, 1, 0, 0),
(311, 'szafaripark', 'r', 4, 1, 0, 0),
(312, 'lepedőakrobata', 'k', 5, 1, 0, 0),
(313, 'világpolgár', 'r', 3, 1, 0, 0),
(314, 'katasztrófafilm', 'm', 4, 1, 0, 0),
(315, 'mennydörgés', 'r', 6, 1, 0, 0),
(316, 'árnyjáték', 'k', 5, 1, 0, 0),
(317, 'ágyútöltelék', 'm', 5, 1, 0, 0),
(318, 'levélszemét', 'r', 2, 1, 0, 0),
(319, 'villámháború', 'm', 3, 1, 0, 0),
(320, 'délibáb', 'm', 4, 1, 0, 0),
(321, 'estebéd', 'k', 6, 1, 0, 0),
(323, 'pánikroham', 'm', 6, 1, 0, 0),
(324, 'tengerjáró', 'r', 5, 1, 0, 0),
(325, 'poszttraumatikus stressz', 'k', 5, 1, 0, 0),
(326, 'törökméz', 'k', 5, 1, 0, 0),
(328, 'könyvmoly', 'r', 4, 1, 0, 0),
(329, 'robotporszivó', 'r', 4, 1, 0, 0),
(330, 'társadalmi hírdetés', 'k', 6, 1, 0, 0),
(331, 'vadbarom', 'k', 5, 1, 0, 0),
(332, 'hangverseny', 'r', 5, 1, 0, 0),
(333, 'csapatszellem', 'r', 6, 1, 0, 0),
(334, 'üvegház', 'm', 6, 1, 0, 0),
(335, 'ökölvívás', 'm', 3, 1, 0, 0),
(336, 'hanghullám', 'r', 4, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words_hu`
--
ALTER TABLE `words_hu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `words_hu`
--
ALTER TABLE `words_hu`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
