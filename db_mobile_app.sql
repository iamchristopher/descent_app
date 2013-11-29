-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2013 at 01:53 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_mobile_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hero`
--

CREATE TABLE IF NOT EXISTS `tbl_hero` (
  `hero_ID` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `hero_name` varchar(128) NOT NULL,
  `hero_image` varchar(128) NOT NULL,
  `hero_bio` text NOT NULL,
  `hero_health` int(2) unsigned NOT NULL,
  `hero_speed` int(2) unsigned NOT NULL,
  `hero_stamina` int(2) unsigned NOT NULL,
  `hero_defense` int(2) unsigned NOT NULL,
  `hero_might` int(2) unsigned NOT NULL,
  `hero_knowledge` int(2) unsigned NOT NULL,
  `hero_willpower` int(2) unsigned NOT NULL,
  `hero_awareness` int(2) unsigned NOT NULL,
  PRIMARY KEY (`hero_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_hero`
--

INSERT INTO `tbl_hero` (`hero_ID`, `hero_name`, `hero_image`, `hero_bio`, `hero_health`, `hero_speed`, `hero_stamina`, `hero_defense`, `hero_might`, `hero_knowledge`, `hero_willpower`, `hero_awareness`) VALUES
(1, 'Grisban the Thirsty', 'hero_grisban.png', 'At first glance, Grisban''s story is an old and familiar one. A dwarf from Dunwarr, Grisban has left the mountains to travel through Terrinoth, making his way as a mercenary. His skill with an axe is undeniable and his love of good, strong beer memorable. An oft-repeated joke (oft-repeated by Grisban, at least), is that no one is certain if his name should be "Grisban the Bloodthirsty" or "Grisban the Beer-thirsty." Consensus seems to have settled on simply "the Thirsty." Grisban drinks with a will and fights with a terrible rage, both seeming to hint at a darker reason for leaving his home than he has yet been willing to share.', 10, 4, 5, 6, 4, 3, 2, 1),
(2, 'Widow Tarha', 'hero_tarha.png', 'Young, beautiful, and full of joy, Tarha once seemed destined for a long, happy life in the traditional vein: a strong husband, many strong children, and a respected place in her tribe. What more could an orc maiden wish for? But after her husband was murdered by soldiers who couldn''t be bothered to distinguish a law-abiding orc from a savage invader, Tarha''s life turned sour. Her earlier studies in the mystic arts turned toward darkness and forbidden lores, until she might have strength enough to protect not just the orcs, but all downtrodden and oppressed peoples everywhere. Ultimately, Tarha was exiled by her tribe for her obsession, but she is now past caring. Sometimes called Tarha the Twice-Widowed, she will do anything and pay any price to achieve her goals.', 10, 4, 4, 4, 2, 4, 3, 2),
(3, 'Ashrian', 'hero_ashrian.png', 'One day just over a year ago, Ashrian walked out of the Whispering Forest knowing not a word of either the Common Speech or the Latari tongue. She did, however, know the uses of every herb that grows in Terrinoth, the secret ways of traveling unseen through the forest, and the language of the spirits, which can speak directly a person''s mind if they are willing to hear. Never staying in one place for more than a few days, Ashrian has traveled the length and breadth of Terrinoth, and her command of the Common Speech, Latari, and a dozen other languages besides is now quite strong. Ashrian refuses to speak of her home, her people, or her past, declaring that instead she wishes to think of the future, and how to make it better.', 9, 5, 4, 6, 2, 2, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mob`
--

CREATE TABLE IF NOT EXISTS `tbl_mob` (
  `mob_ID` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `mob_name` varchar(128) NOT NULL,
  `mob_image` varchar(128) NOT NULL,
  `mob_bio` text NOT NULL,
  `mob_health` int(2) unsigned NOT NULL,
  `mob_speed` int(2) unsigned NOT NULL,
  `mob_defense` int(2) unsigned NOT NULL,
  `mob_m_health` int(2) unsigned NOT NULL,
  `mob_m_speed` int(2) unsigned NOT NULL,
  `mob_m_defense` int(2) unsigned NOT NULL,
  PRIMARY KEY (`mob_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_mob`
--

INSERT INTO `tbl_mob` (`mob_ID`, `mob_name`, `mob_image`, `mob_bio`, `mob_health`, `mob_speed`, `mob_defense`, `mob_m_health`, `mob_m_speed`, `mob_m_defense`) VALUES
(1, 'Carrion Drake', 'mob_carrion_drake.png', 'As bottom-feeding scavengers, the carrion drakes subsist upon disease and decay. Often found near bodies of water and holding a tendency towards nocturnal activity, one finds these vile creatures more than willing to adjust habits when there''s something to devour nearby, even if there''s a fair amount of life remaining to the poor soul...', 6, 5, 3, 8, 5, 4),
(2, 'Ferrox', 'mob_ferrox.png', 'An insane wizard created these blighted creatures from razorwings many years ago. Their hunger for blood has spelled the doom of many an adventurer, and wounds inflicted by ferrox tend to cause serious blood loss and heal very slowly. The most powerful ferrox have a white stripe in their hair and are capable of draining the life energy from their opponents and using it to heal themselves.', 4, 4, 4, 5, 4, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
