-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 07:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mike_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'ADHD', 2, 4, 'assets/images/artwork/bed.jpg'),
(2, 'Mix Song', 3, 3, 'assets/images/artwork/storm.jpg'),
(3, 'The Search', 1, 2, 'assets/images/artwork/blank.jpg'),
(4, 'Take me to London', 4, 3, 'assets/images/artwork/his.jpg'),
(5, 'Asem Sebe', 5, 11, 'assets/images/artwork/4.jpg'),
(7, 'Old Songs', 24, 3, 'assets/images/artwork/3.jpg'),
(8, 'Local Mix', 24, 11, 'assets/images/artwork/2.jpg'),
(9, 'Ultimate Mix', 24, 2, 'assets/images/artwork/1.jpg'),
(10, 'Country Mix', 24, 9, 'assets/images/artwork/5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'NF'),
(2, 'Jonas Lucas'),
(3, 'Mix'),
(4, 'Ed Sheeran'),
(5, 'Obrafour'),
(6, 'Hozier'),
(7, 'Aitch'),
(8, 'Dr hook'),
(9, 'Roddy Rich'),
(10, 'Usher'),
(11, 'Sam Hunt'),
(12, 'Sam Smith'),
(13, 'Michael Jackson'),
(14, 'Back street Boys'),
(15, 'Kelvin Campbel'),
(16, 'Warren G'),
(17, 'kwesi P'),
(18, 'Kwabena Kwabena'),
(19, 'Kofi B'),
(20, 'Kwesi Arthur'),
(21, 'Bolie'),
(22, 'Fameya'),
(23, 'Asap Rocky'),
(24, 'Various Artist');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Hip Hop'),
(3, 'Pop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classic'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Country'),
(10, 'Folk'),
(11, 'local');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(0, 'new', 'precious', '2020-05-01 00:00:00'),
(0, 'ben', 'benworld', '2020-05-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(0, 31, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Take Me Back to London ', 4, 4, 3, '03:51', 'assets/music/Take-Me-Back-to-London.m4a', 1, 2),
(3, 'Screening Evaluation (Skit)', 2, 1, 4, '02:49', 'assets/music/ADHD/01-Screening-Evaluation-(Skit).m4a', 2, 16),
(4, 'I Lied (Intro)', 2, 1, 4, '04:11', 'assets/music/ADHD/02-I-Lied-(Intro).m4a', 2, 6),
(5, 'Isis (feat. Logic)', 2, 1, 4, '03:56', 'assets/music/ADHD/03-Isis-(feat.-Logic).m4a', 2, 4),
(6, 'The War (feat. Young Thug)', 2, 1, 4, '03:42', 'assets/music/ADHD/04-The-War-(feat.Young-Thug).m4a', 2, 4),
(7, 'Chris (Skit)', 2, 1, 4, '00:58', 'assets/music/ADHD/05-Chris-(Skit).m4a', 2, 3),
(8, 'I Love', 2, 1, 4, '03:30', 'assets/music/ADHD/06-I-Love.m4a', 2, 6),
(9, 'Devil\'s Work', 2, 1, 4, '04:45', 'assets/music/ADHD/07-Devil-Work.m4a', 2, 12),
(10, 'Lotto', 2, 1, 4, '03:50', 'assets/music/ADHD/08-Lotto.m4a', 2, 5),
(11, 'Gold Mine', 2, 1, 4, '03:11', 'assets/music/ADHD/10-Gold-Mine.m4a', 2, 16),
(12, 'Change', 1, 3, 2, '03:54', 'assets/music/nf/NF-Change.mp3', 3, 19),
(13, 'Hate Myself', 1, 3, 2, '04:20', 'assets/music/nf/NF-Hate-Myself.mp3', 3, 15),
(14, 'The-Search', 1, 3, 2, '04:08', 'assets/music/nf/NF-The-Search.mp3', 3, 9),
(15, 'NF-Let me Go', 1, 3, 2, '04:37', 'assets/music/nf/NF-Let-me-Go.mp3', 3, 1),
(16, 'NF-Leave Me Alone', 1, 3, 2, '05:03', 'assets/music/nf/NF-Leave-Me-Alone.mp3', 3, 5),
(17, 'Runnin-Outta Moonlight-Lyrics', 3, 3, 3, '3:10', 'assets/music/mix/Runnin-Outta-Moonlight.mp3', 4, 10),
(18, 'Sam Hunt -Take Your Time', 3, 2, 3, '03:58', 'assets/music/mix/Sam-Hunt-Take-Your-Time-(192-kbps).mp3', 4, 8),
(19, 'Sauti-Sol-Melanin-ft-Patoranking', 3, 2, 3, '04:35', 'assets/music/mix/Sauti-Sol-Melanin-ft-Patoranking.mp3', 4, 6),
(20, 'Tekno-GO', 3, 2, 3, '04:04', 'assets/music/Mix/Tekno-GO.mp3', 4, 14),
(21, 'The-Weeknd-Call-Out-My-Name ', 3, 2, 3, '03:48', 'assets/music/mix/The-Weeknd-Call-Out-My-Name.mp3', 4, 4),
(22, 'Usher-You-Make-Me-Wanna', 3, 2, 3, '03:42', 'assets/music/mix/Usher-You-Make-Me-Wanna.mp3', 4, 4),
(23, 'Beat it ', 13, 7, 3, '04:18', 'assets/music/old/Michael-Jackson-Beat-it-(Lyrics).mp3', 6, 5),
(24, 'Oda Fakye Me', 17, 8, 11, '05:20', 'assets/music/old/Odo-fakye-me-(feat.-Kwesi-pee).mp3', 8, 1),
(25, 'Quit Playing Games', 14, 7, 3, '03:50', 'assets/music/old/Quit-Playing-Games.mp3', 6, 11),
(26, 'Regulate', 16, 7, 2, '04:11', 'assets/music/old/Regulate.mp3', 6, 11),
(27, 'Can we talk', 15, 7, 5, '04:45', 'assets/music/old/Tevin-Campbell-Can-We-Talk.mp3', 6, 5),
(28, 'Praise the Lord', 23, 9, 4, '03:46', 'assets/music/Ultimate-mix/A$AP-Rocky - Praise-The-Lord.mp3', 9, 19),
(29, 'Taste', 7, 9, 2, '03:34', 'assets/music/Ultimate-mix/Aitch – Taste.mp3', 9, 9),
(30, 'Better love', 6, 9, 6, '03:13', 'assets/music/Ultimate-mix/Better-Love.mp3', 9, 7),
(31, 'Sharing the night together', 8, 10, 9, '02:57', 'assets/music/Ultimate-mix/Dr-Hook-Sharing-the-night-together.mp3', 7, 17),
(32, 'The box', 9, 9, 3, '', 'assets/music/Ultimate-mix/Roddy-Ricch -The-Box.mp3', 9, 3),
(33, 'Break up in a small town', 11, 10, 9, '03:51', 'assets/music/Ultimate-mix/Sam-Hunt -Break-Up-In-A-Small-Town.mp3', 7, 5),
(34, 'How Do You Sleep', 12, 9, 3, '03:22', 'assets/music/Ultimate-mix/Sam-Smith-How-Do-You-Sleep.mp3', 7, 4),
(35, 'Yeah', 10, 7, 5, '04:10', 'assets/music/Ultimate-mix/Usher-Yeah-(Feat.-Ludacris-&-Lil Jon).mp3', 6, 6),
(36, 'You make kiss your bride', 21, 8, 11, '06:11', 'assets/music/local/Bollie_-_You_May_Kiss_Your_Bride.mp3', 7, 6),
(37, 'Nothing i get', 22, 8, 11, '03:19', 'assets/music/local/Fameye-–-Nothing-I-Get-Prod-by-B2.mp3', 7, 2),
(38, 'Mmbrowaa', 19, 8, 11, '06:26', 'assets/music/local/Kofi-B-Mmobrowa.mp3', 7, 3),
(39, 'Aso', 18, 8, 11, '05:49', 'assets/music/local/Kwabena-Kwabena-Aso.mp3', 7, 7),
(40, 'Anthem', 20, 8, 11, '02:43', 'assets/music/local/Kwesi-Arthur-Anthem.mp3', 7, 0),
(41, 'Asem Sebe', 5, 5, 11, '04:40', 'assets/music/local/Obrafour-Asem-Sebe.mp3', 9, 7),
(42, 'Twe wo ho', 5, 5, 11, '05:41', 'assets/music/local/Obrafour-Twe-Wo-Ho.mp3', 9, 7),
(43, 'Who born you by mistake', 5, 5, 11, '05:52', 'assets/music/local/Obrafour-Who-Born-U.mp3', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'michael', 'Michael', 'Twumasi', '', '25f9e794323b453885f5181f1b624d0b', '2020-04-15 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'kayman', 'Tee', 'Man', '', 'b2023820a60123ef4e6869bacaf7d90c', '2020-04-15 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'Francisa', 'Nanaafia', 'Oseinana', 'Nana@yahoo.com', 'bbb8aae57c104cda40c93843ad5e6db8', '2020-04-15 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(4, 'twumasi', 'Kwadjwo', 'Adjei-twumasi', 'Rockboy@yahoo.com', 'b2023820a60123ef4e6869bacaf7d90c', '2020-04-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'michael2', 'Michael', 'Twumasi', 'Rock2@yahoo.com', 'bbb8aae57c104cda40c93843ad5e6db8', '2020-04-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(6, 'michael3', 'Michael', 'Twumasi', 'Nana4@yahoo.com', 'bbb8aae57c104cda40c93843ad5e6db8', '2020-04-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(7, 'michael5', 'Michael', 'Twumasi', 'Act2@gmail.com', 'bbb8aae57c104cda40c93843ad5e6db8', '2020-04-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(8, 'michael6', 'Michael', 'Adjei-twumasi', 'Act7@gmail.com', '0d777e9e30b918e9034ab610712c90cf', '2020-04-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(9, 'precious', 'Precious', 'Okokokokok', 'Precious@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2020-04-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(10, 'benworld', 'Benjamin', 'Okyere', 'Ben@gmail.com', 'bbb8aae57c104cda40c93843ad5e6db8', '2020-04-29 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
