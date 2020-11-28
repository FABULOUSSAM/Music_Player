-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 05:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_player`
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
(158, 'https://i.ytimg.com/vi/PT2_F-1esPk/hq720.jpg', 'The Chainsmokers - Closer (Lyric) ft. Halsey', NULL, 'https://r6---sn-ci5gup-cvhs.googlevideo.com/videoplayback?expire=1604338972&ei=vPCfX4eTMIeJogP0mo3QDQ&ip=182.77.85.32&id=o-ANcRhPbEIdKadi90OZtSKETfjELR3U7XRhjE4nhW2fAk&itag=251&source=youtube&requiressl=yes&mh=NZ&mm=31%2C26&mn=sn-ci5gup-cvhs%2Csn-qxa7sn7z&ms=au%2Conr&mv=m&mvi=6&pl=20&gcr=in&initcwndbps=1047500&vprv=1&mime=audio%2Fwebm&gir=yes&clen=4348334&dur=261.821&lmt=1577948321024688&mt=1604317246&fvip=6&keepalive=yes&c=WEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cgcr%2Cvprv%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAIy89JxkERBpawN9KSbh2E3Q2ftknwje_TnPxDYAma80AiBicPAWm-LI88_QB0DaiMAjcvsD08j8l4jQ1gFDkVs3hA%3D%3D&sig=AOq0QJ8wRQIhAK0YUCz-GS7ZtrRRLo5TTSOmmVGNWfx4kKCYSUvf82wjAiADVBSZm7IvCLKQrthTJT7DkLBwo7e0EfsT3GMQMJBIhg==', NULL, '2016-07-29', '4:22', 11094557),
(169, 'https://i.ytimg.com/vi/_AsPY1bQx70/hqdefault.jpg', 'Shinedown - DEVIL (Official Video)', NULL, 'https://r1---sn-qpbpu5an5uxaapuxpo-cvhe.googlevideo.com/videoplayback?expire=1606568629&ei=VPbBX7q6OsWQvQS3yb7ICg&ip=103.87.28.187&id=o-ACmP5RDXsAxsRC6QVrjjS5HNIZAJD6oiqQMga3gt8Xcl&itag=251&source=youtube&requiressl=yes&mh=Mg&mm=31%2C29&mn=sn-qpbpu5an5uxaapuxpo-cvhe%2Csn-cvh7knek&ms=au%2Crdu&mv=m&mvi=1&pl=24&initcwndbps=942500&vprv=1&mime=audio%2Fwebm&ns=7Inz9HnOQSwbBc8UFKUe-fwF&gir=yes&clen=3831275&dur=246.681&lmt=1574971611295769&mt=1606546842&fvip=1&keepalive=yes&c=WEB&txp=5531432&n=SEfU0APvQh7nUEfPIwf&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAPnv5kmWsjeJs8gcZHinL7mqpg0LTlTFMEjB4Rs1ofr5AiAciuBNXPjvzCb_6NDfjBGfI2CaJvRsruY5co1ohHkwLA%3D%3D&sig=AOq0QJ8wRgIhAOW4XCZbtkr6jSeSRsYYXsm0BgDN14fT7cdY86SQ4Z1QAiEAj87uSX7LcxHxQxBykikx6BjRfzyLVZ3xBpA16BxBcj0=', NULL, '2018-03-07', '4:07', 181503),
(170, 'https://i.ytimg.com/vi/-tJYN-eG1zk/hqdefault.jpg', 'Queen - We Will Rock You (Official Video)', NULL, 'https://r3---sn-qpbpu5an5uxaapuxpo-cvhe.googlevideo.com/videoplayback?expire=1606570159&ei=T_zBX56_DK7J3LUPo7ye6Aw&ip=103.87.28.187&id=o-AGSJVSeVonPC0ZlZ5XQn1mquTYhnqbVD38MjvfOG26hy&itag=251&source=youtube&requiressl=yes&mh=D5&mm=31%2C29&mn=sn-qpbpu5an5uxaapuxpo-cvhe%2Csn-cvh76n7k&ms=au%2Crdu&mv=m&mvi=3&pl=24&initcwndbps=968750&vprv=1&mime=audio%2Fwebm&ns=fSdMGxLRQv9EdIACzJ_ZpdwF&gir=yes&clen=1970113&dur=134.501&lmt=1584127482573288&mt=1606548287&fvip=3&keepalive=yes&c=WEB&txp=5531432&n=r-NdxZWL888j7_xVDEn&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhANWKIt5BEQF-soEXIruBLvz_51sO062pPgCcBpfX_-dhAiAPCxzQHf-GmXfpF3p9jLe824UsvU4lpPQXKW2akNWwNA%3D%3D&sig=AOq0QJ8wRgIhAKVZoVIrsrD0WDJVSyPtNy3aSKlVTjG-CzDvWo4WKeMPAiEApppP5-G0QHQewWca4zG8DTVq9I3p8jLv9pD3a6HJS2Q=', NULL, '2008-08-01', '2:15', 3964564);

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
(4, 'Shubham', 'shubham.mohapess@gma', 12345, '12345'),
(7, 'chirag', 'casda@gmail.com', 123124141, '12345');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
