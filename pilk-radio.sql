-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2023 at 09:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pilk-radio`
--

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `producer` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `producer_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_played` timestamp NOT NULL DEFAULT current_timestamp(),
  `music_path` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `playing` tinyint(1) NOT NULL DEFAULT 0,
  `length` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `title`, `producer`, `producer_url`, `source_url`, `last_played`, `music_path`, `playing`, `length`) VALUES
(1, 'Neco Arc - Berserk Forces [ AI Cover ]', 'christang', 'https://www.youtube.com/@christangTheOne', 'https://www.youtube.com/watch?v=M7jhewKTx3M', '2023-10-07 18:30:25', './music/Neco Arc - Berserk Forces [ AI Cover ]-christang.opus', 0, 239),
(2, 'I Wonder - Neco arc x Kyne West', 'Froppy Randomness', 'https://www.youtube.com/@FroppyRandomness', 'https://www.youtube.com/watch?v=XajJgBY0AOs', '2023-10-07 11:44:11', './music/I Wonder - Neco arc x Kyne West-Froppy Randomness.opus', 0, 246),
(3, 'Neco Arc - Starboy (AI Cover)', 'DSRVR', 'https://www.youtube.com/@DSRVR', 'https://www.youtube.com/watch?v=Dhz43C7_2Tk', '2023-10-07 11:44:11', './music/Neco Arc - Starboy (AI Cover)-DSRVR.opus', 0, 227),
(4, 'Lil Neco Arc - Old Town Cat (Neco Arc AI Cover) ft. Freddie Mercury', 'FliKer', 'https://www.youtube.com/@fl1ktm', 'https://www.youtube.com/watch?v=cCiqEKynwcA', '2023-10-07 19:52:03', './music/Lil Neco Arc - Old Town Cat (Neco Arc AI Cover) ft. Freddie Mercury-FliKer.opus', 0, 158),
(5, 'Neco Arc - МАСЮНЯ (AI COVER)', 'Дима Mojong', 'https://www.youtube.com/@TheMojongChannel', 'https://www.youtube.com/watch?v=0tbEyj55hPQ', '2023-10-07 11:44:11', './music/Neco Arc - МАСЮНЯ (AI COVER)-Дима Mojong.opus', 0, 144),
(6, 'Neco Arc - Tick Tock (Joji Cover)', 'Kip', 'https://www.youtube.com/@Kippuin', 'https://www.youtube.com/watch?v=6Rv5oGzJnBs', '2023-10-07 11:44:11', './music/Neco Arc - Tick Tock (Joji Cover)-Kip.opus', 0, 132),
(7, 'Neco Arc - Stigmata - Сентябрь (AI Cover)', 'rsdelta', 'https://www.youtube.com/@rsdelta', 'https://www.youtube.com/watch?v=kz0IDgUWMo4', '2023-10-07 11:44:11', './music/Neco Arc - Stigmata - Сентябрь (AI Cover)-rsdelta.opus', 0, 242),
(8, 'Neco Arc - Белая ночь [ Ai Cover ]', 'LazyKat', 'https://www.youtube.com/@LazyKoten', 'https://www.youtube.com/watch?v=dc37kHXiaBE', '2023-10-07 21:07:48', './music/Neco Arc - Белая ночь [ Ai Cover ]-LazyKat.opus', 0, 239),
(9, 'Молчат НекоАрк – Судnya | Молчат дома - Судно Neco-Arc (AI Cover)', 'Stinky freaks', 'https://www.youtube.com/@Stinkyfreaks', 'https://www.youtube.com/watch?v=1VawjUuAccI', '2023-10-07 22:19:12', './music/Молчат НекоАрк – Судnya | Молчат дома - Судно Neco-Arc (AI Cover)-Stinky freaks.opus', 0, 144),
(10, 'Neco Arc-In the End Linkin Park', 'ShiroUDrak', 'https://www.youtube.com/@ShiroDrao', 'https://www.youtube.com/watch?v=U1zDp9923PU', '2023-10-07 11:44:11', './music/Neco Arc-In the End Linkin Park-ShiroUDrak.opus', 0, 218),
(11, 'Neco Arc - Gorillaz - Clint Eastwood (AI Cover)', 'rsdelta', 'https://www.youtube.com/@rsdelta', 'https://www.youtube.com/watch?v=8W4HLWTHwa8', '2023-10-07 11:44:11', './music/Neco Arc - Gorillaz - Clint Eastwood (AI Cover)-rsdelta.opus', 0, 251),
(12, 'Neco Arc - Feel Good Inc. (AI Cover)', 'Honchu', 'https://www.youtube.com/@Honchu1', 'https://www.youtube.com/watch?v=1KBszSo-lJo', '2023-10-08 07:40:16', './music/Neco Arc - Feel Good Inc. (AI Cover)-Honchu.opus', 0, 222),
(13, 'Neco Arc - Scatmans World (AI Cover)', 'rsdelta', 'https://www.youtube.com/@rsdelta', 'https://www.youtube.com/watch?v=KFpuPFPD8lQ', '2023-10-07 11:44:11', './music/Neco Arc - Scatmans World (AI Cover)-rsdelta.opus', 0, 222),
(14, 'Neco Arc Linkin Park  What Ive Done (I.A)Cover', 'ShiroUDrak', 'https://www.youtube.com/@ShiroDrao', 'https://www.youtube.com/watch?v=SrAA_h5Ze10', '2023-10-08 07:53:43', './music/Neco Arc Linkin Park  What Ive Done (I.A)Cover-ShiroUDrak.opus', 0, 205),
(15, 'Skillet - Monster, but Neco Arc sings it (AI COVER)', 'Xylopho', 'https://www.youtube.com/@Xylopho_AI', 'https://www.youtube.com/watch?v=NdgWUeylzQk', '2023-10-07 20:18:34', './music/Skillet - Monster, but Neco Arc sings it (AI COVER)-Xylopho.opus', 0, 177),
(16, 'Tu falta de querer - Neco-arc AI cover', 'Necovers-Arc', 'https://www.youtube.com/@Necovers-arc', 'https://www.youtube.com/watch?v=M_TDPFZd530', '2023-10-07 11:44:11', './music/Tu falta de querer - Neco-arc AI cover-Necovers-Arc.opus', 0, 278),
(17, 'Seven - Neco-arc AI cover', 'Necovers-Arc', 'https://www.youtube.com/@Necovers-arc', 'https://www.youtube.com/watch?v=rj_UlkKmuQo', '2023-10-07 11:44:11', './music/Seven - Neco-arc AI cover-Necovers-Arc.opus', 0, 286),
(18, 'Neco Arc - Бесприданница (Neco Arc AI Cover)', 'FliKer', 'https://www.youtube.com/@fl1ktm', 'https://www.youtube.com/watch?v=L2sd6yhWcWQ', '2023-10-07 11:44:11', './music/Neco Arc - Бесприданница (Neco Arc AI Cover)-FliKer.opus', 0, 163),
(19, 'Neco Arc - Disturbed - Decadence (Neco Arc AI Cover', 'FliKer', 'https://www.youtube.com/@fl1ktm', 'https://www.youtube.com/watch?v=UAh44gOz1FA', '2023-10-07 22:35:13', './music/Neco Arc - Disturbed - Decadence (Neco Arc AI Cover-FliKer.opus', 0, 198),
(20, 'Neco Arc - Bring me to life cover', 'lessthanthree', 'https://www.youtube.com/@kapono_', 'https://www.youtube.com/watch?v=E-krWpqPWRE', '2023-10-07 11:44:11', './music/Neco Arc - Bring me to life cover-lessthanthree.opus', 0, 237),
(21, 'Neco Arc-Fly Me To The Moon', 'La-Creatura', 'https://www.youtube.com/@La-Creatura', 'https://www.youtube.com/watch?v=YzYdM0nUkTQ', '2023-10-07 11:44:11', './music/Neco Arc-Fly Me To The Moon-La-Creatura.opus', 0, 148),
(22, 'The real slim kittie (Neco arc slim shady AI cover)', 'Demonmask', 'https://www.youtube.com/@Demonmask-whatareyoulookingat', 'https://www.youtube.com/watch?v=u1kX9IH2dik', '2023-10-07 19:07:45', './music/The real slim kittie (Neco arc slim shady AI cover)-Demonmask.opus', 0, 268),
(23, 'Neco Arc - Падать в Грязь (AI Cover)', 'FliKer', 'https://www.youtube.com/@fl1ktm', 'https://www.youtube.com/watch?v=BMI_dpNU-0A', '2023-10-07 11:44:11', './music/Neco Arc - Падать в Грязь (AI Cover)-FliKer.opus', 0, 165),
(24, 'Neco Arc, Hatsune Miku - Я Сошла С Ума (AI Cover)', 'FliKer', 'https://www.youtube.com/@fl1ktm', 'https://www.youtube.com/watch?v=t6cke73zwv4', '2023-10-07 19:46:28', './music/Neco Arc, Hatsune Miku - Я Сошла С Ума (AI Cover)-FliKer.opus', 0, 225),
(25, 'Neco Arc -  Holiday / Boulevard of Broken Dreams (Green Day Cover)', 'Kip', 'https://www.youtube.com/@Kippuin', 'https://www.youtube.com/watch?v=2cPuvqYDz_Y', '2023-10-07 23:00:39', './music/Neco Arc -  Holiday / Boulevard of Broken Dreams (Green Day Cover)-Kip.opus', 0, 494),
(26, 'Neco Arc - Wake Me Up When September Ends (AI Cover)', 'rsdelta', 'https://www.youtube.com/@rsdelta', 'https://www.youtube.com/watch?v=7_2w6rL2f2w', '2023-10-07 21:30:39', './music/Neco Arc - Wake Me Up When September Ends (AI Cover)-rsdelta.opus', 0, 275),
(27, 'Neco Arc - All Star (Smash Mouth Cover)', 'Kip', 'https://www.youtube.com/@Kippuin', 'https://www.youtube.com/watch?v=nJFkl1O0358', '2023-10-07 11:44:11', './music/Neco Arc - All Star (Smash Mouth Cover)-Kip.opus', 0, 201),
(28, 'Neco Arc - Tokyo Cat (Neco Arc AI Cover)', 'FliKer', 'https://www.youtube.com/@fl1ktm', 'https://www.youtube.com/watch?v=k9o4WR58NdI', '2023-10-07 11:44:11', './music/Neco Arc - Tokyo Cat (Neco Arc AI Cover)-FliKer.opus', 0, 90),
(29, 'Neco Arc - Great War (ai cover)', 'Encrypted Lobster', 'https://www.youtube.com/@encryptedlobster', 'https://www.youtube.com/watch?v=cw48q-3LY24', '2023-10-07 22:07:32', './music/Neco Arc - Great War (ai cover)-Encrypted Lobster.opus', 0, 269),
(30, '【-Neko Arc -Kanaria】KING Cover A.i    !Warning Epilepcia Ligera!', 'ShiroUDrak', 'https://www.youtube.com/@ShiroDrao', 'https://www.youtube.com/watch?v=49aWG3fA1tM', '2023-10-07 22:47:08', './music/【-Neko Arc -Kanaria】KING Cover A.i    !Warning Epilepcia Ligera!-ShiroUDrak.opus', 0, 136),
(31, 'Neco Arc - Godzilla (Eminem Cover) Ft. Neco Arc Chaos', 'Kip', 'https://www.youtube.com/@Kippuin', 'https://www.youtube.com/watch?v=RD4oOwkhAss', '2023-10-07 11:44:11', './music/Neco Arc - Godzilla (Eminem Cover) Ft. Neco Arc Chaos-Kip.opus', 0, 213),
(32, 'Neco Arc - Lucid Dreams [AI Cover]', 'Nesqquick2', 'https://www.youtube.com/@Nesqquick2', 'https://www.youtube.com/watch?v=T98jM6AojW4', '2023-10-07 21:43:20', './music/Neco Arc - Lucid Dreams [AI Cover]-Nesqquick2.opus', 0, 240),
(33, 'Neco arc Hope XXXTENTACION AI cover', 'Blunt', 'https://www.youtube.com/@Bluntttttt', 'https://www.youtube.com/watch?v=kshQqS1wiHw', '2023-10-07 11:44:11', './music/Neco arc Hope XXXTENTACION AI cover-Blunt.opus', 0, 111),
(34, 'moonlight neco arc ai cover', 'Archareux', 'https://www.youtube.com/@archareux', 'https://www.youtube.com/watch?v=i_aOKWTfNG8', '2023-10-07 11:44:11', './music/moonlight neco arc ai cover-Archareux.opus', 0, 140),
(35, 'Neco Arc - XO Tour Llif3 || AI Cover', 'ItzChuChu', 'https://www.youtube.com/@ItzChuChu_', 'https://www.youtube.com/watch?v=1eCth2viaB0', '2023-10-07 11:44:11', './music/Neco Arc - XO Tour Llif3 || AI Cover-ItzChuChu.opus', 0, 179),
(36, 'Lalala - Neco-arc AI cover', 'Necovers-Arc', 'https://www.youtube.com/@Necovers-arc', 'https://www.youtube.com/watch?v=lu-m6dEfHr8', '2023-10-08 07:46:58', './music/Lalala - Neco-arc AI cover-Necovers-Arc.opus', 0, 161),
(37, 'Neco Arc - Baby One More Time || AI Cover', 'ItzChuChu', 'https://www.youtube.com/@ItzChuChu_', 'https://www.youtube.com/watch?v=cCydA9F8kvA', '2023-10-07 11:44:11', './music/Neco Arc - Baby One More Time || AI Cover-ItzChuChu.opus', 0, 211),
(38, 'Neco Arc - Eye of the Tiger [AI Cover]', 'Nesqquick2', 'https://www.youtube.com/@Nesqquick2', 'https://www.youtube.com/watch?v=ez32JvpPoJE', '2023-10-08 07:49:39', './music/Neco Arc - Eye of the Tiger [AI Cover]-Nesqquick2.opus', 0, 244),
(39, 'Neco Arc - Закрой за мной дверь (Neco Arc AI Cover)', 'FliKer', 'https://www.youtube.com/@fl1ktm', 'https://www.youtube.com/watch?v=ZAPbNAoT1Dg', '2023-10-07 11:44:11', './music/Neco Arc - Закрой за мной дверь (Neco Arc AI Cover)-FliKer.opus', 0, 253),
(40, 'Neco Arc  - Still D.R.E. ft. Snoop Dogg and Dr. Dre (AI cover)', 'Nekovana', 'https://www.youtube.com/@Nekovana', 'https://www.youtube.com/watch?v=GsYp6dpTjmY', '2023-10-07 21:59:44', './music/Neco Arc  - Still D.R.E. ft. Snoop Dogg and Dr. Dre (AI cover)-Nekovana.opus', 0, 270),
(41, 'Blondie — Call me [Neco Arc AI Cover]', 'Saymon MacGregor', 'https://www.youtube.com/@saymonfromhell', 'https://www.youtube.com/watch?v=LOtm810lzcs', '2023-10-07 11:44:11', './music/Blondie — Call me [Neco Arc AI Cover]-Saymon MacGregor.opus', 0, 212),
(42, 'Neco Arc - Tokyo Drift (AI cover)', 'HIDDEN', 'https://www.youtube.com/@hidden457', 'https://www.youtube.com/watch?v=sIn4_TKRqCY', '2023-10-07 11:44:11', './music/Neco Arc - Tokyo Drift (AI cover)-HIDDEN.opus', 0, 255),
(43, 'Neco Arc - Modern Talking - Cheri Cheri Lady (AI Cover)', 'rsdelta', 'https://www.youtube.com/@rsdelta', 'https://www.youtube.com/watch?v=10uQ3hzAaww', '2023-10-07 22:04:15', './music/Neco Arc - Modern Talking - Cheri Cheri Lady (AI Cover)-rsdelta.opus', 0, 197),
(44, 'Neco Arc - Кончиться лето (AI Cover)', 'Паша Лайвер', 'https://www.youtube.com/@Pasha_Lajver', 'https://www.youtube.com/watch?v=fZNBX2vyEDQ', '2023-10-07 21:02:17', './music/Neco Arc - Кончиться лето (AI Cover)-Паша Лайвер.opus', 0, 285),
(45, 'Duvet by Bôa - Neco Arc Cover (AI Voice)', 'JellyPuff', 'https://www.youtube.com/@jellypuff7026', 'https://www.youtube.com/watch?v=c_fZNDjRp5Q', '2023-10-08 07:36:53', './music/Duvet by Bôa - Neco Arc Cover (AI Voice)-JellyPuff.opus', 0, 203),
(46, 'neco-arc sings stronger then you (500 Subs special)', 'Sokar', 'https://www.youtube.com/@MentalIllBoy', 'https://www.youtube.com/watch?v=eqFffQL8bXQ', '2023-10-07 19:27:34', './music/neco-arc sings stronger then you (500 Subs special)-Sokar.opus', 0, 171),
(47, 'Neco Arc - I got a glock in my rari (679) [ AI Cover ]', 'christang', 'https://www.youtube.com/@christangTheOne', 'https://www.youtube.com/watch?v=JQZyL2amu4E', '2023-10-07 11:44:11', './music/Neco Arc - I got a glock in my rari (679) [ AI Cover ]-christang.opus', 0, 197),
(48, 'Neco Arc - Boom, Boom, Boom, Boom!! [ AI Cover ]', 'just josh xd', 'https://www.youtube.com/@justjoshxd', 'https://www.youtube.com/watch?v=DHXBfA0Ryzk', '2023-10-07 20:27:12', './music/Neco Arc - Boom, Boom, Boom, Boom!! [ AI Cover ]-just josh xd.opus', 0, 206),
(49, 'Creeper oh man but neco arc and neco arc chaos sing it (AI cover)', 'Sokar', 'https://www.youtube.com/@MentalIllBoy', 'https://www.youtube.com/watch?v=u2BmpGktIa0', '2023-10-07 20:07:26', './music/Creeper oh man but neco arc and neco arc chaos sing it (AI cover)-Sokar.opus', 0, 221),
(50, 'Enamorado Tuyo - Neco-arc (Ia cover)', 'fernallen303', 'https://www.youtube.com/@fernallen303', 'https://www.youtube.com/watch?v=cAxuC_coLdk', '2023-10-07 11:44:11', './music/Enamorado Tuyo - Neco-arc (Ia cover)-fernallen303.opus', 0, 253),
(51, 'Sweet Little Bumblebee - Neco Arc (BEST AI VERSION)', 'Floofile', 'https://www.youtube.com/@floofile4873', 'https://www.youtube.com/watch?v=QVmPeKAY9LQ', '2023-10-07 11:44:11', './music/Sweet Little Bumblebee - Neco Arc (BEST AI VERSION)-Floofile.opus', 0, 197),
(52, 'Where the Dogs at - Neco Arc Ai Cover', 'Doog Tootin', 'https://www.youtube.com/@Doog_Tootin', 'https://www.youtube.com/watch?v=TEPdWf2HcvM', '2023-10-07 22:24:21', './music/Where the Dogs at - Neco Arc Ai Cover-Doog Tootin.opus', 0, 289),
(53, 'Lemon Tree - Neco Arc (AI Cover)', 'Steffen', 'https://www.youtube.com/@steffenxyz', 'https://www.youtube.com/watch?v=YMRfallY1mc', '2023-10-08 07:32:07', './music/Lemon Tree - Neco Arc (AI Cover)-Steffen.opus', 0, 233),
(54, 'Neco Arc - Dragostea Din Tei / Numa Numa [ AI Cover ]', 'just josh xd', 'https://www.youtube.com/@justjoshxd', 'https://www.youtube.com/watch?v=_saqLyXogkQ', '2023-10-07 11:44:11', './music/Neco Arc - Dragostea Din Tei / Numa Numa [ AI Cover ]-just josh xd.opus', 0, 218),
(55, 'Neco Arc - Everybody Wants to Rule the World (AI Cover)', 'DSRVR', 'https://www.youtube.com/@DSRVR', 'https://www.youtube.com/watch?v=Bo2ddRro7N0', '2023-10-07 21:23:33', './music/Neco Arc - Everybody Wants to Rule the World (AI Cover)-DSRVR.opus', 0, 261),
(56, 'Neco Arc - Young Girl A / 少女A [AI cover]', 'KanareyDiBud', 'https://www.youtube.com/@kanareydibud', 'https://www.youtube.com/watch?v=KxVDP6Zseko', '2023-10-07 11:44:11', './music/Neco Arc - Young Girl A / 少女A [AI cover]-KanareyDiBud.opus', 0, 242),
(57, 'Polish cow - Neco Arc (AI Cover)', 'edwcz2', 'https://www.youtube.com/@edwcz2753', 'https://www.youtube.com/watch?v=CTNKBuklUHM', '2023-10-07 11:44:11', './music/Polish cow - Neco Arc (AI Cover)-edwcz2.opus', 0, 223),
(58, 'Neco of an Arc - Toxicity', 'Syngrafer', 'https://www.youtube.com/@Syngrafer', 'https://www.youtube.com/watch?v=qnJ0EcCeQjQ', '2023-10-07 11:44:11', './music/Neco of an Arc - Toxicity-Syngrafer.opus', 0, 225),
(59, 'Neco Arc - What Im Made Of (Sonic Heroes AI Cover)', 'Honchu', 'https://www.youtube.com/@Honchu1', 'https://www.youtube.com/watch?v=c0lvbd1hjuc', '2023-10-07 11:44:11', './music/Neco Arc - What Im Made Of (Sonic Heroes AI Cover)-Honchu.opus', 0, 222),
(60, 'The Offspring - Youre Gonna Go Far, Kid | Neco Arc (AI Cover)', 'Jolitrub', 'https://www.youtube.com/@jolitrub', 'https://www.youtube.com/watch?v=8_kA9d1_gTk', '2023-10-08 07:43:59', './music/The Offspring - Youre Gonna Go Far, Kid | Neco Arc (AI Cover)-Jolitrub.opus', 0, 179),
(61, 'Neco Arc - Fallen Kingdom (BEST AI COVER)', 'Floofile', 'https://www.youtube.com/@floofile4873', 'https://www.youtube.com/watch?v=OS3s_fKfhKg', '2023-10-07 21:38:31', './music/Neco Arc - Fallen Kingdom (BEST AI COVER)-Floofile.opus', 0, 288),
(62, 'Neco Arc - Stronger (Kanye West) [AI Cover]', 'houndlemon', 'https://www.youtube.com/@houndlemon', 'https://www.youtube.com/watch?v=dObi2jgwUkQ', '2023-10-07 20:02:14', './music/Neco Arc - Stronger (Kanye West) [AI Cover]-houndlemon.opus', 0, 312),
(63, 'Neco Arc - Rap God (Eminem AI Cover)', 'Nekovana', 'https://www.youtube.com/@Nekovana', 'https://www.youtube.com/watch?v=0WVdZpjHZ8A', '2023-10-07 22:49:25', './music/Neco Arc - Rap God (Eminem AI Cover)-Nekovana.opus', 0, 364),
(64, 'Ms. Neco Arc - After Dark AI Cover', 'Abdllah Raphel', 'https://www.youtube.com/@AbdllahRaphel', 'https://www.youtube.com/watch?v=bMpZHpqBgCE', '2023-10-07 11:44:11', './music/Ms. Neco Arc - After Dark AI Cover-Abdllah Raphel.opus', 0, 262),
(65, 'Neco-Arc and Neco-Arc Chaos sing \"Barbie Girl\"', 'l1minal', 'https://www.youtube.com/@l1minal541', 'https://www.youtube.com/watch?v=_SKobMy5OkU', '2023-10-07 20:23:56', './music/Neco-Arc and Neco-Arc Chaos sing \"Barbie Girl\"-l1minal.opus', 0, 196),
(66, 'Neco Arc Sings Balling (Burger king edtion)', 'KaT_', 'https://www.youtube.com/@Katxkuna', 'https://www.youtube.com/watch?v=aLxjt1Cmvdc', '2023-10-07 11:44:11', './music/Neco Arc Sings Balling (Burger king edtion)-KaT_.opus', 0, 101),
(67, 'Neco Arc - Sonne (Rammstein AI Cover)', 'Xle8 - КолобКот', 'https://www.youtube.com/@xle8_off', 'https://www.youtube.com/watch?v=RcCy8gA_04Q', '2023-10-07 11:44:11', './music/Neco Arc - Sonne (Rammstein AI Cover)-Xle8 - КолобКот.opus', 0, 274),
(68, 'Neco Arc - Säkkijärven polkka (AI Cover)', 'Rhusakko', 'https://www.youtube.com/@Rhusakko', 'https://www.youtube.com/watch?v=E3TgzsFbCPk', '2023-10-07 20:30:39', './music/Neco Arc - Säkkijärven polkka (AI Cover)-Rhusakko.opus', 0, 140),
(69, 'Neco Arc - Every Time We Touch (Ai Cover)', 'Bugbzyyz', 'https://www.youtube.com/@Bugbzyyx', 'https://www.youtube.com/watch?v=60J_1MsXmus', '2023-10-07 21:35:14', './music/Neco Arc - Every Time We Touch (Ai Cover)-Bugbzyyz.opus', 0, 197),
(70, 'Neco Arc - Lost Kitten [ AI Cover ]', 'christang', 'https://www.youtube.com/@christangTheOne', 'https://www.youtube.com/watch?v=1PIyfaMyxMk', '2023-10-07 11:44:11', './music/Neco Arc - Lost Kitten [ AI Cover ]-christang.opus', 0, 197),
(71, 'Neco Arc - Panzerkampf (ai cover)', 'Encrypted Lobster', 'https://www.youtube.com/@encryptedlobster', 'https://www.youtube.com/watch?v=Boo2hK4FD4s', '2023-10-07 11:44:11', './music/Neco Arc - Panzerkampf (ai cover)-Encrypted Lobster.opus', 0, 312),
(72, 'Neco Arc -Lose Yourself', 'La-Creatura', 'https://www.youtube.com/@La-Creatura', 'https://www.youtube.com/watch?v=JAjSnYbpRFs', '2023-10-07 11:44:11', './music/Neco Arc -Lose Yourself-La-Creatura.opus', 0, 328),
(73, 'Neco Arc - Believer [AI COVER]', 'Cto To', 'https://www.youtube.com/@ctoto2340', 'https://www.youtube.com/watch?v=-3Khlu_LeZo', '2023-10-07 11:44:11', './music/Neco Arc - Believer [AI COVER]-Cto To.opus', 0, 204),
(74, 'A thousand miles - neco arc ai cover', 'Kresigg', 'https://www.youtube.com/@Kresigg', 'https://www.youtube.com/watch?v=8vlNqePYGss', '2023-10-07 11:44:11', './music/A thousand miles - neco arc ai cover-Kresigg.opus', 0, 238),
(75, 'Three Days Grace - Animal I Have Become, but Neco Arc sings it (AI COVER)', 'Xylopho', 'https://www.youtube.com/@Xylopho_AI', 'https://www.youtube.com/watch?v=M_9niVsuPdg', '2023-10-07 21:19:42', './music/Three Days Grace - Animal I Have Become, but Neco Arc sings it (AI COVER)-Xylopho.opus', 0, 230),
(76, 'Neco Arc - Ruler of Everything (Tally Hall Cover)', 'Kip', 'https://www.youtube.com/@Kippuin', 'https://www.youtube.com/watch?v=-AOh_4DgXKg', '2023-10-07 11:44:11', './music/Neco Arc - Ruler of Everything (Tally Hall Cover)-Kip.opus', 0, 224),
(77, 'Neco Arc (A.I) Cover Fall Out Boy - Immortals', 'ShiroUDrak', 'https://www.youtube.com/@ShiroDrao', 'https://www.youtube.com/watch?v=LAs4hXSgRo0', '2023-10-07 11:44:11', './music/Neco Arc (A.I) Cover Fall Out Boy - Immortals-ShiroUDrak.opus', 0, 200),
(78, 'Zombies On Your Lawn - Neco Arc AI Cover', 'rami', 'https://www.youtube.com/@ramielzs', 'https://www.youtube.com/watch?v=ZIaEgcv-Mzk', '2023-10-07 20:55:11', './music/Zombies On Your Lawn - Neco Arc AI Cover-rami.opus', 0, 159),
(79, 'If we ever broke up || Neko arc cover AI', 'Mozzballs', 'https://www.youtube.com/@Mozzballs', 'https://www.youtube.com/watch?v=ItnnEtWGJ-g', '2023-10-07 22:58:13', './music/If we ever broke up || Neko arc cover AI-Mozzballs.opus', 0, 145),
(80, 'Neco arc sings After Dark (ai cover)', 'The cat', 'https://www.youtube.com/@thecat5801', 'https://www.youtube.com/watch?v=G6uyhbV2mXI', '2023-10-07 19:57:57', './music/Neco arc sings After Dark (ai cover)-The cat.opus', 0, 257),
(81, 'Neco arc - Sunflower [Ai Cover]', 'Nomadism', 'https://www.youtube.com/@nomadyesmad', 'https://www.youtube.com/watch?v=OyDD1I9CPsU', '2023-10-07 19:55:18', './music/Neco arc - Sunflower [Ai Cover]-Nomadism.opus', 0, 158),
(82, 'Gorillaz - 19-2000 (Neco Arc AI Cover)', 'Mtseng', 'https://www.youtube.com/@Senguha', 'https://www.youtube.com/watch?v=fP8RmPq5UTo', '2023-10-07 20:11:41', './music/Gorillaz - 19-2000 (Neco Arc AI Cover)-Mtseng.opus', 0, 208),
(83, 'OMORI OST - My Time (Neco Arc AI Cover)', 'SuperDrixy', 'https://www.youtube.com/@SuperDrixy', 'https://www.youtube.com/watch?v=hsd3gJIFa0M', '2023-10-08 07:57:09', './music/OMORI OST - My Time (Neco Arc AI Cover)-SuperDrixy.opus', 1, 213),
(84, 'Neco Arc - Camel By Camel [ AI Cover ]', 'christang', 'https://www.youtube.com/@christangTheOne', 'https://www.youtube.com/watch?v=4b-c39PRPsE', '2023-10-07 21:47:49', './music/Neco Arc - Camel By Camel [ AI Cover ]-christang.opus', 0, 356),
(85, 'Neco-Arc sings Buddy Holly (AI Cover)', 'Endergamer.mp4', 'https://www.youtube.com/@endergamer.mp4', 'https://www.youtube.com/watch?v=1a00BFfCOwE', '2023-10-07 22:55:30', './music/Neco-Arc sings Buddy Holly (AI Cover)-Endergamer.mp4.opus', 0, 163),
(86, 'Enej Skrzydlate Ręce - Neco-Arc [AI COVER]', 'mikolak14', 'https://www.youtube.com/@mikolak14', 'https://www.youtube.com/watch?v=QEVnKhAfHG4', '2023-10-08 07:28:42', './music/Enej Skrzydlate Ręce - Neco-Arc [AI COVER]-mikolak14.opus', 0, 187),
(87, 'Lamento Boliviano - Neko Arc (AI cover)', 'Suzek L', 'https://www.youtube.com/@Suzek_L', 'https://www.youtube.com/watch?v=3q_P6bSX_OY', '2023-10-07 11:44:11', './music/Lamento Boliviano - Neko Arc (AI cover)-Suzek L.opus', 0, 223),
(88, 'Boom Boom Boom Boom - VengaBoys (Neco Arc AI Cover)', 'Cat587', 'https://www.youtube.com/@HotJoseph', 'https://www.youtube.com/watch?v=IcSquUbx0DA', '2023-10-07 22:12:01', './music/Boom Boom Boom Boom - VengaBoys (Neco Arc AI Cover)-Cat587.opus', 0, 205),
(89, 'Neco Arc - Super Idol [ AI Cover ]', 'christang', 'https://www.youtube.com/@christangTheOne', 'https://www.youtube.com/watch?v=yrxa3H_91vo', '2023-10-07 11:44:11', './music/Neco Arc - Super Idol [ AI Cover ]-christang.opus', 0, 197),
(90, 'Neco Arc - Mamona (AI cover)', 'kobold', 'https://www.youtube.com/@kobold33', 'https://www.youtube.com/watch?v=Dk0uLw47PQw', '2023-10-08 07:24:31', './music/Neco Arc - Mamona (AI cover)-kobold.opus', 0, 219),
(91, 'Berserk OP - Tell My Why neco arc AI cover', 'Trole', 'https://www.youtube.com/@Trole.', 'https://www.youtube.com/watch?v=ryT9hZ_hYeY', '2023-10-07 11:44:11', './music/Berserk OP - Tell My Why neco arc AI cover-Trole.opus', 0, 70),
(92, 'Linkin Park - Faint (Neco Arc AI cover)', 'HorpasEn', 'https://www.youtube.com/@HorpasEn', 'https://www.youtube.com/watch?v=5qsPHhlJ6gs', '2023-10-07 11:44:11', './music/Linkin Park - Faint (Neco Arc AI cover)-HorpasEn.opus', 0, 162),
(93, 'Neco Arc - Life is a Highway (Rascal Flatts Cover)', 'Kip', 'https://www.youtube.com/@Kippuin', 'https://www.youtube.com/watch?v=SVNn6yQH7i8', '2023-10-07 20:40:34', './music/Neco Arc - Life is a Highway (Rascal Flatts Cover)-Kip.opus', 0, 279),
(94, 'I miss the old Neco Arc [ AI Cover ]', 'christang', 'https://www.youtube.com/@christangTheOne', 'https://www.youtube.com/watch?v=aGdQvNxpZ_I', '2023-10-07 11:44:11', './music/I miss the old Neco Arc [ AI Cover ]-christang.opus', 0, 124),
(95, 'Me voy - Neco-arc AI cover', 'Necovers-Arc', 'https://www.youtube.com/@Necovers-arc', 'https://www.youtube.com/watch?v=TCV4vOzSLLw', '2023-10-07 11:44:11', './music/Me voy - Neco-arc AI cover-Necovers-Arc.opus', 0, 188),
(96, 'Buranyality | Jamiroquai - Virtual Insanity Neco-Arc (AI Cover)', '0x0v3rfl0w', 'https://www.youtube.com/@0x0v3rfl0w', 'https://www.youtube.com/watch?v=AXjaf3tQ2So', '2023-10-07 20:58:13', './music/Buranyality | Jamiroquai - Virtual Insanity Neco-Arc (AI Cover)-0x0v3rfl0w.opus', 0, 229),
(97, 'Night Dancer (cover español) - Neco Arc AI cover', 'Agalo', 'https://www.youtube.com/@agalo724', 'https://www.youtube.com/watch?v=ZVTY128NMO0', '2023-10-07 11:44:11', './music/Night Dancer (cover español) - Neco Arc AI cover-Agalo.opus', 0, 212),
(98, 'Oh Shit Im Nyanning it - Neco Arc Ai Cover', 'R. Daneel Olviaw', 'https://www.youtube.com/@R.DaneelOlviaw', 'https://www.youtube.com/watch?v=_LOtT3CF1cA', '2023-10-07 11:44:11', './music/Oh Shit Im Nyanning it - Neco Arc Ai Cover-R. Daneel Olviaw.opus', 0, 215),
(99, 'Buddy Holly - Neco Arc [A.I. Cover]', 'La-Creatura', 'https://www.youtube.com/@La-Creatura', 'https://www.youtube.com/watch?v=N65Gp60ix_o', '2023-10-07 22:44:24', './music/Buddy Holly - Neco Arc [A.I. Cover]-La-Creatura.opus', 0, 164),
(100, 'Neco Arc - Es Épico (AI Cover)', 'Frambueso', 'https://www.youtube.com/@frambuesogod', 'https://www.youtube.com/watch?v=ry7mnXHtvtg', '2023-10-07 11:44:11', './music/Neco Arc - Es Épico (AI Cover)-Frambueso.opus', 0, 362);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
