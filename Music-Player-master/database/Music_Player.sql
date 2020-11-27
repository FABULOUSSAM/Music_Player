-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2020 at 01:10 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Music_Player`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `image` varchar(40) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `image`, `name`) VALUES
(1, 'music/artist/shibayan0.jpg', 'Shibayan0'),
(2, 'music/artist/shibayan1.jpg', 'Shibayan1'),
(3, 'music/artist/shibayan2.jpg', 'Shibayan2'),
(4, 'music/artist/shibayan3.jpg', 'Shibayan3'),
(5, 'music/artist/shibayan4.jpg', 'Shibayan4'),
(6, 'music/artist/shibayan5.jpg', 'Shibayan5'),
(7, 'music/artist/shibayan6.jpg', 'Shibayan6'),
(8, 'music/artist/shibayan7.jpg', 'Shibayan7'),
(9, 'music/artist/shibayan8.jpg', 'Shibayan8'),
(10, 'music/artist/shibayan9.jpg', 'Shibayan9');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `artist` varchar(50) DEFAULT NULL,
  `src` varchar(900) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `duration` varchar(5) DEFAULT NULL,
  `likes` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `thumbnail`, `name`, `artist`, `src`, `category`, `release_date`, `duration`, `likes`) VALUES
(147, 'music/thumbnail/Fall In Dark0.jpg', 'Fall In Dark0', 'Shibayan0', 'music/files/Fall In Dark0.mp3', NULL, '2020-09-02', '3:00', 31),
(148, 'music/thumbnail/Fall In Dark1.jpg', 'Fall In Dark1', 'Shibayan1', 'music/files/Fall In Dark0.mp3', NULL, '2020-09-02', '3:00', 30),
(149, 'music/thumbnail/Fall In Dark2.jpg', 'Fall In Dark2', 'Shibayan2', 'music/files/Fall In Dark0.mp3', NULL, '2020-09-02', '3:00', 30),
(150, 'music/thumbnail/Fall In Dark3.jpg', 'Fall In Dark3', 'Shibayan3', 'music/files/Fall In Dark0.mp3', NULL, '2020-09-02', '3:00', 30),
(151, 'music/thumbnail/Fall In Dark4.jpg', 'Fall In Dark4', 'Shibayan4', 'music/files/Fall In Dark0.mp3', NULL, '2020-09-02', '3:00', 30),
(152, 'music/thumbnail/Fall In Dark5.jpg', 'Fall In Dark5', 'Shibayan5', 'music/files/Fall In Dark0.mp3', NULL, '2020-09-02', '3:00', 30),
(153, 'music/thumbnail/Fall In Dark6.jpg', 'Fall In Dark6', 'Shibayan6', 'music/files/Fall In Dark0.mp3', NULL, '2020-09-02', '3:00', 30),
(154, 'music/thumbnail/Fall In Dark7.jpg', 'Fall In Dark7', 'Shibayan7', 'music/files/Fall In Dark0.mp3', NULL, '2020-09-02', '3:00', 30),
(158, 'https://i.ytimg.com/vi/PT2_F-1esPk/hq720.jpg', 'The Chainsmokers - Closer (Lyric) ft. Halsey', NULL, 'https://r6---sn-ci5gup-cvhs.googlevideo.com/videoplayback?expire=1604338972&ei=vPCfX4eTMIeJogP0mo3QDQ&ip=182.77.85.32&id=o-ANcRhPbEIdKadi90OZtSKETfjELR3U7XRhjE4nhW2fAk&itag=251&source=youtube&requiressl=yes&mh=NZ&mm=31%2C26&mn=sn-ci5gup-cvhs%2Csn-qxa7sn7z&ms=au%2Conr&mv=m&mvi=6&pl=20&gcr=in&initcwndbps=1047500&vprv=1&mime=audio%2Fwebm&gir=yes&clen=4348334&dur=261.821&lmt=1577948321024688&mt=1604317246&fvip=6&keepalive=yes&c=WEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cgcr%2Cvprv%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAIy89JxkERBpawN9KSbh2E3Q2ftknwje_TnPxDYAma80AiBicPAWm-LI88_QB0DaiMAjcvsD08j8l4jQ1gFDkVs3hA%3D%3D&sig=AOq0QJ8wRQIhAK0YUCz-GS7ZtrRRLo5TTSOmmVGNWfx4kKCYSUvf82wjAiADVBSZm7IvCLKQrthTJT7DkLBwo7e0EfsT3GMQMJBIhg==', NULL, '2016-07-29', '4:22', 11094556),
(159, 'https://i.ytimg.com/vi/PT2_F-1esPk/hq720.jpg', 'The Chainsmokers - Closer (Lyric) ft. Halsey', NULL, 'https://r6---sn-ci5gup-cvhs.googlevideo.com/videoplayback?expire=1604339560&ei=CPOfX_STDo6-vASr_Iz4Cg&ip=182.77.85.32&id=o-AMkTZXuXjdP85cv2_19fn2Eo3dAVZTAGhd3hw8voX9U2&itag=251&source=youtube&requiressl=yes&mh=NZ&mm=31%2C26&mn=sn-ci5gup-cvhs%2Csn-qxa7sn7z&ms=au%2Conr&mv=m&mvi=6&pl=20&gcr=in&initcwndbps=748750&vprv=1&mime=audio%2Fwebm&gir=yes&clen=4348334&dur=261.821&lmt=1577948321024688&mt=1604317840&fvip=6&keepalive=yes&c=WEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cgcr%2Cvprv%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIgH0h6sZFTMhr1QPerTrueuMdlNWHhIhyu5V_6JW-Eh98CIQDG4OT64tiilYu83lfF9YXUUODT3WglzYsrSFeeLVM0MA%3D%3D&sig=AOq0QJ8wRQIhAOhQREGybwrt5_y997VE_uaoBzs6N5NxS-0yaHLjh6O0AiBo_uUzaMzJVfY7yZb5GizObXXwiKdy1U3P3QkIFbUwhw==', NULL, '2016-07-29', '4:22', 11094578),
(160, 'https://i.ytimg.com/vi/_IkopJwRDKU/hq720.jpg', 'Gurenge', NULL, 'https://r2---sn-ci5gup-cvhk.googlevideo.com/videoplayback?expire=1604340190&ei=fvWfX_OMI-Ouz7sP5pap-A8&ip=182.77.85.32&id=o-AJ9T0mnLBvuR8_T8DkqQn4gi5Znd8MAR97Gkz7GHDbYm&itag=251&source=youtube&requiressl=yes&mh=R4&mm=31%2C26&mn=sn-ci5gup-cvhk%2Csn-qxa7snel&ms=au%2Conr&mv=m&mvi=2&pl=20&gcr=in&initcwndbps=1105000&vprv=1&mime=audio%2Fwebm&gir=yes&clen=3788029&dur=238.601&lmt=1577559313022228&mt=1604318439&fvip=2&keepalive=yes&c=WEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cgcr%2Cvprv%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhALIlCuW4u54xIcTHx03R6HuzAvdmvUvUNvZAD_lWRjj6AiEA-s0bVz12POSF5cUjxQHsYxelqvmUsfKYPRIeCisIMYM%3D&sig=AOq0QJ8wRQIgWPJnER9lAtnHd9a5z5u5ag9IzQKyE7HOzAU9TD-_FWACIQDetDCG9EljEvTkoEtbspRd_esH-sdNq6qjwGnPy8lvzw==', NULL, '2019-07-02', '3:59', 310723),
(161, 'https://i.ytimg.com/vi/pkw_Hl3qXCs/hq720.jpg', '[Official - The God Of High School - OP FULL] KSU', NULL, 'https://r4---sn-ci5gup-cvhr.googlevideo.com/videoplayback?expire=1604340231&ei=p_WfX_D7HJeYoAPgwK2wDQ&ip=182.77.85.32&id=o-APyVOrz4UlZ8Y3iY08mLHt33iple4pkOknEXNgnbkSA5&itag=251&source=youtube&requiressl=yes&mh=ES&mm=31%2C26&mn=sn-ci5gup-cvhr%2Csn-qxaeen7l&ms=au%2Conr&mv=m&mvi=4&pl=20&initcwndbps=1025000&vprv=1&mime=audio%2Fwebm&gir=yes&clen=3098014&dur=202.701&lmt=1594709237370641&mt=1604318563&fvip=4&keepalive=yes&c=WEB&txp=5431432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAKZEFGLh2RRO4oaIv-p-SVn35u8r2AIBbjrEF0a6rvZLAiEA7TSUA3cdXSHn3cYrth030FKZyjoQHTWruOQNSwFy7hc%3D&sig=AOq0QJ8wRQIhANCgj1mzgd2RU55ghbhN_EkQO9_D24RgC8EIDQwvGJJoAiB3q2HQ7OknOYXwVq1L3scDV6zoq8GZI0Fr6cvnIGc0bw==', NULL, '2020-07-13', '3:23', 28173);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Username`, `email`, `contact`, `Pass`) VALUES
(4, 'Shubham', 'shubham.mohapess@gma', 12345, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
