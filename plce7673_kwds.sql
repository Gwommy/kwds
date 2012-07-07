-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 20, 2012 at 07:21 PM
-- Server version: 5.1.63
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `plce7673_kwds`
--

-- --------------------------------------------------------

--
-- Table structure for table `aerobic`
--

CREATE TABLE IF NOT EXISTS `aerobic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `aerobic`
--

INSERT INTO `aerobic` (`id`, `name`) VALUES
(1, '(n/a)'),
(2, 'None'),
(3, 'Low'),
(4, 'Average'),
(5, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE IF NOT EXISTS `attraction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `kwds_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `limit` varchar(20) NOT NULL,
  `fee` varchar(20) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `era_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `kwds_id` int(11) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `aerobic_id` int(11) NOT NULL,
  `difficulty_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `day` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=522 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `description`, `user_id`, `hours`, `limit`, `fee`, `topic_id`, `era_id`, `type_id`, `kwds_id`, `url`, `aerobic_id`, `difficulty_id`, `room_id`, `day`) VALUES
(8, 'The Rennaissance Citern', 'The Rennaissance Citern', 24, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-01 13:00:00'),
(9, 'Arbeau Suite', 'Arbeau Suite', 59, 60, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-01 13:00:00'),
(10, 'Dance & Rythym in Period', 'Dance & Rythym in Period', 24, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-02 14:15:00'),
(11, 'Fulgente Stella', 'Fulgente Stella', 55, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-02 17:45:00'),
(12, '16th C. Dance Steps', '16th C. dance steps', 55, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-01 13:00:00'),
(13, 'Rosti Boli and Gioso in Tre', 'Rosti Boli and Gioioso in Tre', 56, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-01 15:30:00'),
(14, 'The Art of Musicality', 'The Art of Musicality', 57, 90, '', '', 0, 1, 3, 8, '', 1, 1, 1, '2011-07-01 17:45:00'),
(15, 'Ornamentation', 'Ornamentation', 58, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-02 15:30:00'),
(16, 'Musical Instrument Petting Zoo', 'Musical Instrument Petting Zoo', 58, 90, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-02 17:45:00'),
(17, '15th C. Dance Steps', '15th C. dance steps', 60, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-01 14:15:00'),
(18, 'Bransles from Arbeau', 'Bransles from Arbeau', 60, 60, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-01 17:45:00'),
(19, 'The Guitar in these Current Middle Ages', 'The Guitar in these Current Middle Ages', 61, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-01 14:15:00'),
(20, 'Designing Multiple Parts to Fit a Melody', 'Designing Multiple Parts to Fit a Melody', 61, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-02 13:00:00'),
(21, 'Negri&#39;s Torneo Amoroso', 'Negri&#39;s Torneo Amoroso', 62, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-01 14:15:00'),
(22, 'Introduction to Patrick', 'Introduction to Patrick', 62, 60, '', '', 0, 1, 2, 8, '', 1, 1, 6, '2011-07-01 17:45:00'),
(23, 'Specifics of Patricke', 'Specifics of Patricke', 62, 135, '', '', 0, 1, 2, 8, '', 1, 1, 6, '2011-07-01 19:00:00'),
(24, '2 Pattricke Dances', '2 Pattricke Dances', 62, 60, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-02 17:45:00'),
(25, 'Patrick vs Playford', 'Patrick vs Playford', 62, 60, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-02 19:00:00'),
(26, 'Lansdowne 1115 manuscript', 'Lansdowne 1115 manuscript', 62, 135, '', '', 0, 1, 2, 8, '', 1, 1, 6, '2011-07-03 13:00:00'),
(27, 'Beginner''s Ball', 'Beginner''s Ball', 16, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-01 20:15:00'),
(28, 'Aerobic Dance Class', 'Aerobic Dance Class was supposed to be 1 hour long.', 16, 30, '', '', 0, 1, 2, 8, '', 5, 4, 2, '2011-07-02 13:30:00'),
(29, 'Gathering of the Louds', 'Gathering of the Louds', 63, 105, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-02 19:30:00'),
(30, 'Introduction to Raq Saiidi', 'Introduction to Raq Saiidi', 64, 90, '', '', 0, 1, 3, 8, '', 1, 1, 1, '2011-07-01 13:00:00'),
(31, 'Dublis Trublis', 'Dublis Trublis', 15, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-01 20:15:00'),
(32, 'Gresley for the Groggy', 'Gresley for the Groggy', 15, 60, '', '', 0, 1, 2, 8, '', 1, 1, 0, '2011-07-01 04:00:00'),
(33, 'Trouble some Tribus II', 'Trouble some Tribus II', 15, 135, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-03 14:15:00'),
(34, 'Bharatha Natyam', 'Bharatha Natyam', 65, 60, '', '', 0, 1, 3, 8, '', 1, 1, 1, '2011-07-01 19:30:00'),
(35, 'Bhangra Breakdown', 'Bhangra Breakdown', 65, 60, '', '', 0, 1, 3, 8, '', 1, 1, 1, '2011-07-02 13:00:00'),
(36, 'Bharata Natyam Choreography', 'Bharata Natyam Choreography', 65, 60, '', '', 0, 1, 3, 8, '', 1, 1, 1, '2011-07-02 20:00:00'),
(37, 'ECD: Goddesses, Grimstock, Scotch Cap', 'Goddesses, Grimstock, and Scotch Cap.', 66, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-01 17:45:00'),
(38, 'Calling Dances', 'Calling Dances', 30, 135, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-01 14:15:00'),
(39, '32 Scempie Mutanze', '32 Scempie Mutanze', 30, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-02 20:15:00'),
(40, 'Hostory of Singing', 'History of Singing', 67, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-03 14:15:00'),
(41, 'Dancing to Christmas Carols', 'Dancing to Christmas Carols', 68, 60, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-01 20:15:00'),
(42, 'The Most Popular Renaissance Dances', 'The Most Popular Renaissance Dances', 68, 135, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-02 14:15:00'),
(43, 'A Survey and Discussion of Available Renaissance D', 'A Survey and Discussion of Available Renaissance Dance Sources for use in Reconstruction and Choreography.', 69, 135, '', '', 0, 1, 2, 8, '', 2, 1, 6, '2011-07-01 14:15:00'),
(44, 'Candida Luna', 'Candida Luna', 69, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-02 15:30:00'),
(45, 'The Modes', 'The modes', 31, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-01 15:30:00'),
(46, 'ECD Four Couple Dances', 'ECD Four Couple Dances', 70, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-02 20:15:00'),
(47, 'Dancing for Fighters', 'Dancing for Fighters', 71, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-02 14:15:00'),
(48, 'Early Music Sampler', 'Early Music Sampler', 72, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-01 17:45:00'),
(49, 'Saltarello La Regina and Predente in Giro', 'Saltarello La Regina and Predente in Giro', 73, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-01 19:00:00'),
(50, 'Improvisation', 'Improvisation', 73, 60, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-02 20:15:00'),
(51, 'ECD in a Square', 'ECD in a square.', 37, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-01 15:30:00'),
(52, '15th C. Italian for 3', '15th C. Italian for 3', 37, 60, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-01 19:00:00'),
(53, '15th C. Italian for Beginners', '15th C. Italian for Beginners', 37, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-02 15:30:00'),
(54, 'Technique, Tuning, Articulation etc. (Roundtable)', 'Technique, Tuning, Articulation etc. (Roundtable)', 23, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-03 13:00:00'),
(55, 'Early Music in Modern Notation', 'Early Music in Modern Notation', 23, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-01 19:00:00'),
(56, 'Introduction to Pipe and Tabor', 'Introduction to Pipe and Tabor', 23, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-01 20:15:00'),
(57, 'Continuing Pipe & Tabor', 'Continuing Pipe & Tabor', 23, 60, '', '', 0, 1, 4, 8, '', 1, 1, 5, '2011-07-03 17:45:00'),
(58, 'French Basse Dance', 'French Basse Dance', 75, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-01 13:00:00'),
(59, 'Etiquette/dance Culture', 'Etiquette/dance Culture', 75, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-02 13:00:00'),
(60, 'Sha-abi Baby!', 'Sha-abi Baby!', 76, 90, '', '', 0, 1, 3, 8, '', 1, 1, 1, '2011-07-01 14:45:00'),
(61, 'ECD: Whirligig, Parsons, Nonesuch', 'Whirligig, Parsons Farewll, and Nonesuch.', 77, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-01 19:00:00'),
(62, 'Inns of Court', 'Inns of Court', 77, 60, '', '', 0, 1, 2, 8, '', 1, 1, 4, '2011-07-02 19:00:00'),
(63, 'A Slap-Happy Italian 16th C. Dance', 'Bassa Toscana', 78, 60, '', '', 0, 1, 2, 8, '', 1, 1, 3, '2011-07-01 17:45:00'),
(64, 'Basse Dance and Italian Bassadanza', 'An exploration of dance in the 15th Century.', 78, 60, '', '', 0, 1, 2, 8, '', 2, 1, 4, '2011-07-02 17:45:00'),
(65, 'Danceable Garb', 'How to make garb that is danceable: constructiing the correct garb for period dances and how to fix garb on the fly.', 79, 135, '', '', 0, 1, 2, 8, '', 2, 1, 6, '2011-07-02 14:15:00'),
(66, 'Marketing Period Dance', 'Marketing Period Dance', 80, 60, '', '', 0, 1, 2, 8, '', 1, 1, 6, '2011-07-02 20:15:00'),
(67, 'Buffins', 'Buffins', 80, 210, '', '', 0, 1, 2, 8, '', 1, 1, 2, '2011-07-03 13:00:00'),
(68, 'Chooreography Panel', 'Chooreography Panel', 20, 135, '', '', 0, 1, 2, 8, '', 2, 1, 6, '2011-07-02 17:45:00'),
(69, 'Why the  Flock of Birds Sing', 'Why the  Flock of Birds Sing', 81, 120, '', '', 0, 1, 3, 8, '', 1, 1, 1, '2011-07-02 17:45:00'),
(71, 'ECD Beginner Dances', 'ECD Beginners', 74, 135, '', '', 1, 1, 2, 8, NULL, 1, 1, 4, '2011-07-02 13:00:00'),
(72, 'Almans & Courantes', 'The courante is a lively French dance that involves leaping and running. It is aerobic and high-impact. The alman, on the other hand, is a lower-impact and lower-energy processional. We will learn both in this class.', 18, 75, '', '', 0, 1, 2, 9, '', 3, 1, 11, '2012-06-22 13:00:00'),
(73, '16th Century Italian Step Practice', 'This class will cover the most common steps in 16th-c. Italian dance. An extremely helpful primer to those new to the genre or those who want to review steps.', 20, 75, '', '', 0, 1, 2, 9, '', 1, 1, 12, '2012-06-22 13:00:00'),
(74, 'Dancing And Fighting', 'Good fighters already have the skills to be good dancers, and vice versa. Learn how the martial techniques of range, aim, and timing are closely related to the dance techniques of footwork, precision, and rhythm.', 86, 75, '', '', 0, 1, 2, 9, '', 1, 1, 10, '2012-06-22 13:00:00'),
(75, 'Inns of Court Dances', 'The Inns of Court were the social center of Elizabethan London and there were certain dances one was expected to know. No experience necessary, just walking. We will also talk about the social and historical context. Possible dances include â€œQuadran Pavan,â€ â€œTurkelone,â€ â€œEarl of Essex Measure,â€ â€œTinternell,â€ â€œOld Alman,â€ â€œQueenâ€™s Alman,â€ â€œMadam Sosilia,â€ â€œBlack Alman,â€ â€œLorayne Alman,â€ and â€œNew Alman.â€', 69, 75, '', '', 0, 1, 2, 9, '', 3, 1, 14, '2012-06-22 13:00:00'),
(76, 'Introduction to Galliards', 'The galliard was the most popular dance in Elizabethan England. Come learn the basic structure and some easy to intermediate 6-beat galliard variations from Compasso and Arbeau. The galliard is an improvisational dance, and it will be done at least seven times over the course of Friday and Saturday evening. This means you\\''ll get seven dances out of one class!', 30, 75, '', '', 0, 1, 2, 9, '', 1, 1, 11, '2012-06-22 14:30:00'),
(77, 'Basa Toscana', 'This 16th-c. Italian cascarda is intended for those with some experience and knowledge of 16th-c. Italian dance steps.', 78, 75, '', '', 0, 1, 2, 9, '', 1, 3, 12, '2012-06-22 14:30:00'),
(78, 'Two 15th-c. Italian Balli', 'During this class we will learn two dances from 15th century Italy, "La Marchesana" by Domenico da Piacenza and "Voltati in ca Rosina."', 92, 75, '', '', 0, 1, 2, 9, '', 1, 1, 10, '2012-06-22 14:30:00'),
(79, 'A Prelude to Playford: Easy English Country Dances', 'Come learn â€œBlack Nag,â€ â€œJenny Pluck Pears,â€ â€œGrimstock,â€ and â€œMillisonâ€™s Jegg.â€\r\n\r\n', 93, 75, '', '', 0, 5, 2, 9, '', 1, 2, 21, '2012-06-22 14:30:00'),
(80, 'Four Couple English Country Dances', 'Come learn these intermediate English country dances: â€œLord of Carnarvonâ€™s Jig,â€ â€œMage on a Cree,â€ â€œIf All the World Were Paper,â€ and â€œGoddesses.â€', 70, 75, '', '', 0, 5, 2, 9, '', 1, 1, 14, '2012-06-22 14:30:00'),
(81, 'Ladies and Gentlemen of Honour: Courtesy in Dance ', 'What did courtesy mean to dancers in Renaissance culture? How can we recreate the courtesy of that era?', 75, 75, '', '', 0, 1, 2, 9, '', 1, 1, 25, '2012-06-22 14:30:00'),
(82, 'Learn to Dance Gracefully', 'Being graceful is a matter of practice, not of talent. Learn the principles of looking graceful and elegant in your medieval clothes, on the dance floor, as you enter Court, and as you are introduced to new friends.', 86, 75, '', '', 0, 1, 2, 9, '', 1, 1, 11, '2012-06-22 17:30:00'),
(83, 'Noblita dâ€™Amore', 'Learn â€œNoblita dâ€™Amoreâ€ from Negriâ€™s 1602 work, Le Gratie dâ€™Amore.', 37, 75, '', '', 0, 5, 2, 9, '', 1, 1, 12, '2012-06-22 17:30:00'),
(84, 'Beginner Gresley Dances', 'Learn a few basic dances from the Gresley manuscript.', 15, 75, '', '', 0, 1, 2, 9, '', 1, 2, 10, '2012-06-22 17:30:00'),
(85, 'Contradances from Playford 1651', 'Learn the oldest genuine contradances in existence, â€œMy Lady Cullenâ€ and â€œTom Tinker.â€ Intermediate skill level. Low impact.', 30, 75, '', '', 0, 1, 2, 9, '', 1, 1, 21, '2012-06-22 17:30:00'),
(86, '15th-c. Bassedanse: Big Picture and Interesting Ch', 'Overview of 15th-c. bassedanse.', 75, 75, '', '', 0, 1, 2, 9, '', 1, 1, 14, '2012-06-22 17:30:00'),
(87, 'Presenting: The Lovelace Manuscript', 'Come learn the basic facts about this book, as well as what it can tell us about a different way to do English Country Dances. Two of the 32 dances in the book will be taught.', 62, 75, '', '', 0, 1, 2, 9, '', 2, 1, 13, '2012-06-22 17:30:00'),
(88, 'Sing Your Bransles', 'Learn to dance and memorize bransles by singing them, too. We will learn the following bransles: â€œWar,â€ â€œCharlotte,â€ â€œPinagay,â€ Washerwomanâ€™s,â€ and â€œMontarde.â€', 91, 75, '', '', 0, 1, 2, 9, '', 1, 1, 11, '2012-06-22 19:00:00'),
(89, 'Two Cascarde', 'Cascarde are lively 16th Century Italian dances found in the works of Fabritio Caroso. This class features two simpler cascarde. "Alta Regina" is lovely, and fairly low-impact for a cascarda. "Fedelta," a cute cascarda for a circle of couples, has the joyous feel of a country dance. Come, learn, and enjoy!', 55, 75, '', '', 0, 1, 2, 9, '', 1, 1, 12, '2012-06-22 19:00:00'),
(90, 'Improvising Dance', 'The music is playing and you want to go out on the floor and dance. Unfortunately, you realize you have no idea what the steps are. You could sit this dance out, or, instead, improvise your way through it! With just a basic knowledge of Italian and English Country steps, in this class you will learn how to maneuver your way through the dance using your own steps and style. Instruction will include how to start, how to lead and follow (and switch who does what during the dance!), and additional flourishes to make the dance your own.', 73, 75, '', '', 0, 1, 2, 9, '', 1, 1, 10, '2012-06-22 19:00:00'),
(91, 'Intermediate English Country Dances', 'Learn these intermediate country dances from Playford, 1651 ed.: â€œChestnut,â€ â€œGoddesses,â€ â€œHyde Park,â€ â€œPicking of Sticks,â€ and â€œScotch Cap.â€', 66, 75, '', '', 0, 5, 2, 9, '', 1, 1, 21, '2012-06-22 19:00:00'),
(92, 'Inns of Court Dances Choreographies', 'The Inns of Court were the social center of Elizabethan London and there were certain dances one was expected to know. No experience necessary, just walking. We will also talk about the social and historical context. Possible dances include â€œQuadran Pavan,â€ â€œTurkelone,â€ â€œEarl of Essex Measure,â€ â€œTinternell,â€ â€œOld Alman,â€ â€œQueenâ€™s Alman,â€ â€œMadam Sosilia,â€ â€œBlack Alman,â€ â€œLorayne Alman,â€ and â€œNew Alman.â€', 77, 75, '', '', 0, 1, 2, 9, '', 1, 1, 14, '2012-06-22 19:00:00'),
(93, 'Improvisation and Galliards Choreographies ', 'In this class, we will attempt to examine exactly what improvisation meant in period. We will try out various period instructions for how to improvise, outlining what is encouraged, and what is discouraged, by our predecessors. We will also touch on context, presentation patterns, and aesthetics of period improvisation.', 89, 75, '', '', 0, 1, 2, 9, '', 1, 1, 11, '2012-06-23 13:00:00'),
(94, 'Torneo Amoroso', 'Learn this "lovely tournament" of a dance! This is Negri''s "corrected" version of this popular dance of the time.', 62, 75, '', '', 0, 1, 2, 9, '', 1, 1, 12, '2012-06-23 13:00:00'),
(95, 'Amoroso, Revisited ', 'Amoroso appears in two manuscripts. This class will examine both versions of the dance as well as the way it is commonly performed in the SCA. Familiarity with the dance recommended, but not required. Familiarity with 15th century Italian dance steps strongly recommended.', 92, 75, '', '', 0, 1, 2, 9, '', 1, 1, 10, '2012-06-23 13:00:00'),
(96, 'Advanced English Country Dance ', 'We will learn three advanced dances: â€œWhirligig,â€ â€œParsonâ€™s Farewell,â€ and â€œNonesuch.â€', 77, 75, '', '', 0, 1, 2, 9, '', 1, 1, 14, '2012-06-23 13:00:00'),
(97, 'Introduction to Early Modern Dance', 'General overview and discussion of dance during the Early Modern Period.', 49, 75, '', '', 0, 1, 2, 9, '', 1, 1, 25, '2012-06-23 13:00:00'),
(98, 'Bransles Featured in the Masque', 'Learn the bransles that will be highlighted in the evening masque. The following bransles will be taught: â€œCassandra,â€ â€œPinagay,â€ â€œCharlotte,â€ â€œAridan,â€ and â€œScottish.â€', 16, 75, '', '', 0, 1, 2, 9, '', 1, 1, 11, '2012-06-23 14:30:00'),
(99, 'Easy 15th-c. Italian', 'Learn the classic versions of â€œPetit Riens,â€ â€œSaltarello la Regina,â€ â€œRostiboli Gioioso,â€ and â€œAmoroso.â€', 91, 75, '', '', 0, 1, 2, 9, '', 1, 1, 10, '2012-06-23 14:30:00'),
(100, 'Progressive Dances in Playford 1651', 'Before there were contra dances, there were other progressive dance forms in the English country dance genre. Come learn a few of these interesting dances!\r\n\r\n', 88, 75, '', '', 0, 1, 2, 9, '', 1, 1, 21, '2012-06-23 14:30:00'),
(101, 'Bassedanse', 'Learn â€œCasuole La Nouvelleâ€ (â€œCastille Nouvelleâ€), â€œJouyssance Vous Donneray,â€ â€œLa Verdalette,â€ â€œOrleans,â€ and â€œAlenchon.â€', 87, 75, '', '', 0, 1, 2, 9, '', 1, 1, 14, '2012-06-23 14:30:00'),
(102, '16th-c. Step Reconstructions Discussion ', 'Moderated discussion group for those who have run into difficulties with those pesky steps that are not described well (or at all) in period documentation. This is not a definitive instructional class on how to do certain steps. Bring your questions and conundrums, and hopefully we will spark a lively conversation around different solutions others have found. Those who have found workable solutions to problematic steps or sequences are encouraged to attend and share their solutions. Questions about any genre are welcome. Just to get the ball rolling, what in the heck is a fioretti spezzati?', 78, 75, '', '', 0, 1, 2, 9, '', 1, 1, 25, '2012-06-23 14:30:00'),
(103, 'I Salti del Fiocco', 'Have you ever wondered what Jackie Chan might have done if he was born in Renaissance Italy? Does jumping over your own left leg just sound like a stunningly good idea to you? Come join us in learning the prescribed steps for tassel-kicking, according to Cesare Negri (a man who could mount a horse without using his hands)!\r\n\r\n', 89, 75, '', '', 0, 1, 2, 9, '', 1, 1, 11, '2012-06-23 17:30:00'),
(104, 'Bizzaria dâ€™Amore', 'Come learn this popular perennial from Cesare Negri''s 1602 work, Le Gratie d''Amore.', 41, 75, '', '', 0, 1, 2, 9, '', 1, 1, 12, '2012-06-23 17:30:00'),
(105, 'Dance Interaction', 'In Period, as it is in the Current Middle Ages, people danced for more than just the joy of dancing. People danced to get noticed, to impress a love interest, to show off their skills, to entertain, and for many other reasons. In this class, I will take some very basic well known dances (Jenny Pluck Pears, Rufty Tufty, and Heartsease), and teach how to interact with your partner and observers while dancing. Be you outgoing or shy, skilled or a novice, you will take away practical techniques that you can practice while dancing. Oh, and dancing this way is a ton of fun, too! If it looks like you are having fun dancing, more people will want to share in that fun and will dance with you!', 73, 75, '', '', 0, 1, 2, 9, '', 1, 1, 10, '2012-06-23 17:30:00'),
(106, 'Two More Lovelace MS Dances ', 'Learn two more dances from the Lovelace Manuscript, one that is mostly familiar, and one which has the least amount of instruction possible for a regular ECD.', 62, 75, '', '', 0, 1, 2, 9, '', 1, 1, 21, '2012-06-23 17:30:00'),
(107, 'Inns of Court Dances', 'The Inns of Court were the social center of Elizabethan London and there were certain dances one was expected to know. No experience necessary, just walking. We will also talk about the social and historical context. Possible dances include â€œQuadran Pavan,â€ â€œTurkelone,â€ â€œEarl of Essex Measure,â€ â€œTinternell,â€ â€œOld Alman,â€ â€œQueenâ€™s Alman,â€ â€œMadam Sosilia,â€ â€œBlack Alman,â€ â€œLorayne Alman,â€ and â€œNew Alman.â€', 49, 75, '', '', 0, 1, 2, 9, '', 1, 1, 14, '2012-06-23 17:30:00'),
(108, 'All the Bransles!', 'No, seriously! All of them! (Recommended for intermediate to advanced dancers.)', 16, 75, '', '', 0, 1, 2, 9, '', 1, 3, 11, '2012-06-23 19:00:00'),
(109, 'Il Contro del Orco', 'Learn this lively cascarda from Caroso''s 1581 work, Il Ballarino.', 69, 75, '', '', 0, 1, 2, 9, '', 1, 1, 12, '2012-06-23 19:00:00'),
(110, 'Intermediate Gresley Dances ', 'Learn a few slightly more advanced dances from the Gresley manuscript.', 15, 75, '', '', 0, 1, 2, 9, '', 1, 1, 10, '2012-06-23 19:00:00'),
(111, 'Three-Couple English Dances ', 'Intermediate-level ECD. We will learn â€œAdsonâ€™s Saraband,â€ â€œThe Old Mole,â€ â€œScotch Capâ€ (5x version), and â€œConfesse.â€', 70, 75, '', '', 0, 1, 2, 9, '', 1, 1, 21, '2012-06-23 19:00:00'),
(112, 'Branles, Revisited', 'Take a second, alternative look at some of Arbeau''s branles.', 88, 75, '', '', 0, 1, 2, 9, '', 1, 1, 11, '2012-06-24 13:00:00'),
(113, 'Cascarde â€œChiara Stellaâ€', 'â€œChiara Stellaâ€ is a fun and lively cascarde from Fabritio Carosoâ€™s Il Ballarino. Students should be familiar with basic 16th century footwork. The class will cover the steps needed for the dance as well as the dance itself. The goal is to learn the dance in its entirety and practice it as many times as the class period allows to help students commit the dance to memory.', 92, 75, '', '', 0, 1, 2, 9, '', 1, 1, 12, '2012-06-24 13:00:00'),
(114, 'Two-Couple English Country Dances ', 'Learn three advanced two-couple country dances: â€œGlory of the West,â€ â€œArgeers,â€ and â€œSt. Martinâ€™s.â€', 70, 75, '', '', 0, 1, 2, 9, '', 1, 1, 21, '2012-06-24 13:00:00'),
(115, 'Doppie Mutanze: Double Galliard Variations ', 'Come learn 6-8 fancy "finishing moves" to level up your galliard performance. Sourced from Compasso''s 1560 book, Ballo della Gagliarda. Recommended for dancers with significant galliard experience.', 30, 75, '', '', 0, 1, 2, 9, '', 1, 1, 11, '2012-06-24 14:30:00'),
(116, 'Easy 16th-c. Italian Dances', 'Learn two of the easiest dances from 16th-c. Italy, â€œContrapasso in Dueâ€ and â€œBallo del Fiore.â€', 16, 75, '', '', 0, 1, 2, 9, '', 1, 1, 12, '2012-06-24 14:30:00'),
(117, 'Intermediate 15th-c. Italian', 'Learn a few 15th-c. Italian dances that will take you beyond the basics.', 20, 75, '', '', 0, 1, 2, 9, '', 1, 1, 10, '2012-06-24 14:30:00'),
(118, '16th c. Italian', 'This class will feature 16th.-c. Italian dance.\r\n\r\n', 48, 75, '', '', 0, 1, 2, 9, '', 1, 1, 0, '2012-06-23 14:30:00'),
(119, 'How to Make Your Dance Master Love You: Learning How to Partner w/Dance Masters while Running a Pit', 'This session will focus on what are the needs of a ball (or dance class, or dance practice) from the dancer teacher''s\\master''s and what they would need to have help with from a musician and especially from one running a pit. We can also discuss how the musician may be needed to help understand how a reconstruction of a dance may wok depending on the setting of the music. This session will work best if many people come and share ideas.', 37, 75, '', '', 0, 1, 4, 9, '', 1, 1, 20, '2012-06-22 13:00:00'),
(120, 'Boost Your Sight-Reading Skills for Dance Music ', 'This class will be half hands on, half discussion. In the discussion we''ll talk about concrete things to work on to improve your sight reading. In the hands on portion we''ll practice renaissance syncopation, practice changing meter, and actually play some renaissance music. Bring your instrument of choice.', 31, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-22 13:00:00'),
(121, 'Introduction and/or Continuing Pipe and Tabor', 'The pipe and tabor is the one man band of the middle ages and renaissance. Playing a three holed pipe in one hand while playing a percussion instrument with the other allows one musician to provide both melody and rhythm for dancers. The three holed pipe was known in antiquity, had a surge of popularity in the renaissance, and again in the 19th and 20th century as part of the English folk revival. It has been in use as a folk instrument pretty much continuously throughout Western Europe. This class will cover some history and variations on the instrument, but will mostly be a playing demonstration and practicum. A small stock of instruments will be available for sale from the instructor. Depending on the skill and experience of the students, this class will either be a basic introduction, or a class for continuing students.', 23, 75, '', '', 0, 1, 4, 9, '', 1, 1, 20, '2012-06-22 14:30:00'),
(122, 'Ornamenting Dance Music ', 'In this class we''ll go over how to make your performance of dance melodies more interesting to listen to, less boring to play, and more period by adding ornaments. This is a hands on class. Bring your instrument of choice.', 82, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-22 14:30:00'),
(123, 'Playing and Dancing at the Same Time ', 'Ever seen musicians dance while playing? Would you like a relaxed atmosphere to give it a try? If so, this is the class for you! Bring your instrument of choice be it drum, recorder, cello, whatever.', 84, 75, '', '', 0, 1, 4, 9, '', 1, 1, 20, '2012-06-22 17:30:00'),
(124, 'Intermediate Recorder Technique ', 'The class begins with some practical exercises for different articulations, with a quick indication as to how they might be useful for an ensemble looking to improve its phrasing and musicality. The class ends with a discussion of dynamics, and some techniques for playing loudly and still keeping the instrument in tune. In the middle, we''ll discuss whatever techniques you''re finding challenging: high registers, sight-reading tricky rhythms, blending with other instruments, intonation, playing by ear, memorization, whatever you like.', 61, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-22 17:30:00'),
(125, 'Tambourine Practicum ', 'The tambourine is hugely flexible and interesting percussion instrument. This class will explore a little of its history, but most class time will be spent on playing technique and discovering the myriad of sounds available. Bring a tambourine with drumhead if possible. Rings of jingles without a drumhead will not be useful. Some loaner instruments of dubious quality will be available.', 23, 75, '', '', 0, 1, 4, 9, '', 1, 1, 20, '2012-06-22 19:00:00'),
(126, 'Arranging Polyphonic Dance Music from Lute Tablatu', 'Does your dancing master wish to experiment with a lesser-known Caroso or Negri dance? Or do you just want to try your hand at creating a new arrangement of an old favorite? This class will focus on interpreting lute tablature and constructing a basic period-style 3-or 4-part arrangement. Some familiarity with musical concepts such as chords and intervals is expected.', 24, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-22 19:00:00'),
(127, 'Playing for Dancing ', 'This hands-on class for musicians and dance band leaders includes an overview of historical performance practice as well as offer practical solutions to common problems we face when playing for dancing. Some things we may cover include pre-1600 instruments, instrumentation, percussion patterns, music sources and other accessible resources. Participants are encouraged to bring period instruments, both loud and soft and a music stand. Music will be provided.', 63, 75, '', '', 0, 1, 4, 9, '', 1, 1, 20, '2012-06-23 13:00:00'),
(128, 'Morley Consort ', 'The Morley consort was a uniquely English small ensemble consisting of flute or recorder, treble viol or violin, lute, cittern, bandora, and bass viol. We will recreate this ensemble as best we can with the instruments we have available and prepare several English tunes for the evening ball: a pavane and galliard by Morley, Queen''s Alman and Sellinger''s Round by William Byrd, and Gathering Peascods. All flutes and recorders, bowed and plucked strings are welcome to participate. ', 24, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-23 13:00:00'),
(129, 'Dance Music in Central Europe 1480-1680', 'Ever wondered what kind of dancing was done east of Italy? Find out in this class.', 85, 75, '', '', 0, 1, 4, 9, '', 1, 1, 20, '2012-06-23 14:30:00'),
(130, 'Bowed Strings ', 'Mistress Amelie will lead bowed string players in preparing several dances for the evening ball: the Earl of Salisbury Pavane and Galliard, Lord of Carnarvan''s Jigg, Torneo Amoroso, Ballo del Fiore. All bowed string players are welcome to participate.', 82, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-23 14:30:00'),
(131, 'Recorders', 'Master Christian will lead recorders in preparing several dances for the evening ball: a pavane and galliard, a courante, Grimstock, Bizzaria d''Amore, Chestnut and Bella Gioiosa. All recorder players are welcome to participate.', 61, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-23 17:30:00'),
(132, 'Dance Music in the Vocal Realm ', 'This class is an exploration of dance music that crossed over into the vocal realm, either by evolving from songs or by evolving into songs. In some cases, the same composer was responsible for both the vocal and the dance compositions.', 72, 75, '', '', 0, 1, 4, 9, '', 1, 1, 20, '2012-06-23 19:00:00'),
(133, 'Crumhorns', 'Master Robyn will lead crumhorns and other buzzies in preparing several dances for the evening ball: Pavane & Galliard Mille Ducas by Susato, a Courante by Praetorius (CXLII), and the cascarde Fedelta and Gracca Amorosa. All buzzies are welcome to participate and some loaner instruments may be available.', 83, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-23 19:00:00'),
(134, 'Modal Improvisation ', 'In this class we''ll practice improvising melodies in the different modes.', 82, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-24 13:00:00'),
(135, 'Music for Improvised 16th Century Dance ', 'We fill our dance balls with fancy choreographies, but much of Renaissance Italian dancing was improvised dances -- the salterello, the galliard, the corrante, the mysterious nizzardo -- much like more recent waltzes and polkas. Dancers were expected to combine variations on the fly. How is a musician, or a small ensemble, to deal with this sort of dancing? How can we be reliable, to provide a basis for the dancers'' creativity, and still elaborate and decorate the music, to provide inspiration, all the while mindful not to overshadow the dancers? This course is intended for musicians who are familiar with several types of dance music, and comfortable with modest ornamentation and decorated melodies.', 61, 75, '', '', 0, 1, 4, 9, '', 1, 1, 26, '2012-06-24 14:30:00'),
(136, 'Yoga for the Dancer', 'Clear your mind and stretch your body in this 1 hour class. Lady Adelheidis will lead you through a series of asanas which will help you clear your mind and invigorate your muscles before a practice or performance. Class will be adapted to the level of the students. A simple guided meditation will allow you to focus your 7 chakras. No mat is required, but a small towel for sitting is suggested.\r\n', 100, 60, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-24 13:00:00'),
(137, 'Sword & Floor Work for Bellydancers', 'Learn tantalizing new moves in this belly dance class that will really take some strength and agility! Although not considered ''period,'' many bellydancers in the SCA enjoy both floor work and sword work. Bring a sword, tray, cane, or a book to balance!\r\n', 100, 60, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-22 15:00:00'),
(138, 'Yoga for the Dancer', 'Clear your mind and stretch your body in this 1 hour class. Lady Adelheidis will lead you through a series of asanas which will help you clear your mind and invigorate your muscles before a practice or performance. Class will be adapted to the level of the students. A simple guided meditation will allow you to focus your 7 chakras. No mat is required, but a small towel for sitting is suggested.\r\n', 100, 60, '', '', 0, 1, 3, 9, '', 1, 1, 17, '2012-06-23 13:00:00'),
(139, 'Yoga for the Dancer', 'Clear your mind and stretch your body in this 1 hour class. Lady Adelheidis will lead you through a series of asanas which will help you clear your mind and invigorate your muscles before a practice or performance. Class will be adapted to the level of the students. A simple guided meditation will allow you to focus your 7 chakras. No mat is required, but a small towel for sitting is suggested.\r\n', 100, 60, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-22 13:00:00'),
(140, 'Introduction to Central Asian Music, Dance, and Po', 'Introduction to Central Asian Music, Dance, and Poetry \r\n', 96, 60, '', '', 0, 1, 3, 9, '', 1, 1, 24, '2012-06-22 17:00:00'),
(141, 'Raag and Taal: Music and Court Culture in Mughal Empire', 'Dr. Hans Utter and Jim Feist present an overview of the instrumental music of\r\n 16th and 17th century North India that flowered in the courts of the Mughal Empire.  This workshop will offer an introduction and performance-based tips to all musicians and dancers interested in learning about North Indian Classical Music. All levels from beginning to advanced are welcome. The hands- on approach will allow musicians and dancers to apply the traditions of India to their styles, and an understanding of cultural context of the era.', 96, 120, '', '', 0, 1, 3, 9, '', 1, 1, 24, '2012-06-23 13:00:00'),
(142, 'The Dance and Music of Bihu: Music, Gender and Sex', 'This workshop offers an introduction into the dance, rhythms, and songs of Bihu. \r\nBihu is the most important festival of North Eastern India, and is celebrated during the spring, autumn, and winter. Bihu is a group dance that dance celebrates fertility, sensuality, and connection with nature. Participants will learn about Bihuâ€™s history and legends, and will learn several Bihu songs and basic dance movements.\r\n', 96, 120, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-23 19:00:00'),
(143, 'Khyal and Dhrupad: Hindustani Vocal Music ', 'Dr. Hans Utter and Dr. Utpola Borah provide a glimpse into the North Indian\r\n (Hindustani) vocal music tradition through its two major genres, dhrupad and khyal. The workshop consists of two segmentsâ€”(1) An explanation of the music features of these vocal styles, and the life of a musician in medieval India, (2) An exploration into the religious and philosophical underpinnings of this music through nada yoga (sound yoga) and instruction in specific practices based on music.', 96, 120, '', '', 0, 1, 3, 9, '', 1, 1, 24, '2012-06-24 19:00:00'),
(144, 'Middle Eastern Percussion', 'Percussion\r\n', 95, 120, '', '', 0, 1, 3, 9, '', 1, 1, 24, '2012-06-23 17:00:00'),
(145, 'The Aesthetics of Music & Dance', 'The Aesthetics of Music & Dance\r\n', 95, 60, '', '', 0, 1, 3, 9, '', 1, 1, 24, '2012-06-22 15:00:00'),
(146, 'Social Status of Musicians & the Role of Women in ', 'Social Status of Musicians & the Role of Women in Medieval Islamic Courts\r\n', 95, 60, '', '', 0, 1, 3, 9, '', 1, 1, 24, '2012-06-23 15:00:00'),
(147, 'Medieval Arabic Music Theory and Paradigms', 'Medieval Arabic Music Theory and Paradigms\r\n', 95, 60, '', '', 0, 1, 3, 9, '', 1, 1, 24, '2012-06-24 15:00:00'),
(148, 'Dances of the Turkic Nomads', 'The shared cultural, historical, and linguistic roots of the Turkic peoples can also be found in their dances. Learn the common dance elements, movements, steps, and gestures of these groups that later found their way into classical dances in a stylized form.\r\n', 94, 120, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-22 19:00:00'),
(149, 'Persian Classical Dance', 'Persian Classical dance used the body in a way that is quite distinct from Arabic \r\ndance and has more in common with the dance of the Caucasus and Central Asia.  Learn the system of classical positions, basic traveling steps, delicate gestures, as well as spins and turns.\r\n', 94, 120, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-23 14:00:00'),
(150, 'Persian Folklore Dance', 'Persias diverse ethnic populations and various regional styles manifest in a wide \r\nrange of folk dances. Learn elements from some of the most beloved dances and how they differ from other styles.\r\n', 94, 120, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-23 17:00:00'),
(151, 'Uzbek Dance - Ferghana style ', 'Of the three major styles of Uzbek dance, the Ferghana genre is the most lyrical.  Ferghana dance is characterized by intricate wrist circles and undulations of the hands and arms with pliant use of the spine and a shy, yet playful, demeanor.  Experience the graceful lyricism of the Ferghana style of Uzbek dance with its delicate gestures and sweet expressiveness.\r\n', 94, 120, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-24 14:00:00'),
(152, 'Bhangra Breakdown!', 'Bhangra is a fun energetic dance from the Panjabi region of India.  We will go over a little bit of the history, some basic movements and put together a few steps for a basic choreography.  Please note that this is a very active style of dance so bring water and be prepared to dance!\r\n', 102, 60, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-22 14:00:00'),
(153, 'Intro to Bharata Natyam', 'Bharata Natyam is an ancient form of dance from the Tamil Nadu region of India.  This class will expose you to the history and style of the dance with a brief lecture of history and time devoted to steps and gestures of the dance.  Please note that this is an active style of dance so bring water and be prepared to dance!\r\n', 102, 60, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-22 18:00:00'),
(154, 'Bharata Natyam Choreography', 'Bharata Natyam is an ancient form of dance from the Tamil Nadu region of India.  Building on the intro class, we will be learning a basic choreography that will involve all the components including adavus and hasthas.  Please note that this is an active style of dance so bring water and be prepared to dance!\r\n', 102, 60, '', '', 0, 1, 3, 9, '', 1, 1, 8, '2012-06-23 13:00:00'),
(155, 'Dance Sculpture in Shiva Temples', 'This class will focus on the importance of dance sculptures in Shiva temples from the Tamil Nadu region of India.  We will discuss several Shiva temples from the Chola and Pallava periods and the dance related sculptures they possess.  Focus will be placed on the karana sculptures and how they relate to the Natya Sastra, Indiaâ€™s first collected work of performance guidelines.\r\n', 102, 60, '', '', 0, 1, 3, 9, '', 1, 1, 8, '2012-06-24 15:00:00'),
(156, 'Teacher''s Toolkit', 'As teachers, we can NEVER stop learning!  The more ways a teacher has to \r\ndescribe the same movement, the more people you''ll be able to reach.  Learn physical cues your students'' bodies give you as to what they''re thinking, and how their thoughts effect their movements.  Explore various terms that are useful in describing dance movements through direction & weight distribution, and planes of movement.  Also discussion on the fine line between kind critique and cruel criticism - how to encourage your students while being honest with them, too.', 29, 90, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-24 19:00:00'),
(157, 'Beginning Bellydance', 'In this class, Jezebel will teach 10 basic movements and then use those movements in a little choreography that will be taught at the end of the class.  Great class for beginners, people who want to review basics, or people who want to learn a fun one minute choreograhy.\r\n', 101, 60, '', '', 0, 1, 3, 9, '', 1, 1, 8, '2012-06-23 17:00:00'),
(158, 'Intermediate/Advanced Rom/Gypsy Choreography', 'Bring your inner-diva to this class!!  Jezebel will teach a choregraphy inspired by her studies of various gypsy and Rom styles of dance.  Some knowledge of bellydance would be helpful.\r\n', 101, 60, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-24 15:00:00'),
(159, 'Port Said â€” A Fisherman''s Dance from Egypt', 'A Fisherman throws his net into the river Nile, only to pull up a mermaid. Learn some of the movements of this Folkloric dance of Egypt. \r\n', 81, 90, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-23 17:00:00'),
(160, 'Tahtiib - Men''s Stick Dance from Egypt', 'Wanna swing stick? Join Valizan to learn this martial folkloric dance from Egypt full of masculine pride and attitude while bashing your friends to music. Women are welcome! Participants will need a broom handle or stick that reaches to the middle of your chest.\r\n', 81, 120, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-24 17:00:00'),
(161, 'Single & Double Veil', 'Single & Double Veil\r\n', 97, 120, '', '', 0, 1, 3, 9, '', 1, 1, 9, '2012-06-22 17:00:00'),
(162, 'Zill, Baby, Zill!', 'Zill, Baby, Zill!\r\n', 97, 60, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-23 13:00:00'),
(163, 'Jazzy Jewels', 'Learn the elegant `Jewel step` and variations.\r\n', 97, 120, '', '', 0, 1, 3, 9, '', 1, 1, 8, '2012-06-23 19:00:00'),
(164, 'Layering Without Panicking!', 'Layering Without Panicking!\r\n', 97, 120, '', '', 0, 1, 3, 9, '', 1, 1, 0, '2012-06-24 17:00:00'),
(165, '16th Century Persian Dance ', ' This class explores the evidence; visual, literary and musical for re-creating 16th Century Persian Dance, focusing on courtly dance for men and women. We will explore the language of gesture in Persian art, the influence of neighboring cultures and how costume gives us clues to movement. Armed with what we know, we can fill in the gaps with informed guesswork and create a plausible re-creation of a lost art form! \r\n', 98, 60, '', '', 0, 1, 3, 9, '', 1, 1, 8, '2012-06-24 17:00:00'),
(166, 'Approaching Dance Documentation and Presentation ', 'Learn how to find documentation, and prepare for Arts &Sciences classes & \r\ncompetitions.\r\n', 10, 60, '', '', 0, 1, 3, 9, '', 1, 1, 8, '2012-06-22 17:00:00'),
(167, 'Introduction to Kalaripayattu', 'Kalaripayattu is a martial art with its roots in ancicent India.  It is often described as â€œthe mother of all martial artsâ€ and is commonly believed to have traveled to the Far East, along with Buddhism, to have inspired the Chinese and other arts.  It uses the understanding of the body perpetuated through yoga and Ayurvedic medicine to build a martial system that encourages flexibility, balance, core strength and fortitude.  The evolution of the detailed movements of this style is largely unknown, as few written records exist.  However, details of warriors and kings training yields descriptions which correlate to the modern day practice of this art.\r\n', 10, 90, '', '', 0, 1, 3, 9, '', 1, 1, 8, '2012-06-22 19:00:00'),
(168, 'Classical Indian Dance â€“ The Next Step', 'OK, so youâ€™ve been inspired by a Bharata Natyam or other Indian classical dance.  You diligently practiced for some time, and now youâ€™re ready for more.  But what?In a traditional Indian class, the teacher molds the student in the form of the school.  The student is not a carbon copy, but a living example of a unique person exhibiting the hallmarks of the school and style in a way that is both personal and yet codified. If youâ€™ve had some experience with classical styles and youâ€™re looking for more â€“ this is the class for you.  The class assumes youâ€™ve done your fair share of basic footwork and worked to build your memory skills for some of the complicated formats required by these dance forms.  Now itâ€™s time to start perfecting the image! \r\n', 10, 120, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-24 17:00:00'),
(169, 'Kalari Drills', 'Kalari Drills\r\n', 10, 60, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-24 14:00:00'),
(170, 'Introduction to Carnatic Dance Music', 'Carnatic music is the music system that dominates music and dance performance in Southern India.  Although music has an incredibly long lineage in Indian culture, the formation of the firm foundation of modern day Carnatic music is credited to the sage Purandaradasa, who composed and performed in the 16th century in Vijayanagara India.  He is credited with the formal system of basic practice exercises as well as a wide variety of hymns in the bhakti style. This class will cover both tala (rhythm) and raga (melody), with an emphasis on the interests of the students.  Weâ€™ll focus on understanding the basic structure of Carnatic music from the perspective of musical appreciation, the bare bones of starting to study for performance, and with an understanding of how to use Carnatic music in a dance context.  The focus will build particularly on the varieties of Carnatic music which are most useful in a dance context. \r\n', 10, 60, '', '', 0, 1, 3, 9, '', 1, 1, 17, '2012-06-23 17:00:00'),
(171, 'Variations in Bharata Natyam', 'India is fortunate to have several dance manuals from the medieval era.  The Natya Shastra is the most famous but translations of the Abhinaya Darpana, Nrityavindos and others can be found in English.  These treatises are written for study by both dancers and connoisseurs of dance with copious lists of movements and bodily positions, as well as recommendations and guidance for assessing quality performance.  Get ready to try unusual moves, hear fascinating information about the culture of dance in medieval India, and to get a bit more familiarity into the fun of digging into treatises on medieval dance!\r\n', 10, 60, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-23 15:00:00'),
(172, 'Bellydancer''s Survival Guide', 'Have you learned the basic moves but have no idea how to put them together and dance around a fire?  Are you intimidated by haflas?  This class will cover basic move variations, easy combinations and good fire and hafla dance etiquette, plus safety tips.  Part dance, part information session and Q&A.\r\n', 99, 90, '', '', 0, 1, 3, 9, '', 1, 1, 18, '2012-06-23 18:30:00'),
(173, 'Natural Adornment: Henna traditions from Africa to', 'Professional Henna Artist, Zattana Al-Naseem, will provide a brief history of the \r\nancient art of henna/mehndi and its impact on cultures spanning across the continents of Africa and Asia. The importance of henna in social rituals, specifically its symbolism and function, wil be discussed. Students will learn to identify common motifs in the design elements across cultures. In the last half-hour of the workshop, Zattana will provide henna for students to practice drawing the motifs they have learned to identify.', 103, 90, '', '', 0, 1, 3, 9, '', 1, 1, 25, '2012-06-23 20:00:00'),
(174, 'English Country Dance for Two Couples', '(All Skill Levels Invited) Messer Giuseppe from Trimaris conducts a class on English Country Dance for sets of two couples. Dances range from simple to fairly complex.\r\n', 104, 60, '', '', 0, 1, 2, 1, '', 1, 1, 29, '1997-01-31 15:00:00'),
(175, 'Basic 15c. Italian Balli', '(All skill levels invited.) This class will teach you the basic steps and dances that make up 15c Italian Dance.\r\n', 104, 90, '', '', 0, 1, 2, 1, '', 1, 1, 30, '1997-02-01 15:30:00'),
(176, 'Focus on Bransles', 'All Skill Levels Invited) Respected researcher and teacher Mistress Signy reopens the book on bransles, and her fresh research yields surprises in many SCA standards.\r\n', 105, 60, '', '', 0, 1, 2, 1, '', 1, 1, 29, '1997-01-31 16:00:00'),
(177, 'European Peasant Dances', '(All Skill Levels Invited) This is a sampler of some of the oldest surviving styles of dance in Europe. Many of these features indicating Medieval or Renaissance origins, some much older, possibly even predating Christianity''s advent.', 106, 60, '', '', 0, 1, 2, 1, '', 1, 1, 29, '1997-01-31 18:00:00'),
(178, 'A Dance Master''s Guide, Or How to be a Good Dance Master/Mistress Without Becoming a Nazi or a F', 'This is an applied dance teaching and theory class. A must for would-be or current dance instructors.\r\n', 106, 60, '', '', 0, 1, 2, 1, '', 1, 1, 32, '1997-02-01 18:00:00'),
(179, 'Pre-Baroque French Peasant Dances', '(Intermediate to Advanced level please.) When Catherine de Medici was queen of France, she was fond of dancing, and especially enjoyed productions of peasant dances. This class focuses on dances such as might have been seen by Catherine in her court.\r\n', 106, 90, '', '', 0, 1, 2, 1, '', 1, 3, 29, '1997-02-01 19:30:00'),
(180, 'A Choreography Workshop', 'Sion Andreas o Wynedd, Rosina del Bosco Chiaro, and Giuseppe Francesco da Borgia. (Intermediate Level please) This trio of Dance Laurels will conduct this special 2 1/2 hour workshop that will combine information on How to Choreograph along with examples of each of their works. Attendees are welcome to bring their own works for performance/critique.\r\n', 3, 150, '', '', 0, 1, 2, 1, '', 1, 3, 29, '1997-01-31 19:00:00'),
(181, 'Congratulations, You Already Know 16c. Italian Dances, No Really!', '(All skill Levels including Beginners invited) This class introduces you to the most basic Italian steps and figures, and prepares you for more advanced classes during the day.\r\n', 3, 60, '', '', 0, 1, 2, 1, '', 1, 2, 30, '1997-02-01 13:00:00'),
(182, 'Some Dirt Simple 16c. Italian Dances ', '(Intermediate skill or Sion''s earlier class) This class builds on the skills learned during \\"Congratulations, You Already Know 16c Italian Dances, No Really!\\"', 3, 90, '', '', 0, 1, 2, 1, '', 1, 3, 30, '1997-02-01 14:00:00'),
(183, 'Introduction to Cascarda ', '(Intermediate level or prior 16c. Italian classes please.) This class will introduce the choreographic theory behind Caroso''s construction of a cascarda with examples.\r\n', 3, 60, '', '', 0, 1, 2, 1, '', 1, 3, 30, '1997-02-01 18:00:00');
INSERT INTO `class` (`id`, `name`, `description`, `user_id`, `hours`, `limit`, `fee`, `topic_id`, `era_id`, `type_id`, `kwds_id`, `url`, `aerobic_id`, `difficulty_id`, `room_id`, `day`) VALUES
(184, 'Ann''s Courante ', '(Intermediate to advanced skill level please) Mistress Katrina teaches this popular SCA Choreographed Dance which features steps in the period popular form known as the Courante.\r\n', 107, 60, '', '', 0, 1, 2, 1, '', 1, 3, 29, '1997-02-01 13:00:00'),
(185, 'Dances from Arbeau ', '(All skill Levels invited). Katrina explores the many types of dances that are featured in Orchesography, such as Pavans, Allemandes, and Bransles.', 107, 90, '', '', 0, 1, 2, 1, '', 1, 1, 29, '1997-02-01 15:30:00'),
(186, 'Starting a Dance Guild ', 'This class discusses how to start an active dance guild in your local group or even kingdom. Mistress Katrina was a founder of the Iron Mountain Dance Guild and a charter member of Saltare (the Meridies Kingdom Dance Guild, which is sponsoring this event).\r\n', 107, 60, '', '', 0, 1, 2, 1, '', 1, 1, 32, '1997-02-01 21:00:00'),
(187, 'Survey of European Dance Sources', 'An overview of the history of European Dance based on primary sources. Very informative for those researching.', 108, 60, '', '', 0, 1, 2, 1, '', 1, 1, 32, '1997-02-01 13:00:00'),
(188, 'Dances from the Inn''s of Court Manuscript ', '(Intermediate level or Dances from Arbeau Class please) This class features pavans and almans from the Solemn Revells.\r\n', 108, 60, '', '', 0, 1, 2, 1, '', 1, 3, 31, '1997-02-01 19:00:00'),
(189, 'Beginning English Country Dance ', '(All skill levels invited). Master Giles takes you through the basics of English Country Dance. A great beginning to taking the other ECD classes offered during the symposium.\r\n', 109, 90, '', '', 0, 1, 2, 1, '', 1, 1, 29, '1997-02-01 14:00:00'),
(190, 'Intermediate English Country Dance ', '(Intermediate level or Beginning English Country Dance please.) Giles continues his English Country Dance teaching with more complex and fun dances.', 109, 90, '', '', 0, 1, 2, 1, '', 1, 3, 29, '1997-02-01 18:00:00'),
(191, 'Advanced English Country Dance', '(Advanced level or Beginner''s and Intermediate English Country Dance classes, please.) Master Giles finishes the day with these complex but fun English Country Dances.\r\n', 109, 60, '', '', 0, 1, 2, 1, '', 1, 4, 29, '1997-02-01 21:00:00'),
(192, 'Burgundian Basse Dance ', '(Intermediate skill level please) This class features 15th century dances from the Brussels and Toulouze manuscripts. Come learn this important dance form.\r\n', 75, 90, '', '', 0, 1, 2, 1, '', 1, 3, 31, '1997-02-01 14:00:00'),
(193, 'A Reconstruction Workshop', '(All skill levels invited) This beginning to intermediate level workshop will offer a hands on chance to reconstruct a dance from period sources.\r\n', 110, 90, '', '', 0, 1, 2, 1, '', 1, 1, 31, '1997-02-01 15:30:00'),
(194, 'Italian 15c. Style ', 'The class begins with a teaching of the steps and style in which they should be danced and progresses forward, so that dancers of all skill levels are welcome to attend. This class goes beyond just steps and patterns to cover the styles and manner of 15c Italian dance.\r\n', 111, 60, '', '', 0, 1, 2, 1, '', 1, 1, 30, '1997-02-01 19:00:00'),
(195, 'Caroso-style Ball', 'Dance in a ''bardic circle'' format, with formal manners and live music. All skill levels invited. The playlist includes period dances both easy and advanced, well known in the Society and taught at the Symposium. This is how Caroso expected a high society dance party to work, as opposed to what we usually do in the SCA.', 112, 120, '', '', 0, 1, 2, 1, '', 1, 1, 32, '1997-02-02 14:30:00'),
(196, 'Dance Musician Logistics', 'This class is a lecture on organizing and participating in ensembles that support Western European dance guilds and balls. Topics will include; starting ensembles, performance etiquette, coordination, equipment, finding players and orchestration. Instruments not required.\r\n', 113, 60, '', '', 0, 1, 4, 1, '', 1, 1, 33, '1997-01-31 15:00:00'),
(197, 'Period Ornamentation and Improvisation', 'This class will teach fundamentals of ornamenting melody lines. Ornamentation is a method that period musicians used in order to enhance a melody line of a dance tune in order to make the music more interesting. This class will also teach musicians how to create early period melodies the way that mediaeval musicians did using modal scales. Many documented dances are written down improvisations played around a simple bass line. Students will be required to play their instruments or sing. Reading standard notation is required. Students will be required to play their instruments or sing. Reading standard notation is required.\r\n', 113, 60, '', '', 0, 1, 4, 1, '', 1, 1, 33, '1997-02-01 15:00:00'),
(198, 'Period Percussion Rhythms', 'This class will teach western European musicians the basic percussion patterns for court and country dance music. Bring a percussion instrument (tambourine, dumbek, tabor, boudran). Reading standard notation is required.\r\n', 113, 60, '', '', 0, 1, 4, 1, '', 1, 1, 33, '1997-02-01 16:00:00'),
(199, 'Early Medieval Dance Music for Musicians', 'This class provides an overview of the earliest known European dance music -- estampie, istanpita, ductia, nota, &c. The class discusses the forms, arrangement techniques, and performance practice, and includes speculation about dance steps. An ability to read music is helpful but not strictly required.\r\n', 114, 60, '', '', 0, 1, 4, 1, '', 1, 1, 33, '1997-01-31 16:00:00'),
(200, 'Advanced English Country Dance', 'Two of the more challenging country dances from Playford''s English Dancing Master, first edition: Parson''s Farewell and Whirligig.', 115, 90, '', '', 0, 1, 2, 2, '', 1, 4, 34, '1999-05-21 19:30:00'),
(201, 'Arbeau''s Bransles ', 'This class will cover a variety of bransles from Arbeau''s Orchesographie. SCA variants of the dances and reconstruction issues will also be discussed. ', 115, 90, '', '', 0, 1, 2, 2, '', 1, 2, 34, '1999-05-22 14:30:00'),
(202, 'Il Canario ', 'Thoinot Arbeau called the Canary "strange and fantastic with a strong barbaric flavour." It was one of the more popular dances in the late 16th Century. This class will teach the version recorded by the ever flashy Cesare Negri.', 48, 180, '', '', 0, 1, 2, 2, '', 1, 4, 37, '1999-05-22 13:00:00'),
(203, 'Dances from Il Papa ', 'This class will cover several dances from the Il Papa Ms. There will also be a brief introduction to the manuscript and some discussion of why we made the choices we did for these reconstructions.', 75, 90, '', '', 0, 1, 2, 2, '', 1, 3, 38, '1999-05-21 19:30:00'),
(204, 'English Country Dance: Three Couple Sets ', 'Three couple sets became immensely popular in the 18th Century, but the 17th Century had its own three couple set. This class will teach Mayden Lane, The Black Nag, Upon a Summer''s Day and Grimstock.', 116, 90, '', '', 0, 1, 2, 2, '', 1, 3, 34, '1999-05-22 20:00:00'),
(205, '15th Century Italian Dance: Introductory Social Repertoire ', 'Yes, they had fun in period. Mistress Rosina will take her class through the fast and furious, the sensual and seductive, and the inevitable figure dances that were popular in the Italian courts (what better way to court Italians?) ', 111, 90, '', '', 0, 1, 2, 2, '', 1, 2, 34, '1999-05-22 13:00:00'),
(206, '15th Century Italian Dance: So, You Think You''re Ready For a Challenge, Eh? ', 'Now you have the social dances down, it''s time to move on to the really impressive dances. Mistress Rosina keeps wandering around mutter something about "Tesara", but we''re not quite sure what this class will cover yet.', 111, 90, '', '', 0, 1, 2, 2, '', 1, 3, 37, '1999-05-22 17:00:00'),
(207, '15th Century Italian Dances: Another Tradition 15th Century Italian Dances: Another Tradition ', 'Three 15th Century Italian dances (Lauro, Reale and Leoncello Vecchio), based on reconstructions done by Dr. Ingrid Brainard. These steps look somewhat different from those spreading through the Society in recent years. ', 112, 90, '', '', 0, 1, 2, 2, '', 1, 2, 37, '1999-05-22 20:00:00'),
(209, 'An Introduction to the Galliard ', 'The Galliard is an athletic 16th Century dance form, quite easy to learn. This class will cover the most basic Galliad steps, and the instructor will demonstrate exotic stuff such as tassel-kicks and LaVolta.', 117, 90, '', '', 0, 1, 2, 2, '', 1, 2, 37, '1999-05-23 13:00:00'),
(210, 'Kick the Tassel ', 'Do you think of gravity as "just some silly rule others need to follow"? Do you think that practicing point control with your hands is much too easy? Come learn how the Italians dealt with such problems. ', 89, 90, '', '', 0, 1, 2, 2, '', 1, 3, 37, '1999-05-23 14:30:00'),
(211, 'Laura Gentile ', 'This charming dance for one couple is unique among Negri''s dances because there are no identifiable gagliarda step-units in the gagliarda section.', 118, 90, '', '', 0, 1, 2, 2, '', 1, 3, 34, '1999-05-21 21:00:00'),
(212, 'Leggiadra Marina ', 'A complex dance for two people from Cesare Negri''s Le Gratie d''Amore. The dance, with interesting floor patterns, is a suite that changes tempo several times. A satisfying challenge for mind and feet. ', 118, 90, '', '', 0, 1, 2, 2, '', 1, 3, 37, '1999-05-22 18:30:00'),
(213, 'Negri''s Squares for Four ', 'This class will teach three of Negri''s verse/chorus dances with no tempo changes: Bizzaria d''Amore, Lo Spangoletto, Il Villanicco.', 20, 90, '', '', 0, 1, 2, 2, '', 1, 3, 38, '1999-05-22 13:00:00'),
(214, 'No Longer in the Repertoire Dances ', 'Yes, we were dancing twenty years ago and thought we were really hot stuff. But many of the dances of the early 80''s Midrealm repertoire have fallen away and been forgotten--until this morning. Rashid, this one''s for you.', 3, 90, '', '', 0, 1, 2, 2, '', 1, 3, 38, '1999-05-23 14:30:00'),
(215, 'The Old Measures: Dances from the Inns of Court, London, 1570-1675 ', 'This class will focus on the Old Measures, a standard curriculum of dances taught to and performed by members of the upper middle class in Elizabethan England. ', 49, 180, '', '', 0, 1, 2, 2, '', 1, 2, 34, '1999-05-22 17:00:00'),
(216, 'The Volta', 'The Volta is a 16th-century dance, considered by some a bit scandalous since the gentlman in each couple must draw his partner close in order to assist her to leap high in the air. Very energetic, requires jumping.', 112, 90, '', '', 0, 1, 2, 2, '', 1, 3, 38, '1999-05-21 21:00:00'),
(217, 'Japanese Court Dance ', 'There are other courtly traditions of dance in the world which often parallel Western European court dance, but which have different historical backgrounds. Japanese court dance is one of these. If you are interested in things Japanese, you will find something of interest in this style of dancing. ', 119, 90, '', '', 0, 1, 5, 2, '', 1, 3, 38, '1999-05-22 20:00:00'),
(218, 'Morris Dancing ', 'Explore the world of Morris dancing. After a brief orientation to what Morris is, Phelan will discuss its evolution during the SCA period and from what roots it might have sprung. If there is sufficient interest, Phelan will arrange for additional time to teach a traditional Morris dance.', 120, 90, '', '', 0, 1, 5, 2, '', 1, 2, 37, '1999-05-21 21:00:00'),
(219, 'Peasant Dances ', 'What do the Simple Folk do? This class will examine and learn dances from several folk traditions in Europe and consider the question of the place of folk dance in the SCA.', 106, 90, '', '', 0, 1, 5, 2, '', 1, 2, 38, '1999-05-22 14:30:00'),
(220, 'Rennaissance German Dances ', 'Three dances from Germany/Hungary: Familia Waltzer, Rheinlandler/Bayerischer, and Hunnrischer Marsche.', 121, 90, '', '', 0, 1, 5, 2, '', 1, 3, 38, '1999-05-22 18:30:00'),
(221, 'Vikings DO TOO Dance! ', 'Original research done by Countess Brynhildr Kormaksdottir, O.L. and Baroness TSivia bas Tamara v''Amberview, O.L., debunks the old saw about the Norse not dancing. Participants learn line, ring, and processional dancing, along with some documentation of the forms and music used.', 122, 90, '', '', 0, 1, 5, 2, '', 1, 2, 38, '1999-05-22 17:00:00'),
(222, 'Mannerism in Sixteenth Century Court Dance ', 'Court dancing of the late 16th century incorporate many of the standard aesthetic principles of the period. These principles become most apparent in the choreography, patterns and footwork of the dances. An understanding of these principles can offer us useful tools for reconstructing and performing the dances.', 123, 90, '', '', 0, 1, 2, 2, '', 1, 1, 39, '1999-05-22 17:00:00'),
(223, 'Mistress Lizbeth Holds Forth ', 'Since she''s on this side of the Rockies for a change, take advantage of the situation. Mistress Lizbeth stands ready to discuss whatever aspect of dance you want to talk about.', 118, 180, '', '', 0, 1, 2, 2, '', 2, 1, 39, '1999-05-23 13:00:00'),
(224, 'Reconstructing from Il Ballarino ', 'Caroso''s 1580 dance manual, Il Ballarino, is a rich source of 16th Century Italian dances, many of which have not been reconstructed. Reconstructing many dances is not hard, and we will prove it by starting with the Italian and English translation of a dance and reconstructing it.', 117, 90, '', '', 0, 1, 2, 2, '', 2, 1, 39, '1999-05-22 18:30:00'),
(225, 'Round Table Discussion of the Gresley MS', 'In 1995 a manuscript source was discovered which sheds light on a previously unknown genre of perid dance. It is the Gresley Dance and includes 91 dance titles, 26 detailed choreographies and 13 dance melodies. This round table discussion is a chance for anyone who is interested in the manuscript to come together and discuss what we have learned through examining it.', 49, 90, '', '', 0, 1, 2, 2, '', 2, 1, 39, '1999-05-22 14:30:00'),
(226, 'Running a Ball Round Table ', 'What works and what doesn''t and why for SCA balls, especially a non-Caroso one. ', 115, 90, '', '', 0, 1, 2, 2, '', 2, 1, 39, '1999-05-21 21:00:00'),
(227, 'Teaching Techniques for Dancemasters ', 'Ideas for teaching dance more effectively in the Society. If you would like to introduce harder dances to your group, displace out-of-period dances with reconstructions, or increase attendance at your dance practice, I have suggestions.', 112, 90, '', '', 0, 1, 2, 2, '', 2, 1, 39, '1999-05-22 13:00:00'),
(228, 'What Do We Know about Medieval Dance?', 'In the absence of choreographies, what can be said about medieval, not renaissance, dance? My take on what can be gleaned from literature, iconography, etc.', 20, 90, '', '', 0, 1, 2, 2, '', 2, 1, 39, '1999-05-22 20:00:00'),
(229, 'Beginning/Intermediate Middle Eastern Dance', 'A class in basic movement, isolation of movement and steps, done to a variety of music. If time allows, a short dance will also be taught.', 4, 180, '', '', 0, 1, 3, 2, '', 1, 2, 35, '1999-05-21 19:30:00'),
(230, 'Beginning/Intermediate Middle Eastern Drumming Beginning/Intermediate Middle Eastern Drumming ', 'Learning the rhythms and playing as a group.', 124, 180, '', '', 0, 1, 3, 2, '', 1, 2, 36, '1999-05-22 13:00:00'),
(231, 'Beginning Middle Eastern Dance ', 'This is a basic movement and step class and will concentrate on isolating the movements and the doing combinations.', 125, 60, '', '', 0, 1, 3, 2, '', 1, 2, 35, '1999-05-22 14:00:00'),
(232, 'Beginning Veil ', 'The veil adds a lovely, sensual element to the dance. Different moves will be taught and demonstrated. Beginning dancers welcome. Bring a veil, if you have one--some will be available for use in class.', 125, 60, '', '', 0, 1, 3, 2, '', 1, 2, 35, '1999-05-22 17:00:00'),
(233, 'Guedra Trance Dance ', 'This dance was done by women of the Tuareg in Northern Aftica. It is a ritualistic dance whose purpose is to achieve a trance-like state by means of repetitive moves and controlled breathing. (Er, we could really use drummers, chanters and dancers--men are welcome to drum and chant.)', 125, 90, '', '', 0, 1, 3, 2, '', 1, 1, 36, '1999-05-22 20:00:00'),
(234, 'Sampling of Folkloric Line Dances ', 'Anyone who has ever danced a bransle has danced a Middle Eastern line dance. Come and learn several different types. These are group dances done for family celebrations. No partners necessary. Both women and men welcome.', 125, 60, '', '', 0, 1, 3, 2, '', 1, 1, 35, '1999-05-22 19:00:00'),
(235, 'Further Middle Eastern Drum Techniques ', 'More rhythm and techniques. This class will be geared to the level of the musicians present.', 124, 180, '', '', 0, 1, 3, 2, '', 1, 1, 36, '1999-05-22 17:00:00'),
(236, 'Guedra Drum Class ', 'A class on playing the drum for the guedra trance dance.', 124, 90, '', '', 0, 1, 3, 2, '', 1, 1, 35, '1999-05-22 20:00:00'),
(237, 'Intermediate Middle Eastern Dance ', 'Intermediate Middle Eastern Dance ', 4, 60, '', '', 0, 1, 3, 2, '', 1, 1, 35, '1999-05-22 15:00:00'),
(238, 'Line Dance ', 'Teaches a short choreography. ', 4, 60, '', '', 0, 1, 3, 2, '', 1, 1, 35, '1999-05-22 13:00:00'),
(239, 'Zills', 'You know, zills.', 4, 60, '', '', 0, 1, 3, 2, '', 1, 1, 35, '1999-05-22 18:00:00'),
(240, 'Cascarde', 'Cascarda - a lively 16th Century Italian dance. Choreographer: Fabrito Caroso 1581. These are two of my favorite cascarde:\r\n\r\nBella Gioiosa\r\nFor sets of 3 people. Includes a choreographed joust, which makes for a nice performance piece. (reconstruction by Etienne de Clermont).\r\n\r\nDonna Leggiadra\r\nFor 1 or more couples. Very fun and easy to learn if you''re familiar with 16th Century steps. (reconstruction by Diana Cruickshank, tweaked a bit by Kieran Grey).', 55, 90, '', '', 0, 1, 2, 3, '', 1, 1, 45, '2001-06-10 20:00:00'),
(241, 'Beginning Middle-Eastern Dance', 'This is a class on the basic movements and techniques of Middle Eastern Dance. Perfect for the first-time dancer or for the experienced dancer who wants a core refresher course. The class will provide an introduction to the basic steps used in performing Middle Eastern dance in the SCA.\r\n', 126, 90, '', '', 0, 1, 3, 3, '', 1, 2, 41, '2001-06-09 13:30:00'),
(242, 'Beginning Choreography/Fast Hipwork', 'Where to begin when choreographing a dance with fast hipwork? This class will introduce intermediate beginners to some elements of the process, including uncovering the musical structure and choosing appropriate steps to clarify that structure. Phrasing, repetition of elements, and some useful basic fast hipwork steps will be covered.\r\n', 127, 90, '', '', 0, 1, 3, 3, '', 1, 3, 42, '2001-06-09 15:15:00'),
(243, 'Loud Band Session', 'Early reeds and brass players are welcome to come and run through some dance music set for loud band instruments. c/f and d/g shawms are welcome. Music in both keys will be provided.\r\n', 113, 90, '', '', 0, 1, 4, 3, '', 1, 3, 40, '2001-06-10 20:00:00'),
(244, 'Medieval Dance Music', 'lecture/participating playing\r\n', 113, 90, '', '', 0, 1, 4, 3, '', 1, 1, 40, '2001-06-10 15:15:00'),
(245, 'Beginning Middle-Eastern Dance', 'This is a class on the basic movements and techniques of Middle Eastern Dance. Perfect for the first-time dancer or for the experienced dancer who wants a core refresher course. The class will provide an introduction to the basic steps used in performing Middle Eastern dance in the SCA.\r\n', 128, 90, '', '', 0, 1, 3, 3, '', 1, 2, 41, '2001-06-10 15:15:00'),
(246, 'Storytelling for Choreography', 'This will be a workshop on the use of storytelling in choreography, to help with the development of routines, to enhance stage presence, and to make the dance more accessible to non-dancers. This class is open to dancers of any level, from the newest beginners to advanced students - a sense of humor and a flair for the dramatic are all you really need for this class.\r\n', 128, 90, '', '', 0, 1, 3, 3, '', 1, 1, 42, '2001-06-09 20:00:00'),
(247, 'Improvisation for Galliards', 'Techniques for dancing the Galliard with various steps, step combinations, and ornamentation.\r\n', 129, 90, '', '', 0, 1, 2, 3, '', 1, 3, 45, '2001-06-09 20:00:00'),
(248, 'Renaissance Style Workshop for Men', 'Renaissance Style Workshop for Men\r\n', 129, 90, '', '', 0, 1, 2, 3, '', 1, 1, 45, '2001-06-09 18:15:00'),
(249, 'Reconstruction Roundtable', 'This class is primarily meant for people who reconstruct dances or are otherwise interested in reconstruction. During the class the participants explain (and possibly show) their own interperatations of a set of 2-4 dances, and discuss the differences and reasons for them with other participants. The purpose of the class is to learn about other ways of thinking and to get food for thought - not necessarily achieve any kind of consensus. Short digressions to step reconstruction are expected and allowed.\r\n\r\nThe dances are: Horses'' Branle (Arbeau), Ballo del Fiore (The 5-person version in Caroso''s Nobilta di Dame), and Cupido (Bassadanza, several manuscipts by Ebreo/Ambrosio)\r\n\r\nThere is a short web page about some available resources for these dances.', 130, 90, '', '', 0, 1, 2, 3, '', 1, 4, 44, '2001-06-09 20:00:00'),
(250, 'Intermediate English Country Dance', 'Dances to be taught include BoateMan, Cuckholds All in Row, Grimstock, Dull Sir John and others. You must have the basics of English Country Dance and be able to do a three-person hay without prompting. Steps will not be taught. Handouts will be provided, some tapes may be available.\r\n', 131, 90, '', '', 0, 1, 2, 3, '', 1, 3, 44, '2001-06-10 20:00:00'),
(251, 'Arms and Upper Body Movements', 'Focusing on the use of the arms and upper body movements. A knowledge of basic movements is assumed. Be aware that this class will work the abs quite a bit. Please bring a veil. Zils will be discussed, but are not required.\r\n\r\nWhen dancing at SCA events, often much of the audience cannot see below the dancers waist. The focus is on making the performance more interesting to these people. Since the focus is on the waist up, most of this class can be done by wheelchair people with upper body mobility.', 132, 90, '', '', 0, 1, 3, 3, '', 1, 3, 42, '2001-06-10 15:15:00'),
(252, 'Uncommon 4-couple ECDs', 'Come learn some uncommonly done 4-couple English Country Dances from the first edition of Playford. I will teach Lull Me Beyond Thee, Fine Companion, Gray''s Inn Maske, and Lord Carnarvon''s Jegg. If time permits (and it should), I''ll also teach some less uncommon 4-couple dances like Nonesuch (you probably don''t do it like I do), Kettle Drum, If All the World Were Paper, Bonny Bonny Broome, and Faine I Would.\r\n', 62, 90, '', '', 0, 1, 2, 3, '', 1, 1, 43, '2001-06-11 13:30:00'),
(253, 'Uncommon 3-couple ECDs', 'Come learn some uncommonly done 3-couple English Country Dances from the first edition of Playford. I will teach Scotch Cap, The Night Peece, Shepheards Holyday, and Mundesse. I might also teach Beggar Boy, and any other dances I can come up with by June.\r\n', 62, 90, '', '', 0, 1, 2, 3, '', 1, 1, 44, '2001-06-10 18:15:00'),
(254, 'Uncommon 2-couple ECDs', 'Most people only know two, or maybe three, 2-couple ECDs. Let me show you a couple more. I''ll teach Parson''s Farewell, Glory of the West, Cuckolds All a Row, Saint Martins, and make an attempt at Argeers.\r\n', 62, 90, '', '', 0, 1, 2, 3, '', 1, 1, 44, '2001-06-09 15:15:00'),
(255, 'An Evenings Entertainment a la Castiglione', 'Come join the most interesting court in the East as it retires to entertain itself after the ball on Saturday (tentative). Dancing, music, stories, games and jokes will be perpetrated long into the night. Come prepared to entertain the company in some way, probably more than once.\r\n', 89, 90, '', '', 0, 1, 2, 3, '', 1, 1, 0, '2001-06-08 23:00:00'),
(256, 'Exercises from Ebreo I', 'Ebreo gives a number of exercises for how one should become a better dancer. We will try what we can of these, and watch in amazement as our dancing improves!\r\n', 89, 90, '', '', 0, 1, 2, 3, '', 1, 3, 43, '2001-06-09 20:00:00'),
(257, 'Tassel Kicking', 'Negri describes a lot of ways to kick a tassel stylishly and accurately. Come learn what they all are, how to do some of them, and why you should never try others.\r\n', 89, 90, '', '', 0, 1, 2, 3, '', 1, 4, 42, '2001-06-11 18:15:00'),
(258, 'Sex on the dance floor and Prexonera', 'Unlike the later 16th C Il Canario, which included sex on the dance floor by clothed participants, Domenico''s Prexonera was a dance in which you were actually able to partially disrobe your partner during the foreplay section of the dance. Based on the famous BBC television series, Prexonera stars Patrick McGoohan, as well as Austin Powers and Ivana Humpalot who were accidentally drafted in from the next dance floor. It''s a lot of good clean British fun. OK, so maybe it''s dirty and Italian but it''s good fun anyway.\r\n', 48, 90, '', '', 0, 1, 2, 3, '', 1, 3, 45, '2001-06-10 18:15:00'),
(259, 'Introduction to 16th C Italian Dance', 'This class will focus on some of the simplest steps of 16th Century Italian dance, as described by Caroso and Negri. We will start by learinging a basic range of steps, such as riverenze, continenze, seguiti and spezzati. After learning some short dance sequences containing these steps the class will move on to a discussion of the more complex steps and a short dance for newcomers to 16th C Italian dance.  \r\n\r\nPop quiz: Which of the following is not a 16th C dance step: Seguito spezzato, Seguito semidoppio, Seguito battuto al Canario, Seguito boscaiola', 48, 90, '', '', 0, 1, 2, 3, '', 1, 2, 43, '2001-06-09 18:15:00'),
(260, 'Choreography in the SCA: Purpose, Place, Precepts and Precautions', 'There is a great deal of discussion involving the practice of making new period-style dances within the Society. Positions from ''We ought not to be doing it'' to ''One is not a master until one can make a period-style dance.'' The four panelists have decided opinions, probably all contradictory, regarding the practice and its place in the Society.\r\n', 48, 90, '', '', 0, 1, 2, 3, '', 1, 1, 46, '2001-06-10 15:15:00'),
(261, 'Some Gresley Reconstructions', 'I will present some of the reconstructions of Dances from the Gresley manuscript as they were worked out by Robyn Whystler who is primarily a musician with myself as dance consultant. They are mostly fairly easy dances which anyone can manage. We can follow with a discussion in the second half of the class.\r\n', 15, 90, '', '', 0, 1, 2, 3, '', 1, 1, 44, '2001-06-09 13:30:00'),
(262, 'Dancing with Feeling', 'Portraying emotion in Middle Eastern Dance.\r\n', 133, 90, '', '', 0, 1, 3, 3, '', 1, 3, 42, '2001-06-10 18:15:00'),
(263, 'All Those Wiggles Look the Same to Me', 'Open to both dancers and non-dancers. An entirely opinionated presentation which will attempt to give a non-dancer appreciation of what a middle eastern dancer is doing and if they are doing it well. Will involve demonstration of basic as well as complicated moves and possible disagreement as to what is and isn''t good.\r\n', 133, 90, '', '', 0, 1, 3, 3, '', 1, 1, 41, '2001-06-10 13:30:00'),
(264, 'Barriera', 'This is an intermediate dance from Caroso''s Nobilita di Dame. Students should be familiar with at least one other 16th c. Italian dance. The dance is for one couple, and includes several sections.\r\n', 134, 195, '', '', 0, 1, 2, 3, '', 1, 3, 42, '2001-06-11 13:30:00'),
(265, 'Rhythms and Improvisation', 'Feel uncomfortable at a drum circle? Never even tried one? Just want a little brushing up? Well, then this is a class for you. This class will focus on the rhythms commonly seen in SCA drum circles. It will cover the beats of the popular rhythms and go through a few sets of dance combinations that will serve you well when you think ''What next??'' This class assumes a comfort level with basic Middle Eastern dance steps.\r\n', 135, 90, '', '', 0, 1, 3, 3, '', 1, 3, 42, '2001-06-09 18:15:00'),
(266, 'The Old Measures', 'Basic social dances from the Age of Shakespeare, suitable for dancers at any skill level\r\n', 88, 90, '', '', 0, 1, 2, 3, '', 1, 1, 43, '2001-06-09 13:30:00'),
(267, 'Mimed Bransles from Orchesography', 'This class will cover 3 of Arbeau''s bransles with mimed sequences, and two others that I just happen to like: Pease, Washerwoman''s, Horses'', Montarde, and Official. Skill level required is minimal; if you can tell your left from your right and count to four you''ll be fine!\r\n', 136, 90, '', '', 0, 1, 2, 3, '', 1, 2, 42, '2001-06-12 15:15:00'),
(268, 'Nido d''Amore from Nobilta di Dame, 1600', 'The chief purpose of this class will be to communicate my treatment of style and Affect. We will look at short examples of 4 different dance types (Pavana/Allemana, Galliard, Saltarello, and Canario) in the dance Nido d''Amore from Nobilta di Dame, 1600.\r\n', 137, 195, '', '', 0, 1, 2, 3, '', 1, 4, 43, '2001-06-12 13:30:00'),
(269, 'Introduction to English Country Dance', 'Fun and easy dances for beginners, from ''The English Dancing Master'' by John Playford, 1651.\r\n', 110, 90, '', '', 0, 1, 2, 3, '', 1, 2, 0, '2001-06-08 23:00:00'),
(270, 'Galliard Steps', 'An opportunity to practice galliard steps on a decent floor. We''ll look at steps and step-sequences from Arbeau and Caroso, and possibly Negri, sticking mainly to steps with well-defined or apparently straightforward rhythms.\r\n', 138, 90, '', '', 0, 1, 2, 3, '', 1, 3, 43, '2001-06-12 18:15:00'),
(271, 'The Canarie Steps', 'A look at canarie steps as described by Arbeau, Caroso, and perhaps Negri, with examples from Italian repertory. Especially, we''ll look at how the step relates to the musical beat: Arbeau indicates a ''stamp'' on the downbeat; the Italians don''t specify. Using Arbeau''s approach (translated to compound meter) in Italian dances solves some problems of timing, transition, and so on.\r\n', 138, 90, '', '', 0, 1, 2, 3, '', 1, 3, 43, '2001-06-11 20:00:00'),
(272, 'Two Cascarde', 'This class will teach two Cascarde, a lively dance unique to the dance manuals of Fabritio Caroso. The first dance will be Gloria d''Amore, a dance for a single couple found in Il Ballarino. The second will be Allegrezza d''Amore, a dance for three people, which is found in both Il Ballarino and Nobilta di Dame. This class will teach the version found in Nobilta.\r\n', 139, 90, '', '', 0, 1, 2, 3, '', 1, 3, 43, '2001-06-11 15:15:00'),
(273, 'History, Theory and Practice of Classical Hindu Temple Dance', 'A combination of lecture and participation. The lecture will cover information regarding the pre-1600 history of Hindu temple dance, mythology regarding dance, status of dancers, and dance theory/aesthetics. The optional participatory section will discuss basic movements, one or two practice routines, and a small prayer-performance in song and dance. This is a great chance to try something totally new!\r\n', 10, 90, '', '', 0, 1, 3, 3, '', 1, 1, 42, '2001-06-10 20:00:00'),
(274, 'Evolution of Contrapasso', 'In Bailarino, Caroso describes the "Contrapasso" as "Balleto d''Incerto, da farsi in due" - in Nobilta di Dame, he clearly regards "Contrapasso da farsi in ruota" as being the same dance, only improved (and "his" rather than anonymous). We''ll dance through both of these easy 16th-c Italian dances and talk a little bit about the differences.', 112, 90, '', '', 0, 1, 2, 3, '', 1, 1, 45, '2001-06-09 15:15:00'),
(275, 'Raising Dance Authenticity Levels', 'Would you like to try to shift your group''s dance culture away from out-of-period dances? I have some ideas on things to try, and I hope that other participants will bring us some other ideas.\r\n', 112, 90, '', '', 0, 1, 2, 3, '', 1, 1, 46, '2001-06-09 18:15:00'),
(276, 'A 16th-Century Dance Party', 'According to the late 16th-century Italian dance manuals, a high-society dance party seems to have been a formal setting in which the guests took turns to show off for the company. Everyone spent most of their time sitting around a small dance floor, taking turns to dance one couple or one set at a time - and some participated only by watching. This session is an attempt to recreate such a dance party.', 112, 90, '', '', 0, 1, 2, 3, '', 1, 1, 43, '2001-06-12 20:00:00'),
(277, 'Midair''s Dance Menagerie', 'I will teach a random assortment of period dances that I personally enjoy. No dance experience necessary! Just be prepared to have a lot of fun!\r\nTime permitting, the dances I will teach are: Earl of Salisbury Pavanne, Black Alman, Villanella, Jenny Pluck Pears, Saltarello la Regina (ok, not period choreography, but reasonable SCA chor), and Rostiboli.', 73, 90, '', '', 0, 1, 2, 3, '', 1, 2, 44, '2001-06-10 15:15:00'),
(278, 'La Courante', 'The courante, in various forms, was popular throughout Europe in the late 16th century. Several of Arbeau''s variants will be taught. Connections to English and Italian forms will be discussed, as well as musical and reconstruction issues. A courante-specific warmup will preceed the dancing.\r\n', 140, 90, '', '', 0, 1, 2, 3, '', 1, 1, 42, '2001-06-12 18:15:00'),
(279, 'Learning from Other Sources', 'Dance was an integral part of 16th century culture. Much of what we need to reconstruct it was left out of the dance treatises. Other sources provide much that is missing. Two fruitful groups of sources are discussed: Treatises on horsesmanship, and early dictionaries.\r\n\r\nHorsemanship provides insight into: terms in Lupi and Negri; undefined steps in Lupi''s canary variations; practical information on aesthetics in movement; the origin of certain dance steps; surprising connections between dance and horse training, for example galliards for horses.\r\n\r\nEarly dictionaries provide a wealth of contextual information. For example, names of dances; characteristics of dances; cultural connections for specific dances; connections between dance, revels, mummings, and plays; proverbs invoking dance; information on dance music, dance shoes, costuming.', 140, 90, '', '', 0, 1, 2, 3, '', 1, 1, 46, '2001-06-09 20:00:00'),
(280, 'Mixed Bransles de Champagne Suite', 'Arbeau''s suggested suite: Cassandre, Pinagay, Charlotte, Guerre, and Aridan.\r\n\r\nThis would be a repeat of a class that I put together for this year''s Northshield Dance Seminar. It ranges from Cassandre (a beginner''s dance) through Guerre (high impact aerobics, including work on divisions for those who desire) and Aridan (mentally and physically challenging). The class will address several of Arbeau''s suggestions, including learning methods, differences in kicking styles, and a look at divisions.\r\n', 141, 90, '', '', 0, 1, 2, 3, '', 1, 2, 47, '2001-06-09 20:00:00'),
(281, 'Late Sixteenth Century Fencing - The Other Movement Art', 'Dancing and fencing were both requisite skills for a gentleman of the sixteenth century. Each calls for disciplined study to learn specific movements that require coordination, strength, precision and grace for their proper execution. The movements and attitudes learned in one activity must have affected an individual''s practice of the other. This workshop will teach the basic movements characteristic of fencing in the late sixteenth century, with particular attention to elements relevant to Renaissance dance. The focus will be on the Italian technique described by Giacomo Di Grassi, with some reference to English (Swetnam) and French (St. Didier) techniques.\r\n', 142, 90, '', '', 0, 1, 2, 3, '', 1, 1, 44, '2001-06-09 18:15:00'),
(282, '15th C Italian Balli for Three People', 'Belfiore, Vita de Cholino, Voltati in ca Rosina\r\n', 37, 90, '', '', 0, 1, 2, 3, '', 1, 3, 47, '2001-06-09 18:15:00'),
(283, 'The Origins of Morris Dancing', 'A talk about what is known - and not known - about the origins of morris dancing, focusing on the references within and shortly after the SCA period.\r\n', 143, 90, '', '', 0, 1, 5, 3, '', 1, 1, 46, '2001-06-10 13:30:00'),
(284, 'Introduction to Border Morris', 'A workshop, teaching one or more border morris dances. We have taught complete beginners (including workshops at the last two Arisia conventions), and it actually works. Not that we would actually turn away experienced dancers, but the workshop won''t be geared toward them.\r\n\r\nHistorical note: we know that morris dancing was done in period, but we have very little information on what the dances actually looked like. The teaching would be based on current practice. I believe it would be of interest to many attendees, but the serious academic types might turn up their noses.', 143, 90, '', '', 0, 1, 5, 3, '', 1, 2, 43, '2001-06-10 18:15:00'),
(285, 'Choreographing Dances in the SCA', 'In this class, we will dance several SCA choreographies (including the Squirrel Branle, Saltarello La Regina, and Jogging Over the Mountains (a 15th C Italian style dance)), followed by a discussion of what to consider when starting out to choreograph one''s own new dance. Time permitting, we will use a recording of a period piece of music and make up a dance to it together.\r\n', 144, 90, '', '', 0, 1, 2, 3, '', 1, 3, 43, '2001-06-10 20:00:00'),
(286, 'Introduction to 15th C Italian Balli', 'A beginners introduction to a few of the easier dances of 15th C Italy. All steps needed will be taught. Dances will probably include Petit Vriens, Amoroso, Anello, Gelosia and Rostiboli. Students are expected to have warmed up before class.\r\n', 111, 90, '', '', 0, 1, 2, 3, '', 1, 2, 43, '2001-06-09 15:15:00'),
(287, '15th C Italian Balli', 'This class will cover some of the easier mixed-tempo balli, most likely to include Colonesse, the three person Rostiboli, Pizocara and Marchesana. The steps needed will be briefly taught. Participants are expected to have some previous experience in 15th C Italian dance, or to be fast learners who are willing to be a little lost. Students are presumed to have warmed up before class.\r\n', 111, 90, '', '', 0, 1, 2, 3, '', 1, 2, 45, '2001-06-10 15:15:00'),
(288, '15th C Bassedanze', 'This class will cover four 15th C.Italian bassedanze, (Gioliva, Pellegrina, Pazienza and Lauro). Participants do not have to have any previous experience in 15th C Italian dance, as the steps needed will be taught. Students are presumed to have warmed up before class.\r\n', 111, 90, '', '', 0, 1, 2, 3, '', 1, 2, 41, '2001-06-12 15:15:00'),
(289, '20th C Bassedanze', 'The dances covered will probably include Choronita Gentile (an adaption of Ambrosio''s 8-person Chorona Gentile done to 20th C music), Riunione and Mordred''s Lullaby (both choreographed by the instructor). Participants are expected to be familiar with the standard steps in bassadanza time (sempio, doppio, ripresa, volta del Gioioso etc), and to be sufficiently warmed up.\r\n', 111, 90, '', '', 0, 1, 2, 3, '', 1, 3, 41, '2001-06-11 15:15:00'),
(290, 'History of Middle Eastern Dance and Its Place in the Culture(s)', 'What are the origins of the dance Americans usually call belly dance--and why do some people bristle when you call it that? What roles did dance play in Middle Eastern, Central Asian and North African culture in period? Why might your persona dance? These are all big questions, some with no hard answers--but we''ll talk about what''s known, what''s theorized, and what''s just plain flights of fancy.\r\n', 145, 90, '', '', 0, 1, 3, 3, '', 1, 1, 41, '2001-06-10 18:15:00'),
(291, 'Dancing with Props', 'Get to know your props! There''s a lot of great possible props out there besides the favored canes and veils. This class will explore how a dancer can incorporate dancing with less traditional props such as candles, baskets, swords, scarves and more! Here is a great chance to take some time and learn how to experiment with a variety of prop options.\r\n', 145, 90, '', '', 0, 1, 3, 3, '', 1, 3, 42, '2001-06-10 13:30:00'),
(292, 'Lute Tablature', 'Caroso & Negri included the melody line of most of their dances in the treatises, along with a setting in tablature for lute. For those who do not read tablature (or who want a refresher), we''ll examine how tab works and compare standard notation melodies with what the tab shows. We''ll discuss transcription issues and problems, look at how to make standard notation editions from the tab parts and compare a few parallel settings from other sources. Packet of music in tablature, transcription and 3-, 4- and/or 5-part scores; tab guide available.\r\n', 146, 90, '', '', 0, 1, 4, 3, '', 1, 3, 40, '2001-06-10 13:30:00'),
(293, '16th c. Favorites', 'Our dance ensemble PAVANE (based in the Barony of Stonemarche) focusses mostly on 16th c choreographies by Arbeau, Caroso & Negri. We''ll teach three of our favorites - a suite of Bransles after Arbeau to music by Gervaise, a Pavane after Arbeau, and Negri''s Lo Spagnoletto - and demonstrate a few others from our performance repertoire (demonstration not available Tuesday June 12). The Bransles and Pavane are simple enough for all levels of ability; Lo Spagnoletto, a dance for two couples, requires familiarity with basic 16th c Italianate stepwork (the repeating chorus helps to make it easier than some).\r\n', 146, 90, '', '', 0, 1, 2, 3, '', 1, 3, 41, '2001-06-12 13:30:00'),
(294, 'Brando di Cales', 'We''re not sure if this dance from Negri''s Le Gratie d''Amore is dreadfully simple or simply dreadful, but it is certainly a fun and disarming introduction to 16th Century Italian dance. They''re not ALL hard! Uncle Sion promises.\r\n', 3, 90, '', '', 0, 1, 2, 3, '', 1, 2, 45, '2001-06-09 13:30:00'),
(295, 'Fedelta d''Amore', 'Walk, haye, gagliard; Walk, haye, gagliard; Walk, haye, gagliard; etc., etc. Why did we ever start thinking that 16th Century Italian dance was too hard to do?\r\n', 3, 90, '', '', 0, 1, 2, 3, '', 1, 2, 41, '2001-06-11 13:30:00'),
(296, 'Folkloric Routine (2-session choreography class)', 'A short folkloric ME choreography suitable for dance in the SCA. Anyone may attend, but I''m assuming some knowledge of basic techniques. Notes will be provided.\r\n', 147, 195, '', '', 0, 1, 3, 3, '', 1, 3, 41, '2001-06-09 18:15:00'),
(297, 'Dance Dynamics', 'This class will explore the use of different movements and expressions to different types of ME music, from the melodic to taxims to use of drum. Movement will be encouraged!\r\n', 147, 90, '', '', 0, 1, 3, 3, '', 1, 1, 42, '2001-06-09 13:30:00'),
(298, 'Middle Eastern Dance Costuming', 'This class will look at the types of costuming documented in SCA period and worn by ME dancers. Both men''s and women''s costuming will be explored. Class attendees are encouraged to bring their own information to share. Handout will be available. \r\n', 147, 90, '', '', 0, 1, 3, 3, '', 1, 1, 41, '2001-06-10 20:00:00'),
(299, 'Basics of Stick/Cane Dance', 'Class will review the basics of use of the cane/stick in ME dance. Basic techniques will be taught. Class suitable for men & women (as they all are!). Class may be co-taught.\r\n', 147, 90, '', '', 0, 1, 3, 3, '', 1, 2, 41, '2001-06-09 15:15:00'),
(301, 'Dancemaster/Bandleader Summit', 'What do dancemasters want of their musicians? What do bandleaders want of their dancemasters? What tricks of the trade can we share with one another? How can we work together to maximize happiness and dance in the Society? A round table discussion for dancers who have to negotiate with musicians and musicians who have to negotiate with dance.\r\n', 9, 90, '', '', 0, 1, 4, 3, '', 1, 1, 40, '2001-06-09 20:00:00'),
(302, 'The Wm. Blackfox Memorial Bagpipe-Dance Music Conspiracy: All welcome!', 'Bagpipes are wonderful! Dance music is wonderful! Playing for dancing is wonderful! We want to bring all these things together in SCA. This will be a meeting of people who are working to help bring a tradition of playing for period European dancing to the bagpipers of the Society. No idea what form this gathering will take yet. Check back for more info.\r\n', 9, 90, '', '', 0, 1, 4, 3, '', 1, 1, 40, '2001-06-09 15:15:00'),
(303, 'The Basse Dance Music Challenge: Vaten mon amoureux desir', 'Those composers attending the Knowne World Dance Symposium are invited by Tibicen of Carolingia to demonstrate their mastery of the Art and Science of Music, by realizing the Tenor for the basse dance "Vaten mon amoureux desir".', 9, 90, '', '', 0, 1, 4, 3, 'http://www.mixolydian.org/kwds/challenge.html', 1, 4, 40, '2001-06-10 18:15:00'),
(304, 'Teaching Dance in Challenging Situations', 'Dancemasters in the Society encounter a number of challenging situations. Explore and share strategies for coping with small practices, large practices, noisy venues, and teaching to the public. Also discuss strategies for adapting dances to the disabled, people with physical limitations, and for children. How can we as teachers maximize the enjoyment of our students?\r\n', 49, 90, '', '', 0, 1, 2, 3, '', 1, 1, 46, '2001-06-10 18:15:00'),
(305, 'Organizing Dance at Events', 'In this roundtable class we''ll share stories and advice on how to plan and run dance at Society events, from after-feast revels at a local event, to an evening ball at a Kingdom event, and to a day-long dance workshop and ball.\r\n', 49, 90, '', '', 0, 1, 2, 3, '', 1, 1, 0, '2001-06-08 23:00:00'),
(306, 'Introduction to Dance Reconstruction', 'What''s involved in taking a description of a dance from a period source and turning it into something we can perform and enjoy? Find out as we try the process ''hands-on'' with some dances from Playford''s English Dancing Master, exploring ambiguities and listening to the music. Experience with English Country Dance required.\r\n', 49, 90, '', '', 0, 1, 2, 3, '', 1, 3, 0, '2001-06-08 23:00:00'),
(307, 'Approaches to Dance Notation', 'In this roundtable class, we will look at several different approaches to writing down instructions for dance, and discuss their strengths and weaknesses. We''ll look at period, modern, and society sources. What good ideas can we find, and what pitfalls can we learn to avoid? What would be the elements of an ideal notation for reference use?\r\n', 49, 90, '', '', 0, 1, 2, 3, '', 1, 1, 46, '2001-06-09 15:15:00'),
(308, 'The Old Measures', 'Learn some dances described in the notes of Elizabethan Londoners, from the simple Quadran Pavan to the cuddly Madam Sosilia Alman. The class begins with a lecture on the place of these dances in Elizabethan society. Beginners welcome. A companion CD is available for $6 if ordered in advance. Includes: Quadran Pavan, Turkelone, Earl of Essex Measure, Tinternell, Old Alman, Queen''s Alman, Madam Sosilia Alman, Black Alman, Lorayne Alman, New Alman.\r\n', 49, 90, '', '', 0, 1, 2, 3, '', 1, 1, 41, '2001-06-12 18:15:00'),
(309, 'Survey of European Dance Sources 1400-1700', 'Find out more about where our dances come from with this lecture survey course. Look in turn at the documents and context for each of the major categories of dance performed in the Society. Sample dances will be demonstrated. This class will be of interest to dance researchers, casual dancers, and non-dancers with an interest in the social activities of the period.\r\n', 49, 90, '', '', 0, 1, 2, 3, '', 1, 1, 43, '2001-06-11 18:15:00'),
(310, 'Some Dances from Il Ballarino', '16th century Italian dances--\r\nFedelta` - easy cascarda\r\nVillanella - easy balletto (no galliard)\r\nGracca Amorosa - intermediate cascarda (fast, bouncy)', 20, 90, '', '', 0, 1, 2, 3, '', 1, 3, 41, '2001-06-11 18:15:00'),
(311, 'Reconstruction Workshop I', 'Reconstruction from primary sources as a group project. Familiarity with period repertoire helpful. Some knowledge of a Romance language helpful, but not required. The plan is to work together, so that not everyone has to be able to know the language, read the script, etc. The first session will be to describe the process of reconstruction, divide people into several groups (if the class is large enough), hand out sample dances and start working. The second session will be to demonstrate the reconstructions and discuss the results. Some work outside of class time may be necessary.\r\n', 20, 90, '', '', 0, 1, 2, 3, '', 1, 4, 43, '2001-06-10 15:15:00'),
(312, '16C Improv Music ', '16C Improv Music ', 148, 90, '', '', 0, 1, 4, 3, '', 1, 1, 40, '2001-06-11 13:30:00'),
(313, '16C Music Grooves ', '16C Music Grooves ', 148, 90, '', '', 0, 1, 4, 3, '', 1, 1, 40, '2001-06-11 15:15:00'),
(314, '16C Music Jam ', '16C Music Jam ', 148, 90, '', '', 0, 1, 4, 3, '', 1, 1, 40, '2001-06-11 18:15:00'),
(315, 'Exercises from Ebreo II', 'Ebreo gives a number of exercises for how one should become a better dancer. We will try what we can of these, and watch in amazement as our dancing improves!', 89, 90, '', '', 0, 1, 2, 3, '', 1, 3, 42, '2001-06-11 20:00:00'),
(316, 'Reconstruction Workshop II', 'Reconstruction from primary sources as a group project. Familiarity with period repertoire helpful. Some knowledge of a Romance language helpful, but not required. The plan is to work together, so that not everyone has to be able to know the language, read the script, etc. The first session will be to describe the process of reconstruction, divide people into several groups (if the class is large enough), hand out sample dances and start working. The second session will be to demonstrate the reconstructions and discuss the results. Some work outside of class time may be necessary.', 20, 90, '', '', 0, 1, 2, 3, '', 1, 4, 41, '2001-06-11 20:00:00'),
(317, 'Basse Dance', 'An intermediate class which will cover steps and dances.', 149, 90, '', '', 0, 1, 2, 4, '', 1, 1, 48, '2003-06-06 17:30:00'),
(318, 'Gresley Dances', 'Gresley Dances', 150, 60, '', '', 0, 1, 2, 4, '', 1, 1, 48, '2003-06-06 19:00:00'),
(319, 'Intro to 15c Italian', 'For beginners, a class which covers the basics of 15th century Italian dances and teaches some popular favorites. Anello, Amoroso, and Belfiore will be taught.', 37, 90, '', '', 0, 1, 2, 4, '', 1, 2, 48, '2003-06-06 20:00:00'),
(320, 'Dances from the Inns of Court', 'Madam Sosilia''s Alman, Quadran Pavan, Earl of Essex Measure, and moreâ€¦.', 39, 60, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-06 17:30:00'),
(321, 'Intro to 16c Italian Dance', 'For beginning dancers, Ballo del Fiore, Contrapasso en Due, Fedelta, & Villanella will be taught.', 151, 90, '', '', 0, 1, 2, 4, '', 1, 2, 49, '2003-06-06 18:30:00');
INSERT INTO `class` (`id`, `name`, `description`, `user_id`, `hours`, `limit`, `fee`, `topic_id`, `era_id`, `type_id`, `kwds_id`, `url`, `aerobic_id`, `difficulty_id`, `room_id`, `day`) VALUES
(322, 'Simple 16c Italian Dances for Two', 'So, you have always heard that Italian dance was hard and you''ve thought, "I can never learn that." Well, I am here to change your mind. Come learn two newly reconstructed dances from Caroso''s "Il Ballarino," La Castellana and Laccio d''Amore.', 152, 90, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-06 20:00:00'),
(323, 'Easy ECD''s', 'A presentation of some basic ECD''s. An excellent class for beginners! Upon a Summer''s Day, Gathering Peascods, Jenny Plucked Pears, & Sellinger''s Round.', 153, 60, '', '', 0, 1, 2, 4, '', 1, 2, 50, '2003-06-06 17:30:00'),
(324, 'Beginning ECD', 'Basic English Country Dance figures.', 115, 60, '', '', 0, 1, 2, 4, '', 1, 1, 50, '2003-06-06 18:30:00'),
(325, 'Choregrapher''s Show & Tell', 'Do you have a Deep Dark Secret? Do you--gasp--make dances? You, my friend, are not alone. This get-together is for us--to discuss techniques, motives, and results, to get critiques, and to play show and tell. Guinea pigs--er, dancers who would like to try out new dances are welcome.', 3, 120, '', '', 0, 1, 2, 4, '', 1, 1, 50, '2003-06-06 19:30:00'),
(326, 'Middle Eastern Persussion Class & Jam Session', 'Middle Eastern Persussion Class & Jam Session\r\n\r\n', 124, 150, '', '', 0, 1, 3, 4, '', 1, 1, 51, '2003-06-06 19:00:00'),
(327, 'Teaching Teachers', 'Guild Masters often find themselves as the only dance teacher in a group. It is important to try and foster new dance teachers and to create opportunities for them to teach and learn. Bring suggestions and experiences while we try and figure out how to encourage more teachers of dance within the society.', 37, 90, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-08 13:00:00'),
(328, '15th Century Italian Steps Roundtable', 'So how do you do those 15th century Italian steps, anyway? I''ll bring translations of the primary sources (Smith), a step concordance (Wilson), and hopefully other folks will bring materials related to Brainard''s, Sparti''s, and other people''s interpretations. Then we''ll have a spirited and educational exchange about different reconstructions of the piva, saltarello, reprisa, and so forth.', 117, 90, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-08 14:30:00'),
(329, 'Discussion: Why various dance sources were written, and who was the target audience?', 'Discussion: Why various dance sources were written, and who was the target audience?\r\n\r\n', 112, 90, '', '', 0, 1, 2, 4, '', 1, 1, 52, '2003-06-08 13:00:00'),
(330, 'Contrapasso Nuovo', 'The *second* easiest 16th century Italian dance, Contrapasso Nuovo is danced in the beautiful rose pattern illustrated in Caroso''s ''Nobilita di Dame'' (1600). No experience required, but those who have danced other contrapassi will have a leg up.\r\n', 105, 90, '', '', 0, 1, 2, 4, '', 1, 1, 52, '2003-06-08 14:30:00'),
(331, 'Fun ECD''s', 'A presentation on some some English Country Dances. this class covers dances easily achievable by novice dancers. Emphasis will be on flirting. Pepper''s Black, Picking Up Sticks,The Maid Peept out of the Window, and Goddesses\r\n', 153, 90, '', '', 0, 1, 2, 4, '', 1, 1, 50, '2003-06-08 13:00:00'),
(332, 'Japanese Noh Dance', 'Japanese Noh Dance', 119, 90, '', '', 0, 1, 5, 4, '', 1, 1, 50, '2003-06-08 14:30:00'),
(333, 'The Burgundian Mystery: the basse dance in theory and practice', 'Covers sources & reconstruction issues; beginners should have no problems.', 105, 90, '', '', 0, 1, 2, 4, '', 1, 1, 53, '2003-06-07 12:00:00'),
(334, 'Brando di Cales', 'Negri''s fun and challenging dance for three couples includes a galliard and coronto section. Experience with 16th century Italian dance preferred.', 40, 90, '', '', 0, 1, 2, 4, '', 1, 1, 53, '2003-06-07 13:30:00'),
(335, 'Gresley Dances', 'Gresley Dances\r\n\r\n', 150, 90, '', '', 0, 1, 2, 4, '', 1, 1, 53, '2003-06-07 15:00:00'),
(336, 'Easy 15th Century Italian Dances', 'Gelosia, Petit Riens, and Rostiboli Gioioso.', 44, 60, '', '', 0, 1, 2, 4, '', 1, 1, 48, '2003-06-07 12:00:00'),
(337, 'A Handful of Almans', 'A beginner-accessible class which will teach: Old Alman, New Alman, Lorayne Alman, Queen''s Alman and Black Alman.', 41, 60, '', '', 0, 1, 2, 4, '', 1, 2, 48, '2003-06-07 13:00:00'),
(338, 'Beginning Branles', 'Single Branle, Double Branle, and Gay Branle; Cassandra Branle, Pinigay Branle, and Charlotte Branle.', 154, 60, '', '', 0, 1, 2, 4, '', 1, 1, 48, '2003-06-07 14:00:00'),
(339, 'English Country for Three Couples', 'First Edition Playford English Country Dances for three couples. Included will be The Night Peece, Shepherd''s Holiday, and New Exchange, among others.', 62, 90, '', '', 0, 1, 2, 4, '', 1, 1, 48, '2003-06-07 15:00:00'),
(340, 'Intermediate English Country Dance', 'The focus will be on learning English Country dances with some of the different types of \\"heys\\". Dances that may be taught during this class are: Chestnut, Grimstock, Picking of Sticks, Merry Merry Milkmaids, If All The World Were Paper. Please feel welcome to come to this class even if you feel you are a beginner.', 155, 90, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-07 12:00:00'),
(341, 'Reconstructing 16th Century Dance: Pains and Pleasures', 'Addresses differences in language used to describe movement, issues of step rhythm and performance, and various other topics of interest.', 149, 90, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-07 13:30:00'),
(342, 'Improvisation in Il Canario', 'A walk through some of the techniques that were used for improvisation in Il Canario. Examples from Lupi, Negri, and Caroso will be covered. Starting at the basic building blocks and developing into longer mutanze. Prerequisite: Experience in 16th Century Italian or the Galliard.', 48, 90, '', '', 0, 1, 2, 4, '', 1, 3, 49, '2003-06-07 15:00:00'),
(343, 'A Couple of Dozen Easy Pieces: An Introduction to 16th Century Italian Dancing', 'Take a dozen easy steps, eight simple figures and four mindsets, and you can do 16th Century Italian dance. This class will put these elements together and do a series simple drills, perhaps ending up having learned a dance.', 3, 90, '', '', 0, 1, 2, 4, '', 1, 1, 52, '2003-06-07 12:00:00'),
(344, 'Dances from Playford, 1651', 'Some great English Country Dances such as St. Martin''s, Beggar Boy, and Mage on a Cree.', 156, 90, '', '', 0, 1, 2, 4, '', 1, 1, 52, '2003-06-07 13:30:00'),
(345, 'Fun and Interesting 15th Century Italian Dances', 'Learn some fun and flirtatious dances from the dance masters of Medici Florence. Experience with dance suggested. Includes: Lioncello Vecchio, Lauro, Anello, Colonesse, Mercantia', 49, 90, '', '', 0, 1, 2, 4, '', 1, 1, 52, '2003-06-07 15:00:00'),
(346, 'Working with Renaissance Dance Music Sources', 'A class for both musicians and dancers, we will examine music in 16th century dance texts.', 149, 90, '', '', 0, 1, 2, 4, '', 1, 1, 54, '2003-06-07 12:00:00'),
(347, 'Alta Somaglia', 'A Negri dance in four parts. A basic knowledge of 16th Century Italian steps is preferred.', 42, 90, '', '', 0, 1, 2, 4, '', 1, 1, 53, '2003-06-07 17:30:00'),
(348, 'Negri''s Il Gratioso', 'Il Gratioso is an elegant 16th Century dance from Negri. Slow moving, but with interesting figures and steps.', 44, 60, '', '', 0, 1, 2, 4, '', 1, 1, 53, '2003-06-07 19:00:00'),
(349, 'Progressive Dances from Playford, 1651', 'For those who enjoy dances like â€œHole in the Wallâ€ where you dance with different people with each repeat, this class offers a variety of dances from Playfordâ€™s first edition that mix partners and couples in several flavors of progression. Experience with English Country Dance required. \r\n\r\nIncludes: Halfe Hannikin, Staines Morris, Dargason, Row Well Ye Mariners, The Fryar and the Nun, Whirligig, Bobbing Joe\r\n', 49, 90, '', '', 0, 1, 2, 4, '', 1, 1, 53, '2003-06-07 20:00:00'),
(350, 'Advanced English Country Dances', 'A look at English Country Dances that deviate from the basic pattern - these dances are great fun, and a refreshing change from the same old doubling, siding, and arming.', 155, 90, '', '', 0, 1, 2, 4, '', 1, 1, 48, '2003-06-07 17:30:00'),
(351, 'English Country for Four Couples', 'First edition Playford dances for four couples. Included will be Lull Me Beyond Thee, Lord of Carnarvon''s Jig, Gray''s Inn Mask, and others.', 62, 90, '', '', 0, 1, 2, 4, '', 1, 1, 48, '2003-06-07 19:00:00'),
(352, 'Coranto: Theme and Variations', 'The Coranto can be rather frustrating to work with, due to contradictions in the source material. In this class we''ll look at and dance through several different recontructions. If you know a recontruction I don''t, please share it!', 112, 60, '', '', 0, 1, 2, 4, '', 1, 1, 48, '2003-06-07 20:30:00'),
(353, 'Arbeau''s Mimed Dances', 'Arbeau''s mimed dances are playful, easy, and fun! We will try out various mimed branles and a simple mimed coranto. Come prepared to giggle!', 157, 90, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-07 17:30:00'),
(354, 'Let Your Hair Down: Peasant Dances', 'These dances are lively, fun, and easy to learn. This class will teach Farandole, Koutri, Itele, D''Hammers -achmiedsgndselln, and if time, Kanonwalzer.', 41, 90, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-07 19:00:00'),
(355, 'Catch-All: Dances ', 'Classes to be taught by request if you missed a class, ran out of time during class, or simply would like to learn, re-learn, or review.', 158, 60, '', '', 0, 1, 2, 4, '', 1, 1, 49, '2003-06-07 20:30:00'),
(356, 'Become a better dancer in the period way -- Guglielmo''s six rules of dance', 'We will examine Guglielmo''s \\"Six Principal Elements of dance\\" & provide students with some exercises to improve their dancing. Prior knowledge of basic steps, Gelosia & Rostiboli Gioioso is preferred.', 159, 90, '', '', 0, 1, 2, 4, '', 1, 1, 52, '2003-06-07 17:30:00'),
(357, 'Advanced Branles', 'Charlotte Branle, War Branle, Aridan Branle', 115, 60, '', '', 0, 1, 2, 4, '', 1, 1, 52, '2003-06-07 19:00:00'),
(358, 'Passo e Mezzo and Pavaniglia, two improvisational dances', 'Arbeau mentions the passamezzo and Spanish pavan (pavaniglia) as livelier versions of the pavan, and gives a little bit of information on them. The Italian dancemasters give many more variations for these ances. These range from walked steps to very aerobic passages, and are a sure cure for ''boring pavans''.\r\n', 20, 90, '', '', 0, 1, 2, 4, '', 1, 1, 52, '2003-06-07 20:00:00'),
(359, 'Essential Elements of Middle Eastern Dance, Layering, Shimmies and Locks', 'Essential Elements of Middle Eastern Dance, Layering, Shimmies and Locks\r\n\r\n', 160, 60, '', '', 0, 1, 3, 4, '', 1, 1, 50, '2003-06-07 13:00:00'),
(360, 'The Art of Pause', 'How to polish your dancing by varying tempo, speed, and style.', 161, 60, '', '', 0, 1, 3, 4, '', 1, 1, 50, '2003-06-07 14:00:00'),
(361, 'Zill Drill', 'How to combine zills and dance. (Zills are needed.)', 161, 60, '', '', 0, 1, 3, 4, '', 1, 1, 50, '2003-06-07 17:00:00'),
(362, 'Dancing with Sword', 'A class to incorporate swordwork into Middle Eastern Dance.', 161, 60, '', '', 0, 1, 3, 4, '', 1, 1, 50, '2003-06-07 18:00:00'),
(363, 'Veil Work', 'A beginning class in using veils in Middle Eastern Dance for intermediate level Middle Eastern dancers; although beinning level dancers are welcome to attend, the class may move rather fast. Bring a veil at least 3 to 4 yards long if you have one.', 162, 60, '', '', 0, 1, 3, 4, '', 1, 1, 50, '2003-06-07 16:00:00'),
(364, 'Beginnning Middle Eastern Drumming', 'Basic rhythms and excercises to help the begginging drummer grow in their craft. ', 124, 120, '', '', 0, 1, 3, 4, '', 1, 1, 51, '2003-06-07 13:00:00'),
(365, 'Incorporating other Instruments in the Drum Circle and Drumming Etiquette', 'Incorporating other Instruments in the Drum Circle and Drumming Etiquette\r\n\r\n', 124, 60, '', '', 0, 1, 3, 4, '', 1, 1, 51, '2003-06-07 17:00:00'),
(366, 'Intermediate Middle Eastern Drumming', 'Intermediate Middle Eastern Drumming\r\n\r\n', 124, 120, '', '', 0, 1, 3, 4, '', 1, 1, 51, '2003-06-07 19:00:00'),
(367, 'Beginner Middle Eastern Dance', 'Basic moves from various Middle Eastern Styles.', 163, 120, '', '', 0, 1, 3, 4, '', 1, 1, 55, '2003-06-07 13:00:00'),
(368, 'Myth Conceptions about Middle Eastern Dance', 'Myth Conceptions about Middle Eastern Dance\r\n\r\n', 164, 60, '', '', 0, 1, 3, 4, '', 1, 1, 51, '2003-06-07 16:00:00'),
(369, 'Debke', 'Debke\r\n\r\n', 164, 60, '', '', 0, 1, 3, 4, '', 1, 1, 51, '2003-06-07 18:00:00'),
(370, 'Intermediate Middle Eastern Dance', 'Intermediate Middle Eastern Dance\r\n\r\n', 165, 120, '', '', 0, 1, 3, 4, '', 1, 1, 55, '2003-06-07 17:00:00'),
(371, 'Performance and Staging', 'Performance and Staging\r\n\r\n', 165, 60, '', '', 0, 1, 3, 4, '', 1, 1, 50, '2003-06-07 20:00:00'),
(372, 'Period Country Dances of the Middle East', 'Period Country Dances of the Middle East\r\n\r\n', 166, 120, '', '', 0, 1, 3, 4, '', 1, 1, 55, '2003-06-07 19:00:00'),
(373, 'The Volta ', 'The Volta is a galliard variation in which the gentleman assists his partner to leap into the air while turning. It does not require Herculean strength from the gentleman - the lady supplies much of the lift, sometimes all of it. Reconstruction derives from the work of Dr. Ingrid Brainard and Sir Patri du Chat Gris. Energetic, ladies may wish to wear a corset or sports bra; will be easier for people who are already comfortable with basic galliard steps.\r\n\r\n', 112, 50, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-29 13:30:00'),
(374, 'Introduction to Dance Sources ', 'Where do the historical dances we enjoy come from? Come for an orientation to the period books and manuscripts that are our sources. Discover how completely (or incompletely) they describe the dances, and what additional material they contain.\r\n\r\n', 49, 50, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-29 13:30:00'),
(375, 'Introducing 16th Century Italian Steps ', 'Commonly used late Italian dance steps and figures explained, using Contrapasso in Due (a walking dance) and Gracca Amorosa (a bouncy dance) as examples.\r\n\r\n', 20, 80, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-29 14:30:00'),
(376, 'Playing for dancing ', 'This hands-on class for musicians and dance band leaders includes an overview of historical performance practice as well as offer practical solutions to common problems we face when playing for dancing. Some things we may cover include pre-1600 instruments, instrumentation, percussion patterns, music sources, and other accessible resources. Participants are encouraged to bring period instruments, both loud and soft and a music stand. Music will be provided.\r\n\r\n', 63, 80, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-29 14:30:00'),
(377, 'Fifteenth-Century, North of Italy ', 'Burgundian bassedanses are easy dances that ought to be better known in the SCA than they are. We''ll go though Le Moi de Mai, La Danse de Cleves, Beaulte de Castille, and Mara''s crackpot theories about their esthetics and tempo.\r\n\r\n', 112, 50, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-29 17:30:00'),
(378, 'Some of the variations on the as-many-as-will ECDs ', 'I''ll teach four dances listed as ''for as many as will'' (though most really aren''t) that each have a very different take on the type.\r\n\r\n', 62, 110, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-29 17:30:00'),
(379, 'Band: Burgundian, Arbeau, Almans ', 'This time and space is set aside for musicians to practice for the evening dance. Recorders will be the predominant instruments for this group of dances.', 167, 50, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-29 17:30:00'),
(380, 'Short Survey of Welsh Dance ', 'Will discuss background material from sources 12th-18th c.. Will also teach some probable Welsh dances from the SCA period, comparing with the same dances in modern Welsh country dance choreographies. Beginning-level; of interest to researchers in particular categories & to people creating Welsh personas.\r\n\r\nDances included: Lord of Carnarvanâ€™s Jegg and Bishop of Bangorâ€™s Jigg\r\n\r\n', 168, 50, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-29 18:30:00'),
(381, 'Band: Early Italian ', 'This time and space is set aside for musicians to practice for the evening dance. Shawms will be the predominant instruments for this group of dances.\r\n\r\nDances included: Gioioso in tre, Bell Fiore, Leoncello Vecchio, Lauro, Petit Riense', 167, 50, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-29 18:30:00'),
(382, 'English Court Masque ', 'As opposed to social dancing, dance performance at SCA events sometimes seems like it doesn''t really fit in. A late Elizabethan or early Stuart masque is a dance performance (among other things) that fits in really well with a late period high court event, though it is a rather alien art form for a modern audience. This session will explain what a masque is, describe Carolingia''s recent production of The Vision of the Twelve Goddesses, and talk about how you might do a masque of your own.', 112, 50, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-29 19:30:00'),
(383, 'Triple Terpsichore - Dances for 3', 'What do you do when only 3 people show up at dance practice? This class focuses on dances for three, and is intended to go beyond mere steps to explore dynamics and subtleties of ''style''. Dances taught will include primarily 15th and16th C Italian.', 78, 110, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-29 19:30:00'),
(384, 'Band: Late Italian ', 'This time and space is set aside for musicians to practice for the evening dance. Recorders and strings will be the predominant instruments for this group of dances.\r\n\r\nDances included: Contrapasso in Due, Gracca Amorosa, Ballo del Fiore for 3, Lord of Carnarvan''s Jegg\r\n\r\n', 167, 50, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-29 19:30:00'),
(385, 'Santucci: A New Source (1614)', 'New Renaissance dance sources are rare, so the discovery of a manuscript of Italian dance dated 1614 is a significant find. This class will mostly cover what''s similar and what''s different compared to the well-known 16th century books by Caroso and Negri.\r\n\r\n', 117, 50, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-29 20:30:00'),
(386, 'Band: English Country Dances ', 'This time and space is set aside for musicians to practice for the evening dance. A mixed set of instruments will be used for this group of dances.\r\n\r\nDances included: An Old Man is a Bed Full of Bones, Mill-field, Heart''s Ease, Rufty Tufty, Gathering Peas\r\n', 167, 50, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-29 20:30:00'),
(387, 'Reconstruction Techniques for Dance ', 'This class covers reconstructing - taking period dances and turning them into something performable. Our goal to make an easy step-by-step process. Weâ€™ll look at facsimiles and translations and apply them to the dances of Renaissance Europe. Youâ€™ll learn to research but also walk away a better dancer and teacher.\r\n\r\n', 37, 50, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-30 13:00:00'),
(388, 'Mixed Bransles of the Champagne Suite ', 'Bransles are some of the fairly simple dances we do in the SCA, and are an excellent introduction to proper styles of period dance (France, 1589). However, the real fun begins once they are danced together in a suite! This class will run through 5 bransles commonly danced together (Cassandra, Pinagay, Charlottle, War, Aridan), and some tips and pointers on how to play this game with musicians, and how to keep up.\r\n\r\nDances included: Cassandra, Pinagay, Charlotte, War, Aridan\r\n\r\n', 16, 50, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-30 13:00:00'),
(389, 'Basic Galliards from Arbeau ', 'A class going over some of the basic galliards described in Arbeau, such as the pieds croises, travelling step, ruade croise, and others. More if time permits!\r\n\r\nDances included: Pieds croises, travelling step, ruade croise, and others\r\n\r\n', 169, 50, '', '', 0, 1, 2, 6, '', 1, 1, 58, '2007-06-30 13:00:00'),
(390, 'How to teach anything ', 'This class is aimed at helping you to improve your teaching by using a variety of adult learning concepts and learner-centered teaching techniques to make your teaching fun, engaging, informative, easily understood, and memorable. The class is appropriate for brand new teachers, and dancemasters who have taught for years. Concepts taught will help you to teach anything better! (Whether itâ€™s renaissance dance, or presentations at work). (note: if you attended this class at KWDS in Lochac, this session will continue with all the information we didnâ€™t get to that day!)\r\n\r\n', 108, 80, '', '', 0, 1, 5, 6, '', 1, 1, 56, '2007-06-30 14:00:00'),
(391, 'Interestingly weird 3-couple English Country Dance ', 'Learn three out-of-the-ordinary 1st Edition ECDs for three couples, each of which has a quirk that sets it apart from the run-of-the-mill English Country Dance.\r\n\r\nDances included: The Whish. Kemp''s Jegg, and Greenwood\r\n\r\n', 62, 80, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-30 14:00:00'),
(392, 'Ornamenting Dance (and Other) Music ', 'A hands-on workshop on period techniques for ornamenting a simple melody. We''ll concentrate on dance music (e.g. Arbeau, Playford, basse dance) but techniques are applicable to other forms too. Bring a melody instrument you play fluently.\r\n\r\n', 170, 80, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-30 14:00:00'),
(393, 'Improvisation Principles for Dancing ', 'A group discussion of what to do with a galliard (or other improvised dance) once you''ve learned some steps for it.\r\n\r\n', 112, 50, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-30 15:30:00'),
(394, 'Three Basse Dances from Fifteenth Century Burgundy - or What Else Did They Do Besides Dance de Cleve', 'This style of dance consists of only five types of steps. The first dance is simple, the other two are of only moderate complexity. Handouts will be provided. If you can walk and count to five, you can do this style of dance...\r\n\r\nDances included: Le moys de may, Castille la nouvelle, and La franchoise nouvelle\r\n\r\n', 171, 50, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-30 15:30:00'),
(395, 'Fun for 4 Couples with 1st Playford ', 'We will be teaching some of our favourite four couple English Country dances from First Playford (1651). This session, open to all levels, is aimed at intermediate dancers who want to learn a few more intricate dances. Dance flow and enjoyment will be the focus of the session.\r\n\r\nDances included: Spanish Jepsies, Dargason and Double Dargason, If All The World Were Paper, New Castle, Faine I Would If I Could\r\n\r\n', 172, 80, '', '', 0, 1, 2, 6, '', 1, 1, 58, '2007-06-30 15:30:00'),
(396, 'Celeste Giglio', 'Come and learn this beautiful balletto for one couple from M.F. Carosoâ€™s NobiltÃ  di Dame, 1600. One of the more complex dances in the repertoire, this choreography contains a variety of virtuoso passages sure to dazzle the audience. The dance commences with an introductory passeggio, followed by a gagliarda, saltarello and canario\r\n\r\n', 173, 110, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-30 17:30:00'),
(397, 'Interesting English Country Dances ', 'A music Laurel made me do it! Having been asked to help select songs for a CD of English Country Dance music, I was reminded of all the dances with fun figures and interesting choruses that we seldom dance in An Tir. I''ve selected several of my favorites, all from Playford''s 1st edition (circa1651). Beginning with a brief overview of source and social context, the intended focus of this class is more on learning specific dances than theory. \r\n\r\nDances included: Row Well Ye Marriners, Millisons Jegg, Old Mole, The Whirligig, Saint Martins, Dull Sir John\r\n\r\n', 78, 110, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-30 17:30:00'),
(398, 'Band: Saturday Set 1 ', 'This time and space is set aside for musicians to practice for the Saturday evening dance.\r\n\r\nDances included: Pavan, Galliard, Pease Branle, Horses Branle, Washerwomen''s Branle, Hermits Branle\r\n\r\n', 167, 50, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-30 17:30:00'),
(399, 'Band: Saturday Set 2', 'This time and space is set aside for musicians to practice for the Saturday evening dance.\r\n\r\nDances included: Cassandra, Pinagay, Charlotte, War, Amoroso, Rostiboli Gioisio, Aridan, Queens Alman, Black Alman\r\n\r\n', 167, 50, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-30 18:30:00'),
(400, 'Il Canario ', 'A 2 hour intensive Il Canario class, based on the work of Livio Lupi da Caravaggio. It will be about building an improvised Il Canario from the basic structure up to a full improvisation, including reconstruction time and dancing time. For experienced dancers only, and space is limited; please sign up at the beginning of the event. You should be relatively fit to attempt this; if you can''t do most 16th C Italian dance steps quickly and easily this won''t be for you.\r\n\r\n', 48, 110, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-06-30 19:30:00'),
(401, 'Gresley Manuscript Dances ', 'An exploration of possible reconstructions of the Gresley Manuscript Dances. In this class we begin with a 20-minute video of selected dances performed at Haddon Hall, music by Bedford Waits, commentary by Dr. Jennifer Nevile & Dr. David Fallows, and a brief summary of what is known about the manuscript; next, we will practice the steps and perform at least 2 of the dances, more as time permits.\r\n\r\nDances included: Pernes en Gre, Ly Bens Distonys, and Talbott\r\n', 174, 110, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-06-30 19:30:00'),
(402, 'Band: Saturday Set 3', 'This time and space is set aside for musicians to practice for the Saturday evening dance.\r\n\r\nDances included: La Francoise Nouvelle, Ly Bens Distonys, Pernes en Gre, Ballo del Fiore, La Castellana, Il Canario\r\n\r\n', 167, 50, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-30 19:30:00'),
(403, 'Band: Saturday Set 4', 'This time and space is set aside for musicians to practice for the Saturday evening dance.\r\n\r\nDances included: Upon a Summer''s Day, Jenny Pluck Pears, If all the World Were Paper, Newcastle, Old Mole, Whirligig\r\n\r\n', 167, 50, '', '', 0, 1, 4, 6, '', 1, 1, 58, '2007-06-30 20:30:00'),
(404, 'Intermediate 15th century Italian dances with drama ', 'Come learn Mercanzia and Sobria, two 15th century Italian dances full of drama as only the Italians can do, with flirting, indignation, and faithfulness. A familiarity with the steps is preferred.\r\n\r\nDances included: Mercanzia and Sobria\r\n\r\n', 176, 50, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-07-01 13:00:00'),
(405, 'Dance Videos ', 'Rest your feet while you preview a variety of instructional historical dance videos to see which you might want to add to your collection.', 108, 50, '', '', 0, 1, 2, 6, '', 1, 1, 58, '2007-07-01 13:00:00'),
(406, '15th - 16th Century Basse Dance (the long way around)', 'Reconstruction of Arbeau''s basse dance ''Jouissance vous donnerai'', making a case for step reconstructions by going back to 15th C Burgundian Basse Dance and tracing possible similarities and connections with 15th C Italian Bassadanza, and later 16th C Italian dance. The four dances taught are intended to be illustrative of how steps may have changed over this time period.\r\n\r\nDances included: Basse La Dame, Basse La Francois Nouvelle, a 15thC Italian Bassadanza, a 16th C Italian dance, and Jouissance vous donnerai\r\n\r\n', 78, 80, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-07-01 14:00:00'),
(407, 'Four-couple English Country Dances ', 'Three (or more) four-couple 1st Edition ECDs that don''t get much floor time, at least where I live.\r\n\r\nDances included: Aye Me (the Symphony), Lord of Caernarvon''s Jig, and Prince Rupert''s March\r\n\r\n ', 62, 80, '', '', 0, 1, 2, 6, '', 1, 1, 57, '2007-07-01 14:00:00'),
(408, 'Dances by Request ', 'You traveled hundreds if not thousands of miles to KWDS so you could learn a specific dance, and now the event is almost over, and you haven''t learned it yet. This is your last chance!\r\n\r\n', 48, 80, '', '', 0, 1, 2, 6, '', 1, 1, 58, '2007-07-01 14:00:00'),
(409, 'Pavan & Galliard ', 'Dances included: Improvised pavan and galliard\r\n\r\n', 169, 40, '', '', 0, 1, 2, 6, '', 1, 1, 59, '2007-06-30 17:30:00'),
(410, 'Branles', 'Dances included: Pease, Horses, Washerwomen, and Hermits Branles\r\n\r\n', 16, 40, '', '', 0, 1, 2, 6, '', 1, 1, 59, '2007-06-30 18:10:00'),
(411, '15th Century Italian', 'Dances included: Amoroso and Rostiboli Gioioso\r\n\r\n', 176, 40, '', '', 0, 1, 2, 6, '', 1, 1, 59, '2007-06-30 18:50:00'),
(412, '16th Century Italian ', 'Dances included: Ballo del Fiore and La Castellana \r\n\r\n', 151, 40, '', '', 0, 1, 2, 6, '', 1, 1, 59, '2007-06-30 19:30:00'),
(413, 'Old Measures ', 'Dances included: Queen''s Alman and Black Alman\r\n\r\n', 115, 40, '', '', 0, 1, 2, 6, '', 1, 1, 59, '2007-06-30 20:10:00'),
(414, 'English Country Dance ', 'Dances included: Jenny Pluck Pears and Upon a Summer''s Day\r\n\r\n', 62, 40, '', '', 0, 1, 2, 6, '', 1, 1, 59, '2007-06-30 20:50:00'),
(415, 'Dancer challenge ', 'So you think you can dance? Come see if you''re up to the challenge of adapting to changes in the music.\r\n\r\n', 175, 50, '', '', 0, 1, 2, 6, '', 1, 1, 56, '2007-07-01 13:00:00'),
(416, 'Happy Dancing Feet in the 16th Century', 'Happy Dancing Feet in the 16th Century', 177, 75, '', '', 0, 1, 2, 9, '', 1, 1, 12, '2012-06-23 14:30:00'),
(417, 'Around London - Hockley in the Hole, Maiden Lane, St. Martin''s', 'Many English dances have rather opaque names. We will take a look at the London of Playford''s time and learn 3 less often-done dances named after places less than a mile from Playford''s door.', 24, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-04 14:00:00'),
(418, 'Praetorius'' Terpsichore Musarum', 'Terpsichore Musarum, published in 1612, contains over 300 dances in the French style and is the only secular work of Michael Praetorius to survive. We will cover the various types of dances contained in it and play through a number of them.\r\n', 24, 60, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-03 18:00:00'),
(419, 'Intro to Renaissance Instruments', 'We will go on a tour of the instruments played throughout middle and late period, illustrated by woodcuts from Praetorius'' Syntagma Musicum (1614-1620), and listen to many examples.', 24, 60, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-05 13:00:00'),
(420, 'Introduction to Cascarde: Alta Regina & Fiamma d''Amore', 'Come and enjoy two cascarde - fun, lively 16th Century Italian dances from Caroso. Alta Regina and Fiamma d''Amore are a great introduction to cascarde, being among the shortest and least step-intensive, but containing many step sequences found in other cascarde.\r\n', 55, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-03 14:00:00'),
(421, 'Cascarda Favorites', 'Carosoâ€™s Cascarde are delightfully fun and lively 16th Century Italian dances. This class features Maraviglia d''Amore and Gracca Amorosa. Maraviglia d''Amore is both an excellent performance piece and a playful social dance. Learn, or refresh your memory of, Gracca Amoroso, one of the most popular cascarde in the Midrealm. Familiarity with 16^th Century Italian steps and figures is helpful, as there are quite a few of them (but itâ€™s worth the learning of them).\r\n', 55, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-05 14:00:00'),
(422, 'Belregardo, old, new, and for three', 'Belregardo is a 15th century Ballo with three choreographies that all fit the same music, and actually share some steps and structure while being distinctly different. The best part of learning three different dances that all fit the same music is that you can have all three versions happening on the dance floor at the same time!\r\n', 62, 60, '', '', 0, 1, 2, 7, '', 1, 1, 65, '2009-07-04 14:00:00'),
(423, 'Two 15th century Italian balli', 'Come learn two 15th century Italian dances where the music helps to tell you what comes next. Amoroso Isghardo is short and cute, while Bialte di Castilia (Beautiful Castile) is longer and more involved, with several changes of pace and position.\r\n', 62, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-03 18:00:00'),
(424, 'Two 15th century Italian basse', 'Come learn two 15th century Italian bassadances where the music only provides a beat (if you can find it) and the rest is up to you. Once you know these dances, you can show off your skills to everyone! - Allesandresca, Corona\r\n', 62, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-05 14:00:00'),
(425, 'Bella Gioiosa re-translated and re-reconstructed', 'The results of my first attempt to reconstruct a dance from the original Italian turned out rather well, if significantly different from the popular version. Come learn this three-person cascarda, and I''ll explain why I made the choices that I did in reconstructing it.\r\n', 62, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-04 20:30:00'),
(426, 'Three four-couple English Country Dances strictly reconstructed', 'Come learn a different, perhaps more strict, reconstruction of three English Country Dances and see if you like them more than the version you may be used to. - Newcastle, Nonesuch, A la Mode de France\r\n', 62, 90, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-03 14:30:00'),
(427, 'Odd English Country Dances for three couples', 'These three dances are all unusual in some way, from compound choruses to one with a musical phrase that expects you to count to seven. - Greenwood, Kemp''s Jig, and the Whish\r\n', 62, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-05 17:00:00'),
(428, 'A survey of ''for as many as will'' ECDs', 'There are quite a few \\"for as many as will\\" dances in Playford''s 1st edition ECD, but surprisingly enough they are not all of the same type. This class will go over several of the types in an attempt to illustrate the diversity in the type. - An Old Man is a Bed Full of Bones, Millfield, Paul''s Wharfe, Punk''s Delight, A Soldier''s Life\r\n', 62, 90, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-03 13:00:00'),
(429, 'Kingdom Variations Roundtable', 'A sit-down workshop discussing ''Kingdom variations'' and how so many places can come up with the same interpretation of the sources, and yet others can come up with different variations, all from the same sources.\r\n', 18, 60, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-05 14:00:00'),
(430, 'Composing a Pricksong', 'A technique for composing four-part airs in a hurry, utilising stereotypically mopey English lyrics, the Sexi Bass Method and Thomas Campion''s formula. If time allows, we''ll also cover eight-part polychoral.\r\n', 178, 90, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-04 13:00:00'),
(431, 'White Mensural Time Signatures', 'How to probably read musical notation of the Renaissance. A rundown of the signs of mensural notation from the 16thC period. Covers Morely, Bathe, Ravenscroft and Cramps.\r\n', 178, 60, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-04 18:00:00'),
(432, 'Storytelling through Dance', 'Storytelling through Dance\r\n', 89, 120, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-04 19:30:00'),
(433, 'Bransles - Location, Location, Location', 'Many bransles take their name from the countries where they are customarily danced. In this class, we''ll look at the Bransle of Poitou, the Scottish Bransles, and the Trihory of Brittany. (and possibly Arbeau''s Maltese Bransle, even though it is a Mimed bransle) No experience necessary.\r\n', 16, 60, '', '', 0, 1, 2, 7, '', 1, 1, 65, '2009-07-04 15:00:00'),
(434, 'Improv Dance Workshop', 'Learn to fake improv through the ancient art of practicing. Covers a range of styles. Open to all skill levels.\r\n', 16, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-04 13:00:00'),
(435, 'La Volta', 'La Volta is a form of the galliard found in 16th C France and also known through pictorial evidence to have travelled throughout much of Europe. This will be a practical introduction to La Volta without a lot of the theory involved, come along prepared for a bit of a workout because this dance requires energy and some lifting.\r\n', 48, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-05 13:00:00'),
(436, 'Galliards', 'This will be an informal and practical introduction to the galliard for everyone. This is an energetic dance and you should come to the class prepared for a bit of a workout.\r\n', 48, 60, '', '', 0, 1, 2, 7, '', 1, 1, 66, '2009-07-04 14:00:00'),
(437, 'Warm-up / exercise class', 'Warm-up / exercise class\r\n', 48, 60, '', '', 0, 1, 2, 7, '', 1, 1, 63, '2009-07-03 14:00:00'),
(438, 'Playing for dancing', 'This hands-on class for musicians, dance band leaders and dance instructors includes an overview of historical performance practice as well as offer practical solutions to common problems we face when coordinating the band with the dancers. Some things we may cover include pre-1600 instruments, instrumentation, percussion patterns, music sources and other accessible resources. Participants are encouraged to bring period instruments, both loud and soft, and a music stand. Instruments will be available to try and music will be provided.\r\n', 63, 90, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-04 14:30:00'),
(439, 'Dance with the band', 'This class will be a \\"name that tune\\" style of dance class. There will be no dance instruction. Instead, the band will determine the dances to be done by way of musical hints, dancers will oraganize themselves appropriately and the dance will commence from the beginning.\r\n', 63, 60, '', '', 0, 1, 4, 7, '', 1, 1, 63, '2009-07-03 15:00:00'),
(440, '16th Century German Peasant Dance from Period Woodcuts', 'Reconstructions of German peasant dances based on woodcuts from the 16th century will be explored and brought to the dance floor. Since there are no texts from the region and period describing specific dance choreographies, German woodcut images as well as comparative studies from other styles of dance will be used as a basis for interpreting steps. Limitations of the research as well as alternate interpretations will also be discussed.\r\n', 179, 90, '', '', 0, 1, 2, 7, '', 1, 1, 63, '2009-07-03 19:30:00'),
(441, 'The Dancing Rector of Tortworth and Other Curious Tales from the Archives', 'Dancing was a controversial subject in Tudor and Stuart England, with religious reformers and traditionalists taking each other to court to protest dancing or its suppression. This presentation looks at some of the strange and surprising stories about dancing found in church court records and other archival sources, and considers these tales within their historical context.\r\n', 180, 60, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-03 20:30:00'),
(442, 'Easy Gresley Dances', 'After a brief introduction we will jump right into dancing. this class should be accessible to every one. Up to five dances: : Lebens Disinens, Petigay, Tamrett, Hawthorne and Grene Gynger (if there is time).', 15, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-04 19:30:00'),
(443, 'Troublesome Tribus Triangles - New work on some more convoluted Gresley dances', 'Some of the dances in the Gresley manuscript are quite confusing, especially some with three people where the numbering gets mixed up. Please come an try these reconstructions. We can also look at some possible other choices. Where no music exists Martin Bildner has composed tunes in an appropriate style. Bugil, and TBA\r\n', 15, 60, '', '', 0, 1, 2, 7, '', 1, 1, 65, '2009-07-04 18:00:00'),
(444, 'What then is a doblis? - a Round table on interpretation of the steps and figures found in the Gresl', 'Looking at Middle English dictionaries, usage in multiple dances and other near contemporary dance steps, we will discuss reconstruction options for the steps and floor figures found in the Gresley dances.\r\n', 15, 60, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-03 19:30:00'),
(445, 'New to You: Three Couple Dances from Early Playford', 'Fun three-couple dances less frequently done by SCAdians. Shepherd''s Holiday/Labor in Vain (1651), The Night-Piece/The Shaking of the Sheets (1651), and Woodycock/The Green Man (1652)\r\n', 30, 60, '', '', 0, 1, 2, 7, '', 1, 1, 66, '2009-07-04 20:30:00'),
(446, 'Longways for as Many as Won''t-- Three New Protocontra', 'Come dance the early protocontra dance in longways fashion-- now with 20% less dancing! All kidding aside, these fun dances bring flirtation and socialization to the forefront of English country dancing. A Health to Betty (1651), Paul''s Steeple/The Duke of Norfolk (1651), and Stanes Morris (1651)\r\n', 30, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-03 19:30:00'),
(447, 'Introduction to the Art of Dance Cueing', 'Masterful cueing skills are by far one of the most important facets to an effective dance master. Come learn and practice verbal and visual cueing techniques that work for virtually all participants and help guarantee that dancers will want to come back to your classes! Taught by a group fitness instructor certified by the Aerobics and Fitness Association of America.\r\n', 30, 120, '', '', 0, 1, 2, 7, '', 1, 1, 66, '2009-07-04 17:00:00'),
(448, 'Furioso All''Italiana - A 16th c. Italian Set Dance', 'Caroso offers several Furioso dances, using similar music and sharing some common elements. Come and learn one of them, Furioso All''Italiana, a lovely set dance for three couples. Some 16th c. Italian stepwork required, but no galliard figures.\r\n', 134, 60, '', '', 0, 1, 2, 7, '', 1, 1, 66, '2009-07-04 15:00:00'),
(449, 'The Steps of 16th Century Italian Dance', 'Listen as I compare the step instructions of Caroso, Negri, and Santucci, then argue with me about the consequences. Don''t we have it all wrong? Why didn''t anyone tell me this stuff before now?\r\n', 117, 60, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-04 17:00:00'),
(450, 'So You Want to Be a Dancer', 'YAY dancing!!!! - Half Hannigan, Rufty Tufty, Black Alman, Petit Vriens, Le Bens Distonys\r\n', 181, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-04 14:00:00'),
(451, 'Playford''s F Dances for Four Couples', 'My goal with this class would be to be able to teach the average dancer to be able to both of these dances(Fine Companion & Faine I Would) without someone calling it for them. So one should plan on going through each dance more than just once or twice. Both dances are from Playford 1651', 1, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-05 15:00:00'),
(452, 'Ravenscroft''s Rounds, Catches, and Cannons', 'Come sing some fun late period English rounds compiled by Mr. Ravenscroft. There''ll be a little bit of history, and a lot of singing. Ability to sing from sheet music is helpful, but not necessary.\r\n', 31, 60, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-05 14:00:00'),
(453, 'Obscure 3 couple English Country Dance', 'Beggar Boy, Confesse, Jack Pudding, Adson''s Saraband\r\n', 70, 120, '', '', 0, 1, 2, 7, '', 1, 1, 63, '2009-07-03 17:00:00'),
(454, 'Obscure 4 couple English Country Dance', 'Lord of Carnavann''s Jegg, Lull me beyond thee, Mage on a Cree, Dull Sir John\r\n', 70, 120, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-04 17:00:00'),
(455, 'Origins of Playford Dances', 'Round table discussing the research that I have found regarding tracing the dances published by Playford in The [English] Dancing Master(s) back into SCA period.\r\n', 182, 120, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-03 17:00:00'),
(456, 'Beginning ECD', 'Learn the steps and figures of English Country Dancing, as well as a few commonly done dances.', 182, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-04 18:00:00'),
(457, 'I-talians for the English', 'This class is an extremely basic introduction to 15th Century Italian dances. It focuses on teaching the figures necessary to do the dance, but teaches the steps in English terminology. Amoroso, Anello, Belfiore, Petit Vriens', 182, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-04 15:00:00'),
(458, 'How to teach dance (or any physical skill!)', 'This class is a mixture of lecture and discussion on the theory of how to teach dance and other physical skills. We will focus on: 1) Four stages of teaching a physical skill: describe, demonstrate, practice, and feedback; 2) Sequencing: Beginning with simple skills, and building to more complex. 3) Spiraling: ways to assess starting point, then add new skills, go back to review and reinforce the skills, add more skills, go back again to re-integrate. (Note: if you have taken this class at a past KWDS, this class will have some overlap, but also have fresh content. We will be focusing on a slightly different set of skills than past classes. Because it is partially discussion-based, the class always adapts to the needs/interests of the participants.)\r\n', 108, 90, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-04 13:00:00'),
(459, 'Unchoreographed Arbeau', 'Think Arbeau is all branles? Think again! We''ll look at some of Arbeau''s unchoreographed dances, especially the Tordion and the Coronto. Come prepared to be exposed to some speculative reconstructions and to really move (these two dances great for those with lots of energy to burn)!\r\n', 183, 60, '', '', 0, 1, 2, 7, '', 1, 1, 65, '2009-07-04 13:00:00'),
(460, 'Galliard Workshop', 'Think Galliards are hard? Think again. In this class we''ll review the basics of the French Galliard, focusing on rhythm and simple steps. Then we''ll practice how to put all the pieces together into a coherent dance on the dance floor. Never fear the Galliard again!\r\n', 183, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-03 15:00:00'),
(461, 'Your Dance Event Needs a Special Effect Budget', 'Or at least, it could use a few props and a bit of rehearsal time. Theatricals ranging from trivial to extravagant seems to have been a common ornament for dance parties in period, and recreating that can be fun.\r\n', 112, 60, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-05 13:00:00'),
(462, 'Proper Breathing', 'Yes, we can all breathe -- but exercise and vocal performance both place an extra emphasis on getting good airflow. Throughout our lives we learn bad habits which restrict our breathing, which can lead to the sensation of stage-fright, tight throat and lack of vocal projection. These responses are learned -- and they can be unlearned. Marian of Heatherdale will guide you through easy physical and mental exercises to improve your breathing. This workshop will include simple stretches and breathing techniques; please wear comfortable clothing.\r\n', 184, 60, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-03 17:00:00'),
(463, 'Composing Music for Dancing', 'This class will look at how to go about creating music for dances to which the music has been lost or period-style music for original choreographies. Special attention will be paid to the Gresley manuscript. In the course of the class, a Gresley dance will be reconstructed and music composed for it.\r\n', 185, 60, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-03 13:00:00'),
(464, 'Dancers & Musicians - They Speak Different Languages: How to Communicate When Running a Class or Bal', 'Dancers & Musicians - They Speak Different Languages: How to Communicate When Running a Class or Ball\r\n', 115, 60, '', '', 0, 1, 4, 7, '', 1, 1, 61, '2009-07-05 17:00:00'),
(465, 'Preventing ''Bad'' Reconstructions', 'Oftentimes reconstructions get in the ''wild'' and later become ''that bad reconstruction''. How can we vet dances before they get into the wild without stiffling research?', 115, 60, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-05 15:00:00'),
(466, 'How to Teach European Dance - A Workshop', 'Looking to become a more effective teacher? Or, always wanted to teach but not sure where to start? This class will focus on ways to improve your abilities to teach. Beginning dance teachers are especially welcome. You will volunteer to teach during the class and the rest of us will act as your students. As you teach I will make suggestions with some comments from other students too. People who are not ready to teach but want to learn are invited to act as dance students for our practicing teachers. Please bring the music and the choreography for the dance you want to practice teaching. We will try and work with as many volunteers as time allows.\r\n', 37, 120, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-04 19:30:00'),
(467, 'Tesara For Six', 'Tesara is a weaving dance for 10. This is an adaptation for 6 people. Steps needed will be only briefly taught, so participants should already be familiar with 15th-C Italian dance, or be fast learners willing to mess up.\r\n', 111, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-03 17:00:00'),
(468, 'Vercepe', 'Vercepe is a challenging dance for five people. The class will focus on bringing out a dynamic performance, emphasizing contrast in the different sections. Students should be comfortable with 15th-C Italian dance in all 4 tempi.\r\n', 111, 60, '', '', 0, 1, 2, 7, '', 1, 1, 65, '2009-07-04 17:00:00'),
(469, 'Bassadanza to Waltz Music', 'None of the 15th-c Italian bassadanza descriptions come with music, which makes finding music to match them somewhat difficult. They can be done to music in waltz tempo. Two bassadanze, modified slightly to fit modern waltz phrasing, will be taught. Steps needed will be reviewed, but students should have done at least one dance before with bassadanza tempo, such as Rostiboli. - Ginevra Weasley, Alesandresca\r\n', 111, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-05 17:00:00');
INSERT INTO `class` (`id`, `name`, `description`, `user_id`, `hours`, `limit`, `fee`, `topic_id`, `era_id`, `type_id`, `kwds_id`, `url`, `aerobic_id`, `difficulty_id`, `room_id`, `day`) VALUES
(470, 'Basse to Basse (15th C Basse to Arbeau''s \\"Basse Dance\\") (15th C vs 16th C inte', 'This class seeks to explore possible different step reconstructions for the Basse Dance â€œJouissance vous Donneraiâ€, from Arbeauâ€™s Orchesographie. By starting with the Basse Dance from the preceding era, tracing similar dances in the 15th C Italian repitoire, and then looking at the changes from 15th to 16th century Italian dance, I hope to stimulate a different interpretation of the movements of this dance than the direct Burgundian Basse to Arbeau route might produce. Note that this is a re-offering of a class taught at KWDS VI, mellowed a bit.\r\n', 78, 90, '', '', 0, 1, 2, 7, '', 1, 1, 65, '2009-07-04 19:30:00'),
(471, 'ECD - Odd Lots', 'Four English Country Dances that were either new to me, or ones for which I never had recorded music before now. Thanks to some musicial friends who thought it would be \\"a good exercise\\" for me to write the dance notes for their new CD, I now can play with these dances. Some reconstructions are based on the work of others (from prior KWDS) that have been tweeked a bit to suit my interpretations, and some are my own attempts at reconstruction. Class will include some discussion of reconstruction choices, however main emphasis is on learning and enjoying these dances. Milisons Jeg, Shepeards Holyday, Old Mole, Broome (Bonny Bonny Broome), Cuckolds All a Row\r\n', 78, 90, '', '', 0, 1, 2, 7, '', 1, 1, 62, '2009-07-03 19:30:00'),
(472, 'Expanding your horizons - Reading Modern Sheet Music', 'For those of you who have music in your soul, but just canâ€™t read the notes, this class will provide musicians with the basic tools necessary to read modern sheet music. Youâ€™ll get a good starting point, on a long journey (if youâ€™re interested in music theory) to enriching your musical experience.\r\n', 186, 90, '', '', 0, 1, 4, 7, '', 1, 1, 60, '2009-07-03 14:30:00'),
(473, 'Music improvisation - what to do when there is no sheet m', 'Huge drum circles surround the belly dancer, but nary a melody can be heard above the din. This class is designed to help you collaborate in the dance between improvised music and dancer. We will spend a short time looking at melodic and rhythmic modes before diving in, and playing.\r\n', 186, 60, '', '', 0, 1, 3, 7, '', 1, 1, 60, '2009-07-04 17:00:00'),
(474, 'Music History - Wouldn''t you like to be a troubadour, too?', 'So you want to be a troubadour? If youâ€™ve thought of developing the persona of a troubadour, come learn about who these people were in history. What role did they play in society? Could anyone become a troubadour? What training did they require?\r\n', 186, 90, '', '', 0, 1, 4, 7, '', 1, 1, 61, '2009-07-04 14:30:00'),
(475, 'Dances from the Inns of Court', 'These dances are from Elizabethan London. Gentlemen were expected to learn a set of 9 dances during their studies at the Inns of Court. Lorayne Alman, Old Alman. Black Alman, and Madame Cecilia, plus others as time permits.\r\n', 77, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-03 18:00:00'),
(476, 'Early Period Dance', 'This dance class will look at sources from early period, looking at different sources from which we can gather information on dance prior to any known dance manuals.\r\n', 187, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-05 15:00:00'),
(477, 'Survey of European Dance Sources', 'Where do the historical dances we enjoy come from? Come for an orientation to the period books and manuscripts that are our sources. Discover how completely (or incompletely) they describe the dances, and what additional material they contain.\r\n', 49, 90, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-03 13:00:00'),
(478, 'Vikings Did Too Dance: An Exploration of Period Nordic Dance', 'Based on primary source research by Dame TSivia and her crony in crime, Countess Brynhildr Kormaksdottir (Dr. Sandra Straubhaar), this is an introductory class on the concept of ring-ballad dancing in the Nordic high middle ages and early Renaissance. Included will be dancing 3/4 steps to 4/4 timed music, singing refrains, and a good dollop of fun as well.\r\n', 122, 60, '', '', 0, 1, 2, 7, '', 1, 1, 66, '2009-07-04 19:30:00'),
(479, 'Analyzing and Reconstructing Historical N.E. Dance', 'This class is based on an article in the early 60s of Tournaments Illuminated where Baroness TSivia and Baroness Enid Aurelia of the Tin Isles discussed how to interpret static images of women dancing in order to document the historicity of dance steps from the Near Eastern world. Students will be shown images from Mughul miniatures, Greek carvings, and other extant representations of women as entertainers and analyze what these tell a dancer.\r\n', 122, 60, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-04 18:00:00'),
(480, 'Reconstructing Dances', 'A step by step method for reconstructing dances, with some discussion of the issues involved with specific sources.\r\n', 20, 60, '', '', 0, 1, 2, 7, '', 1, 1, 61, '2009-07-03 15:00:00'),
(481, 'Introduction to 16th Century Italian Dance Steps', 'Commonly used Italian steps and figures explained for beginners. Contentezza d''Amore will be used as an example, but we will not be learning all of any dance. The focus will be on the steps and sequences of steps that make up 16th century Italian dances.', 20, 60, '', '', 0, 1, 2, 7, '', 1, 1, 64, '2009-07-03 13:00:00'),
(482, 'Middle Eastern - Beginner Bellydance', 'Learning the basic movements in the art of bellydance.\r\n', 81, 60, '', '', 0, 1, 3, 7, '', 1, 1, 62, '2009-07-03 17:00:00'),
(483, 'La Castellana and Chiara Stella', 'Thank you, Caroso, for giving us cascarde, for cascarde are wonderful things! One of the easiest of the cute cascarde will be taught: Maestro Etienne de Clermont''s reconstruction of La Castellana from Il Ballarino. This simple, three verse dance with a repeating chorus introduces beginners to some of the step sequences frequently seen in cascarde. Chiara Stella, a competition dance for the Bal d''Argent will also be taught.\r\n', 151, 60, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-02 19:00:00'),
(484, 'Gentilezza d''Amore', 'The instructor''s own reconstruction of Gentilezza d''Amore, a five verse dance from Il Ballarino, will be taught.\r\n', 151, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-04 18:00:00'),
(485, 'Jamming with Mr Susato', 'Unfortunately Mr. Susato was unable to join us but he did send along lots of music. This is an opportunity to relax and just play. Feel free to bring along any other period music you find interesting.\r\n', 189, 60, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-03 18:00:00'),
(486, 'Performance Practice', 'This class is for musicians with good sight-reading skill. We will work on several pieces with the goal of playing as an ensemble rather than as a group of individuals. If the opportunity presents itself we will perform the pieces we learned.\r\n', 189, 60, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-03 19:00:00'),
(487, 'Bransles for Everyone', 'Learn a few bransles for Bal d''Argent.\r\n', 190, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-02 18:00:00'),
(488, 'Standard Bransles Forms', 'A class on the standard branle forms geared towards composers, but with a strong dance component.\r\n', 191, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-04 14:00:00'),
(489, '13th-14th Century Dance', 'A presentation of evidence about 13th and 14th century dancing from a variety of sources, including music, literature and art.\r\n', 178, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-03 14:00:00'),
(490, 'White Mensural Time Signatures', 'What the time signatures of 16thC musical notation mean, and how they relate to dances.\r\n', 178, 60, '', '', 0, 1, 4, 5, '', 1, 1, 69, '2005-07-04 20:00:00'),
(491, '3 couple English Country Dances', 'Less well-known 3 couple ECDs like Dissembling Love, Millison''s Jig, Night Peece, Shepherd''s Holyday, and Woodicock.\r\n', 62, 60, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-02 18:00:00'),
(492, '4 Couple English Country Dances', 'Less well-known 4 couple ECDs like Fine Companion, Gray''s Inn Masque, Lull Me Beyond Thee, Mage on a Cree, etc.\r\n', 62, 60, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-03 14:00:00'),
(493, 'n Couple English Country Dances', 'Playford ECDs that require something other than two, three, or four couples in their instructions (though they may not actually require more to dance).\r\n', 62, 60, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-03 18:00:00'),
(494, 'Event Registration', 'Event registration, paperwork, etc.\r\n', 48, 60, '', '', 0, 1, 5, 5, '', 1, 1, 68, '2005-07-02 14:00:00'),
(495, 'La Spagna and Ly Bens Distonys', 'Learn Ly Bens Distonys and La Spagna, two of the competition dances for Bal d''Argent.\r\n', 48, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-02 20:00:00'),
(496, 'Health and Fitness for Dancers, Fighters, and other Slackers', 'Some basic tips to keep in shape -- stretches, cardio, fitness routines, and diet.\r\n', 48, 60, '', '', 0, 1, 5, 5, '', 1, 1, 70, '2005-07-03 20:00:00'),
(497, 'Il Canario and Galliards from Lupi', 'A workshop looking at the variations of Il Canario and the Galliard presented by Livio Lupi da Caravaggio, one of the less explored 16th C dance masters.\r\n', 48, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-04 19:00:00'),
(498, 'Transcribing Four Part Harmony', 'A class on how to take a harpischord (or lute) piece and transcribe into multi-part single lines. This class will include some basics of composition rules. We will go through some examples of existing transcriptions as well as work as a class to transcribe a piece from the original into parts.\r\n', 175, 60, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-03 15:00:00'),
(499, 'Recorder Playing for Beginners', 'A class aimed at learning some simple notes on the recorder, for complete beginners.\r\n', 192, 60, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-02 15:00:00'),
(500, 'Reading Caroso''s lute tabulature', 'Some notes on reading Caroso''s lute tabulature and turning into modern musical notation.\r\n', 192, 60, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-02 18:00:00'),
(501, 'Musicians Meet and Greet', 'Finn will go over some of the details for the musicians for the event.\r\n', 193, 60, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-02 14:00:00'),
(502, 'Dance Band Practice', 'Band practice for the Bal d''Argent\r\n', 193, 120, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-02 20:00:00'),
(503, 'Keeping a dance band happy', 'This class is designed to give an overview of how to keep dance bands happy at events. It will offer some tips for event stewards, dancers, musicians and heralds and will cover points such as organisation, communication, offering advice/feedback and etiquette. Dicussion on how to educate Stewards, dancers, musicians and heralds will follow as well as sharing of experiences and ideas. This paper is mainly designed for dance bands, but it might also be helpful for other performing artists at events.\r\n', 193, 60, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-03 14:00:00'),
(504, 'Dance Band Practice', 'Band practice for the Sunday evening dance.\r\n', 193, 120, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-03 20:00:00'),
(505, 'Dance Band Practice', 'Band practice for the Monday evening dance.\r\n', 193, 60, '', '', 0, 1, 4, 5, '', 1, 1, 68, '2005-07-04 20:00:00'),
(506, 'A Passage of Arms', 'A Passage of Arms for Rapier and Broadsword (Fencing and Heavy fighting) to be held to commemorate the Known World Dance Symposium and Bal d''Argent. Format: Challenges for Rapier, Broadsword and shield, great axe, and any other suitable combination. Come fight over the barrier, in the field, melee, whatever you please!\r\n', 194, 360, '', '', 0, 1, 5, 5, '', 1, 1, 70, '2005-07-03 14:00:00'),
(507, 'How to Teach Dance (or anything else!)', 'This class covers: different learning styles (kinesthetic/visual/auditory, analytic vs. global, etc.); ways to increase retention; sequencing: the idea of starting with an easier concept, and then building on that; plus spiraling: coming back to the familiar to re-integrate the knowledge before adding in new challenges; characteristics of learners; developing objectives (is goal participation? performance? maximum variety? depth of knowledge of one genre); The class is part theory, and part hands-on (feet-on) practice.\r\n', 108, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-03 20:00:00'),
(508, 'Ballo del Fiore for 2, 3, or for 4 or 5', 'Caroso has three different dances titled Ballo del Fiore - the two, one for 2 dancers at a time and one for 3 at a time, from Il Ballarino and the one for 4 or 5 dancers at a time from Nobilta di Dame. This class covers the three dances, their similarities and differences, some matters relating to steps and also ways of adapting the 3 and the 4 or 5 person versions for SCA use.\r\n', 195, 120, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-03 20:00:00'),
(509, '3 new Pavan Sequences', 'For those who want more possible ways to enjoy beautiful pavan tunes, here are 3 dance sequences that will work to most pavans.\r\n', 68, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-03 19:00:00'),
(510, '1st Edition Playford Dance Language', 'There are always many problems encountered when reconstructing 1st edition Playford dances. Many of the problems are to do with understanding elements that appear to be peculiar to the particular dance in hand e.g. how do we do the arches in Newcastle, how do we progress in Dargeson etc. Other problems are to do with understanding elements that appear to be common to the dances (e.g. how do we step, how do we side?)\r\n', 68, 120, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-04 14:00:00'),
(511, 'La Volta and La Nizzarda', 'Class size - max. 5 couples, others welcome to watch and discuss. La Volte and La Nizzarda are both described in late 16th C dance sources as improvised dances for couples, involving turns and jumps in which the man lifts the woman. They are said to come from Provence, Piedmont (next to Provence) or Nice (alternately in Provence and Piedmont). They are both danced to galliard-like music.\r\n', 196, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-02 15:00:00'),
(512, 'Les Bouffons', 'A sword dance for four from Arbeau''s Orchesography, suitable to be performed as a masque. If possible, I''ll show a film of a group of eight performing a choreography (not Arbeau''s) that includes all six of Arbeau''s passages. Most of the class will be spent on learning the blows (with dowel-rods, not metal swords), the foot-work, and combining them in 2 or 3 of the simpler passages (\\"thrust\\" and \\"three cuts\\", and perhaps \\"hey\\" or \\"bastion\\", depending on how confident people feel). There should also be some time for discussing 16thC masque costume, and how to make modern versions, from the very cheap to the very expensive.\r\n', 196, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-03 15:00:00'),
(513, 'Barriera', 'I spent a while a few years ago comparing the various Barriera choreographies that Caroso wrote (and preparing the one for a couple in Nobilta for a preformance), so that was the first thing I translated from Santucci. I''ve got as far with the Santucci as working out that it goes well to Carsoso''s music, and getting parts 1-7 danceable. I''d really like to either teach one of the versions (perhaps Santucci''s, as it''s so new), or try a talking/discussing session to compare all of them (the four from Caroso, 2 from Negri, one from Santucci, and one extra).\r\n', 196, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-04 15:00:00'),
(514, '15th Century Dances - Another Tradition', 'Dance reconstruction is not an exact science - different interpretations of steps and dances are possible. If you''ve done 15th-c Italian dances in only one style (and didn''t learn them in the Barony of Carolingia or from a related tradition), come and get acquainted with reconstructions based on the work of the late Dr. Ingrid Brainard. We''ll dance through Lauro and Leoncello Vecchio, possibly one other dance if time permits.\r\n', 112, 60, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-02 20:00:00'),
(515, 'Burgundian Basse Danses', '15th-century Burgundian bassedanses are generally underrepresented in SCA ball playlists. This is a pity, because they are elegant dances that are fairly easy to do. We''ll dance through one ''regular'' bassedanse, Casulle la Nouvelle, and (probably) two irregular ones, Beaulte de Castille and la Francoise Nouvelle. We''ll also talk a bit about the source treatises, some alternatives in the reconstruction, and the extravagant court culture these dances came from.\r\n', 112, 60, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-03 15:00:00'),
(516, 'Beginners'' English Country Dance', 'A few simple English Country Dances for the Bal d''Argent\r\n', 197, 60, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-02 15:00:00'),
(517, 'Drumming for a Dance Band', 'Introduction to drumming techniques.\r\n', 198, 60, '', '', 0, 1, 4, 5, '', 1, 1, 67, '2005-07-02 19:00:00'),
(518, 'Cascarde from Caroso', 'Caroso''s cascarde are fun couple dances, perfect for showing off or flirting. This class will cover two cascarde popular in the SCA: Gracca Amorosa from Il Ballarino, and Spagnoletta Regolata from Nobilta di Dame. This class is for those who have at least some familiarity with 16th century Italian dance steps.\r\n', 199, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-03 18:00:00'),
(519, 'Old Measures', 'Learn some allemandes and old measures, suitable for beginners.\r\n', 49, 60, '', '', 0, 1, 2, 5, '', 1, 1, 69, '2005-07-02 19:00:00'),
(520, 'Mixed up Playford', 'For those who enjoy dances where you dance with different people with each repeat, this class offers a variety of dances from Playford''s first edition that mix partners and couples in several flavors of progression. Experience with English Country Dance required.\r\n', 49, 120, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-04 18:00:00'),
(521, 'Two Balletti from Il Ballarino', 'Leggiadria d''Amore and Gratia d''Amore are both elaborated pavans, rather like Contentezza d''Amore, and so should be accessable to anyone acquainted with 16th century steps. The music for Leggiadra is available on one of the Letter of Dance CDs.\r\n', 20, 60, '', '', 0, 1, 2, 5, '', 1, 1, 68, '2005-07-03 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `difficulty`
--

CREATE TABLE IF NOT EXISTS `difficulty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `difficulty`
--

INSERT INTO `difficulty` (`id`, `name`) VALUES
(1, '(none)'),
(2, 'Beginner'),
(3, 'Intermediate'),
(4, 'Advanced');

-- --------------------------------------------------------

--
-- Table structure for table `era`
--

CREATE TABLE IF NOT EXISTS `era` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `era`
--

INSERT INTO `era` (`id`, `name`) VALUES
(1, '(n/a)'),
(2, 'Pre 1400'),
(3, '1400-1500'),
(4, '1500-1600'),
(5, '1600-1700'),
(6, '1700-1800'),
(7, 'Modern');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kwds_id` int(11) NOT NULL,
  `question` tinytext NOT NULL,
  `answer` text NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kwds_id` int(11) NOT NULL,
  `prereg` float NOT NULL,
  `door` float NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE IF NOT EXISTS `fee_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `fee_type`
--

INSERT INTO `fee_type` (`id`, `name`) VALUES
(1, 'Pre-registration Site Fee'),
(2, 'At The Door Site Fee'),
(3, 'Proceedings'),
(4, 'Lodging'),
(5, 'Parking'),
(6, 'Food');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `kingdom_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `url`, `kingdom_id`) VALUES
(1, '(n/a) West', 'http://www.westkingdom.org/', 1),
(2, '(n/a) East', 'http://www.eastkingdom.org/', 2),
(3, '(n/a) Middle', 'http://www.midrealm.org/', 3),
(4, '(n/a) Atenveldt', 'http://www.atenveldt.org/', 4),
(5, '(n/a) Meridies', 'http://www.meridies.org/index.php', 5),
(6, '(n/a) Caid', 'http://www.sca-caid.org/', 6),
(7, '(n/a) Ansteorra', 'http://ansteorra.org/', 7),
(8, '(n/a) Atlantia', 'http://www.atlantia.sca.org/', 8),
(9, '(n/a) An Tir', 'http://antir.sca.org/', 9),
(10, '(n/a) Calontir', 'http://calontir.org/', 10),
(11, '(n/a) Trimaris', 'http://www.trimaris.org/', 11),
(12, '(n/a) Outlands', 'http://www.outlands.org/', 12),
(13, '(n/a) Drachenwald', 'http://www.drachenwald.sca.org/index_new.php', 13),
(14, '(n/a) Artemesia', 'http://www.artemisia.sca.org/', 14),
(15, '(n/a) Aethelmaerc', 'http://www.aethelmearc.org/', 15),
(16, '(n/a) Ealdormere', 'http://www.ealdormere.ca/', 16),
(17, '(n/a) Lochac', 'http://lochac.sca.org/lochac/', 17),
(18, '(n/a) Northshield', 'http://www.northshield.org/', 18),
(19, '(n/a) Gleann Abhann', 'http://www.kingdomofgleannabhann.org/', 19),
(20, 'Shattered Crystal', 'http://www.shatteredcrystal.org/', 3),
(21, '(n/a)', NULL, 20),
(23, 'Saltatoris Dance Guild', 'http://gwommy.tripod.com/saltatoris', 3),
(24, 'Cynnabar', 'cynabar.org', 3);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `name`) VALUES
(1, 'Event Steward (Autocrat)'),
(2, 'Co-autocrat'),
(3, 'Registrations'),
(4, 'Volunteer Coordinator'),
(5, 'Lodging Coordinator'),
(6, 'European Dance Class Coordinator'),
(7, 'Middle Eastern Dance Class Coordinator'),
(8, 'Music Class Coordinator'),
(9, 'Class Scheduler'),
(10, 'Musician Coordinator'),
(11, 'Merchant Coordinator'),
(12, 'Troll'),
(13, 'Proceedings'),
(14, 'Newcomer Assisstance'),
(15, 'Publicity'),
(16, 'Web Maintenance'),
(17, 'Feast Steward');

-- --------------------------------------------------------

--
-- Table structure for table `kingdom`
--

CREATE TABLE IF NOT EXISTS `kingdom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `kingdom`
--

INSERT INTO `kingdom` (`id`, `name`, `url`) VALUES
(1, 'West', 'http://www.westkingdom.org/'),
(2, 'East', 'http://www.eastkingdom.org/'),
(3, 'Middle', 'http://www.midrealm.org/'),
(4, 'Atenveldt', 'http://www.atenveldt.org/'),
(5, 'Meridies', 'http://www.meridies.org/index.php'),
(6, 'Caid', 'http://www.sca-caid.org/'),
(7, 'Ansteorra', 'http://ansteorra.org/'),
(8, 'Atlantia', 'http://www.atlantia.sca.org/'),
(9, 'An Tir', 'http://antir.sca.org/'),
(10, 'Calontir', 'http://calontir.org/'),
(11, 'Trimaris', 'http://www.trimaris.org/'),
(12, 'Outlands', 'http://www.outlands.org/'),
(13, 'Drachenwald', 'http://www.drachenwald.sca.org/index_new.php'),
(14, 'Artemisia', 'http://www.artemisia.sca.org/'),
(15, 'Aethelmaerc', 'http://www.aethelmearc.org/'),
(16, 'Ealdormere', 'http://www.ealdormere.ca/'),
(17, 'Lochac', 'http://lochac.sca.org/lochac/'),
(18, 'Northshield', 'http://www.northshield.org/'),
(19, 'Gleann Abhann', 'http://www.kingdomofgleannabhann.org/'),
(20, '(n/a)', '');

-- --------------------------------------------------------

--
-- Table structure for table `kwds`
--

CREATE TABLE IF NOT EXISTS `kwds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` varchar(100) NOT NULL,
  `name` varchar(75) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `kingdom_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `class_date` timestamp NULL DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `kwds`
--

INSERT INTO `kwds` (`id`, `banner`, `name`, `address`, `city`, `state`, `country`, `zip`, `group_id`, `kingdom_id`, `status_id`, `facebook`, `class_date`, `start_date`, `end_date`, `description`) VALUES
(1, '', 'Regina Coeli Retreat Center', '17225 Regina Coeli Road', 'Covington', 'LA', 'USA', '70435', 5, 5, 1, '', '1997-01-15 05:00:00', '1997-01-30 05:00:00', '1997-02-02 05:00:00', 'SIXTEEN INSTRUCTORS AND RESEARCHERS FROM EIGHT DIFFERENT KINGDOMS!<br /><br />This Symposium will include many diverse courses of study for dancers of all levels of expertise. There will be classes in English Country Dance, 15th and 16th Century Italian Renaissance Dance, Court Dances of England and France, as well as Middle Eastern Dance, and classes for Musicians, Dance Research, Reconstruction, Choreography, and the Art of Dance Teaching.<br /><br />DANCE CLASSES TO RUN FRIDAY THROUGH SUNDAY MORNING<br /><br />The site opens on Thursday evening for folks arriving for Friday activities. These activities include for those who want to sightsee a PROFESSIONAL GUIDED TOUR of NEW ORLEANS for just $15. (Send tour questions to reservation address.)<br /><br />For those who came to dance and learn on Friday we have a full day of classes culminating in an exciting CHOREOGRAPHY WORKSHOP- led by MASTER SION ANDREAS O WYNEDD, MISTRESS ROSINA DEL BOSCO AND MESSER GIUSEPPE FRANCESCO DA BORGIA.<br /><br />Friday night the site will play host to the theme SCA FAVORITE DANCES featuring dances popular throughout the Known World.<br /><br />Saturday there will be three classes running simultaneously all day to prepare for Saturday night&#92;&#92;&#39;s masked ball with a Carnival theme, THE KNOWN WORLD DANCE SYMPOSIUM GRAND BALL. There will also be a special revel for those of you who are interested in Middle Eastern Dancing and playing Middle Eastern music.<br /><br />Sunday, will feature a special recreation of a period style ball. You&#92;&#92;&#39;ll want to stay and be a part of the CAROSO BALL which COUNTESS MARA TUDORA KOLAROVA has graciously agreed to run and features dances from English Country to Pavans to Italian in a period setting.'),
(2, '', 'Lewis and Clark Community College', '5800 Godfrey Rd', 'Godfrey', 'IL', 'USA', '62035', 3, 3, 1, '', '1999-05-21 04:00:00', '1999-05-21 04:00:00', '1999-05-23 04:00:00', 'The Barony of Shattered Crystal invites you all to the Second Known World Dance Symposium. The Symposium be three days of classes covering European court dance, Middle Eastern dance, and other traditional dance forms, dance music and musical concerns, and dance research and theory. <br /><br />'),
(3, '', 'Boston University', '1 University Rd', 'Boston', 'MA', 'USA', '02215', 2, 2, 1, '', '2001-06-08 04:00:00', '2001-06-08 04:00:00', '2001-06-12 04:00:00', 'Dancers, musicians, scholars and teachers - all are invited to gather in Carolingia for five glorious days of dancing, music, classes and balls. Join us for the Third Known World Dance Symposium! <br /><br />Running from Friday June 8 through Tuesday June 12, 2001, this event will focus on all aspects of period dance and dance music. It will also overlap the first days of the Boston Early Music Festival (BEMF), a huge non-SCA event focused on music (and some dance) from the Renaissance and Baroque eras. See http://www.bemf.org for more information about BEMF. Some SCA members might like to remain in Boston for BEMF, June 11-17. To encourage crossover from BEMF, Tuesday classes will be open to the public (June 12). <br /><br />The Known World Dance Symposium will be held at Boston University. Check in at the Boston University School for the Arts, 855 Commonwealth Avenue, Boston, Massachusetts. The site will open at 4pm on Friday June 8, and there will be an informal ball that evening to welcome everyone. Classes begin Saturday and run through Tuesday, June 9-12. Formal balls are planned for the evenings of Saturday, Sunday, and Monday, June 9-11. (See the detailed schedule for specific times.) Tuesday, the day of overlap with BEMF, will be open to non-SCA members (who will not be in garb). We encourage SCA members to remain in garb on Tuesday to provide visual interest and make identifying newcomers easier. <br /><br />'),
(4, '', 'University Center', '605 South West Street', 'Arlington', 'TX', 'USA', '76010', 7, 7, 1, '', '2003-06-06 04:00:00', '2003-06-06 04:00:00', '2003-06-08 04:00:00', 'Come join us for the Known World Dance and Music Symposium IV, held in the glorious lands of Ansteorra. There will be much merriment, joy and gaity. Follow the footsteps of Negri, Coroso, Playford and other choreographers amidst lovely music and spritely dancers. Accompany us in 3 days of dancing and teaching!<br /><br />The Symposium will be held in the Kingdom of Ansteorra by the College of Threebridges, June 6-8, 2003. Mundanely, the University of Texas at Arlington in Arlington, Texas. The Event Steward is Philip White.'),
(5, '', '', '', 'Sydney', 'New South Wales', 'Australia', '', 17, 17, 1, '', '2012-07-02 04:00:00', '2005-07-02 04:00:00', '2005-07-04 04:00:00', 'The Known World Dance Symposium is all over for another year. The event in 2005 was fabulous as I&#39;m sure those who went will attest.<br /><br />**The server which originally hosted this information crashed and most information for this event was unfortunately lost.'),
(6, '', 'University of Washington', '185 Stevens Way', 'Seattle', 'WA', 'USA', '98105', 9, 9, 1, '', '2007-06-19 04:00:00', '2007-06-28 04:00:00', '2007-07-01 04:00:00', 'The sixth biennial Known World Dance Symposium is underway in Seattle, Washington on the campus of the University of Washington. Our focus is historical dance up through 1651. The symposium features instruction in particular dances, presentations on research and reconstruction, dance performances, social dancing, and more!<br /><br />If you&#39;re a casual dancer, or want to become one, come to our special &#92;&#92;&#92;&#92;&#92;&#92;&#92;&#34;Day of Dance&#92;&#92;&#92;&#92;&#92;&#92;&#92;&#34; at KWDS on Saturday, June 30. There will be six 30-minute workshops for beginners in the afternoon taught by instructors from across the Known World; then, after the dinner break, you can show off what you&#39;ve learned at a grand ball with live music, plus see more dances taught at the event and some performances by Seattle Early Dance.<br /><br />On the other hand, if you&#39;re ready to take your dancing to the next level, come to the whole Known World Dance Symposium. We have multiple tracks of sessions all day Friday, Saturday, and on Sunday morning. We have dances on Friday and Saturday nights, and a ball following period etiquette rules on Sunday afternoon. <br /><br />'),
(7, '', 'McMaster University', '1280 Main St West', 'Hamilton', 'Ontario', 'Canada', 'L8S 4K1', 16, 16, 1, '', '2009-07-02 04:00:00', '2009-07-02 04:00:00', '2009-07-05 04:00:00', 'Come enjoy an extended weekend of Renaissance dancing with teachers from all over the Known World. There will be four very intense and stimulating days of classes and nightly costumed balls abundant with dancing and music. There will be activities for enthusiasts of all levels, from first time beginners to armchair dancers who wish to debate the intricacies of style. There will also be classes for those interested in instrumental music and Middle Eastern styles of dance.'),
(8, 'kwds8.png', 'Indiana Memorial Union', '900 E 7th St', 'Bloomington', 'IN', 'USA', '47405', 3, 3, 3, '', '2011-07-01 04:00:00', '2011-07-01 04:00:00', '2011-07-03 04:00:00', 'We invite teachers to submit materials for the Proceedings book, which will be available to attendees. This can range from an outline of points covered, to a scholarly paper. Please keep in mind that although we are not requiring a specific citation format, materials should adhere to a publishable standard for attribution of sources. <br /><br />The Proceedings book containing class notes and papers will be available for purchase for $7 until May 1, 2011 and for $10 thereafter.<br /> <br />The deadline for submissions is May 1, 2011. Submissions can be in PC, Mac, or UN*X format (PDF, MS Word, WordPerfect, TeX, etc.). For information on submitting materials for the Proceedings, contact the editor, Sir Alan Culross <br />'),
(9, '', 'Ohio State University Student Union', '1739 N High St.', 'Columbus', 'OH', 'USA', '43210', 3, 3, 3, '', '2012-05-20 04:00:00', '2012-06-21 04:00:00', '2012-06-24 04:00:00', 'Multiple tracks of dance and music classes including:<br /><br />â€¢Beginner Dances<br />â€¢15th-c.-16th-c. Dances from Italy, France, and England<br />â€¢English Country Dancing<br />â€¢Instrumental Music<br />â€¢Middle Eastern and Known World Dance<br />â€¢Middle Eastern and Known World Music<br />â€¢Academic Seminars<br />'),
(10, '', '', '', 'Saratoga Springs', 'NY', 'USA', '', 2, 2, 3, '', '2013-01-01 05:00:00', '2013-02-01 05:00:00', '2013-12-31 05:00:00', ''),
(11, '', '', '', '', '', 'Germany', '', 13, 13, 3, '', '2015-01-01 05:00:00', '2015-01-01 05:00:00', '2015-12-31 05:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `prefix`
--

CREATE TABLE IF NOT EXISTS `prefix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `prefix`
--

INSERT INTO `prefix` (`id`, `name`) VALUES
(1, ''),
(2, 'Mr.'),
(3, 'Mrs.'),
(4, 'Ms.'),
(5, 'Dr.');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `kwds_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `user_id`, `job_id`, `kwds_id`) VALUES
(1, 2, 1, 2),
(2, 3, 6, 2),
(3, 4, 7, 2),
(4, 5, 1, 3),
(5, 6, 3, 3),
(6, 7, 5, 3),
(7, 7, 14, 3),
(8, 8, 9, 3),
(9, 9, 10, 3),
(10, 10, 7, 3),
(11, 11, 13, 3),
(12, 12, 15, 3),
(13, 12, 16, 3),
(14, 13, 11, 3),
(15, 14, 4, 3),
(16, 16, 1, 7),
(17, 15, 2, 7),
(18, 16, 6, 7),
(19, 17, 3, 7),
(20, 18, 12, 7),
(21, 18, 15, 7),
(22, 19, 10, 7),
(23, 20, 1, 8),
(24, 21, 6, 8),
(25, 22, 7, 8),
(26, 23, 8, 8),
(27, 24, 10, 8),
(28, 25, 13, 8),
(29, 26, 3, 8),
(30, 26, 12, 8),
(31, 27, 1, 9),
(32, 28, 5, 9),
(33, 29, 7, 9),
(34, 30, 6, 9),
(35, 24, 10, 9),
(36, 31, 10, 9),
(37, 32, 15, 9),
(40, 30, 2, 9),
(48, 37, 1, 4),
(49, 38, 3, 4),
(50, 39, 6, 4),
(51, 40, 6, 4),
(52, 41, 5, 4),
(53, 42, 13, 4),
(54, 43, 7, 4),
(55, 44, 16, 4),
(56, 46, 12, 4),
(57, 47, 12, 4),
(58, 45, 10, 4),
(59, 49, 1, 6),
(60, 48, 1, 5),
(63, 51, 1, 1),
(65, 53, 3, 1),
(66, 50, 9, 1),
(68, 52, 17, 1),
(70, 63, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `building` varchar(30) NOT NULL,
  `size` varchar(30) NOT NULL,
  `kwds_id` int(11) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `building`, `size`, `kwds_id`, `note`) VALUES
(1, 'State Room East', '', '', 8, ''),
(2, 'Georgian', '', '', 8, ''),
(3, 'Frangipani', '', '', 8, ''),
(4, 'Alumni Hall', '', '', 8, ''),
(5, 'Solarium I', '', '', 8, ''),
(6, 'Solarium III', '', '', 8, ''),
(8, 'Barbie Tootle Room', '', '', 9, ''),
(9, 'Cartoon Room', '', '', 9, ''),
(10, 'Creative Arts Room', '', '', 9, ''),
(11, 'Dance Room 1', '', '', 9, ''),
(12, 'Dance Room 2', '', '', 9, ''),
(13, 'Grand Ballroom East', '', '', 9, 'Large'),
(14, 'Grand Ballroom West', '', '', 9, 'Small'),
(15, 'Great Hall Room 1&2', '', '', 9, ''),
(16, 'Great Hall Room 3', '', '', 9, ''),
(17, 'Hayes Cape Room', '', '', 9, ''),
(18, 'Interfaith and Prayer Room', '', '', 9, ''),
(19, 'Maudine Cow Room', '', '', 9, ''),
(20, 'Ohio Staters Tradition', '', '', 9, ''),
(21, 'Performance Hall', '', '', 9, ''),
(22, 'Potter Plaza', '', '', 9, 'Off Performance Hall'),
(23, 'Rosa Maliabouni Room', '', '', 9, ''),
(24, 'Round Meeting Room', '', '', 9, ''),
(25, 'Senate Chamber', '', '', 9, ''),
(26, 'Student-Alumni Council Room', '', '', 9, ''),
(27, 'Suzanne Scharer Room', '', '', 9, ''),
(28, 'Tonya Rutner Room', '', '', 9, ''),
(29, 'Room A', '', '', 1, ''),
(30, 'Room B', '', '', 1, ''),
(31, 'Room C', '', '', 1, ''),
(32, 'Lecture', '', '', 1, ''),
(33, 'Music', '', '', 1, ''),
(34, 'Gym', '', '', 2, ''),
(35, 'Room 1', '', '', 2, ''),
(36, 'Room 2', '', '', 2, ''),
(37, 'Room 3', '', '', 2, ''),
(38, 'Room 4', '', '', 2, ''),
(39, 'Conference Room', '', '', 2, ''),
(40, 'SFA 102', 'Shcool for the Arts', '', 3, ''),
(41, 'SFA 105', 'Shcool for the Arts', '', 3, ''),
(42, 'SFA 106', 'Shcool for the Arts', '', 3, ''),
(43, 'SFA 109', 'Shcool for the Arts', '', 3, ''),
(44, 'Gym', 'Sargent Gym', '', 3, ''),
(45, 'Dance Studio', 'Sargent Gym', '', 3, ''),
(46, 'Lecture Room', 'Sargent Gym', '', 3, ''),
(47, 'Gym (side 2)', '', '', 3, ''),
(48, 'Guadalupe', '', '', 4, ''),
(49, 'San Saba/Palo Pinto', '', '', 4, ''),
(50, 'Concho/Red River', '', '', 4, ''),
(51, 'Neches/San Jacinto', '', '', 4, ''),
(52, 'Rio Grande A', '', '', 4, ''),
(53, 'Rio Grande B', '', '', 4, ''),
(54, 'Rosebud Theatre', '', '', 4, ''),
(55, 'Red River', '', '', 4, ''),
(56, 'Meany 265', '', '', 6, ''),
(57, 'Meany 266', '', '', 6, ''),
(58, 'Meany 267', '', '', 6, ''),
(59, 'MGH Commons', '', '', 6, ''),
(60, 'TSH B129', '', '', 7, ''),
(61, 'TSH 122', '', '', 7, ''),
(62, 'TSH 118', '', '', 7, ''),
(63, 'TSH B106', '', '', 7, ''),
(64, 'Con Hall', '', '', 7, ''),
(65, 'Studio 1', '', '', 7, ''),
(66, 'Studio 2', '', '', 7, ''),
(67, 'Octagon', '', '', 5, ''),
(68, 'McDonald Wing', '', '', 5, ''),
(69, 'Library', '', '', 5, ''),
(70, 'Quadrangle', '', '', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE IF NOT EXISTS `seminar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Approved'),
(2, 'Proposed'),
(3, 'Tentative'),
(4, 'Open for Bids');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE IF NOT EXISTS `title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `name`) VALUES
(1, ''),
(2, 'Lady'),
(3, 'Lord'),
(4, 'King'),
(5, 'Queen'),
(6, 'Baronness'),
(7, 'Baron'),
(8, 'THL'),
(9, 'Master'),
(10, 'Mistress'),
(11, 'Count'),
(12, 'Countess'),
(13, 'Viscount'),
(14, 'Viscountess'),
(15, 'Sir'),
(16, 'Duke'),
(17, 'Duchess');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, '(none)'),
(2, 'European Dance'),
(3, 'Middle Eastern'),
(4, 'Music'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

CREATE TABLE IF NOT EXISTS `update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `update`
--

INSERT INTO `update` (`id`, `user_id`, `date`, `description`) VALUES
(1, 1, '2012-06-08 18:57:19', 'Added this form to track updates'),
(2, 1, '2012-06-08 19:08:34', 'Made pages for all options in the main menu'),
(3, 1, '2012-06-08 19:10:15', 'Users can now update their information and change his/her password'),
(4, 1, '2012-06-08 19:42:50', 'Logged-in users can add new SCA groups to the database'),
(5, 1, '2012-06-08 21:13:15', 'Users can see title of classes that they have submitted'),
(6, 1, '2012-06-09 09:05:37', 'autocrats and class schedulers can add rooms for their KWDS'),
(7, 1, '2012-06-09 18:01:44', 'Added "class submission end date" for each KWDS'),
(8, 1, '2012-06-10 08:47:59', 'All classes from KWDS Proceedings have been entered into database (except descriptions).'),
(9, 1, '2012-06-11 03:58:37', 'Just realized that last post should have said KWDS8, not all.'),
(11, 1, '2012-06-11 19:03:02', 'Staff members can not edit info after their KWDS event is over.'),
(12, 1, '2012-06-11 23:59:01', 'Autocrats(or co-autocrats) can edit/update all the KWDS information, but not if their event is over.'),
(13, 1, '2012-06-12 15:10:08', 'Finished 1st draft of schedule page, see KWDS8 for best results.'),
(14, 1, '2012-06-13 04:31:29', 'If you click a class on the schedule, a full description appears at the top of the screen.'),
(15, 1, '2012-06-13 04:32:10', 'A full list of scheduled classes can be viewed on the classes page.'),
(16, 1, '2012-06-13 22:23:30', 'I think I''ve got a solution for scheduling classes. I will be testing it with KWDS9 class info.'),
(17, 1, '2012-06-14 14:08:46', 'All of KWDS9 classes have been entered in the database and appear on the schedule just fine.'),
(18, 1, '2012-06-14 22:16:22', 'KWDS1 Classes are in the database (except I can''t find the Middle Eastern classes).'),
(19, 1, '2012-06-15 15:03:19', 'All KWDS2 classes are in (though some go off the schedule, will figure out how to fix that at some point).'),
(20, 1, '2012-06-17 18:02:47', 'KWDS3 classes are in the database (there''s some that I don''t know if they were scheduled or not)'),
(21, 1, '2012-06-18 02:44:52', 'KWDS4 classes are in.'),
(22, 1, '2012-06-18 21:13:50', 'KWDS6 classes have been added.'),
(23, 1, '2012-06-19 09:36:38', 'Teacher page now shows a list of all teachers and their classes with links to their profile page or individual class information'),
(24, 1, '2012-06-19 10:13:22', 'You can now hide a particular type of class (European, Music, or Middle Eastern) from the block schedule'),
(25, 1, '2012-06-20 14:46:54', 'Checkboxes on schedule page work now. It''ll show you a list of the classes you marked ordered by time.'),
(26, 1, '2012-06-20 20:51:49', 'All classes for KWDS 7 have been entered. Now that leaves KWDS5 as the only one without dance class info.'),
(27, 1, '2012-06-20 23:05:12', 'Somehow, I found the class listing for KWDS5 (http://www.sca.org.au/kwds/index.php/standard/113/267). So now all classes (that I could find) for all KWDS''s are in the database.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `prefix_id` int(11) NOT NULL,
  `first` varchar(30) DEFAULT NULL,
  `last` varchar(30) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `title_id` int(11) NOT NULL,
  `sca_first` varchar(30) DEFAULT NULL,
  `sca_last` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `about` text,
  `picture` varchar(100) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `prefix_id`, `first`, `last`, `nickname`, `title_id`, `sca_first`, `sca_last`, `email`, `about`, `picture`, `group_id`, `address`, `city`, `state`, `country`, `zip`, `phone`) VALUES
(1, 'Gwommy', '28ace437ced6c72e1d0a5a8fd4b7e67a', 2, 'Bill', 'Holderman', 'Gwommy', 8, 'Gwommy', 'Anpurpaidh', 'gwommy@gmail.com', 'I like purple.', '', 23, '842 Kent St', 'Portland', 'MI', 'USA', 48875, 2147483647),
(2, 'Bubba', '098f6bcd4621d373cade4e832627b4f6', 1, 'Rick', 'Buzzard', '', 1, 'Bubba', 'Godgodsson', '', '', '', 21, '2401 Holland', 'Godfrey', 'IL', 'USA', 62035, 2147483647),
(3, 'Sion', '098f6bcd4621d373cade4e832627b4f6', 1, 'Ian', 'Engle', 'Uncle Sion', 1, 'Sion', 'Andreas o Wynedd', '', '', '', 21, 'P.O. Box 12092', 'Columbus', 'OH', 'USA', 43212, 2147483647),
(4, 'Edwina', '098f6bcd4621d373cade4e832627b4f6', 1, 'Sue', 'Moon', '', 1, 'Edwina', 'Dirks Sterne', 'Swallis614@aol.com', '', '', 21, '1584 Blake Bottom Road', 'Huntsville', 'AL', 'USA', 35806, 2147483647),
(5, 'Ayden', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Ayden', 'Pathfinder', 'ayden@carolingia.org', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Pandaulf', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Pandaulf', NULL, 'pandaulf@carolingia.org', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Godyth', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Godyth', 'Anyon', 'gofith@carolingia.org', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, 2147483647),
(8, 'Maria', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Maria', 'Elisabetta Gonzaga', 'besslibby@carolingia.org', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Tibicen', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Tibicen', NULL, 'tibicin@carolingia.org', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Lakshmi', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Lakshmi', 'Amman', 'beth@pir.net', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Aleksandr', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Aleksandr', 'Ruslanovich', 'yevsha@earthlink.net', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Adele', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Adele', 'Mallory', 'adele@carolingia.org', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Lilias', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Lilias', 'de Cheryngton', 'cmccullo@wellesley.edu', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Tamar', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Tamar', 'bat Reuven', 'tamar@carolingia.org', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Emma', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Emma', 'Dansmeyla', NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Darius', '098f6bcd4621d373cade4e832627b4f6', 1, 'David', 'Learmonth', NULL, 1, 'Darius', 'the Dancer', NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Cristabel', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Cristabel', 'Wensleydale', NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Catherine', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Catherine', 'of Eoforwic', NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Magnunnr', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Magnunnr', 'Hringsdottir', NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Urraca', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Urraca', 'Yriarte de Gamboa', 'mrailing2@yahoo.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Sionnon', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Sionnon', 'O''Malley', 'kwdanceclasses@yahoo.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Hala', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Hala', NULL, 'Heather.Pund@gmail.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Robyyan', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Robyyan', 'Torr d''Elandris', 'rtesca-kwds2011@yahoo.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Aaron', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Aaron', 'Drummond', 'aelkiss@umich.edu', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Alan', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Alan', 'Culross', 'msquires@iga.in.gov', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Olivia', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Olivia', 'Green', 'oliviagreene1490@yahoo.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Gannar', '098f6bcd4621d373cade4e832627b4f6', 1, 'Tom', 'Cherry', NULL, 1, 'Gannar', 'Siggurdson', 'gunnar242@yahoo.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Gwalchmai', '098f6bcd4621d373cade4e832627b4f6', 1, 'Jack', 'Needles', 'Malachy', 1, 'Gwalchmai', 'ap Bledig', 'jneedles@gmail.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Chandara', '098f6bcd4621d373cade4e832627b4f6', 1, 'Dixie', 'Baker Needles', NULL, 1, 'Chandara', 'Gamal', 'chandara.gamal@gmail.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Felice', '098f6bcd4621d373cade4e832627b4f6', 1, 'Sarah', 'Cordingley', 'Felice', 1, 'Felice', 'Debbage', 'felicedebbage@gmail.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Jadwiga', '098f6bcd4621d373cade4e832627b4f6', 1, 'Monique', 'Rio', NULL, 1, 'Jadwiga', 'Krzyzanowska', 'mcrade@gmail.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Michel', '098f6bcd4621d373cade4e832627b4f6', 1, 'Michael', 'Cordingley', NULL, 1, 'Michel', 'le Marchant', 'michael.cordingley@gmail.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Richard', '098f6bcd4621d373cade4e832627b4f6', 1, 'Richard', 'Greenawalt', NULL, 1, 'Richard', 'Ealdwulf', 'rgreen105@aol.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Sofie', '098f6bcd4621d373cade4e832627b4f6', 1, 'Mary', 'Novak', NULL, 1, 'Sofie', 'von Kolln', 'novak.195@osu.edu', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Gwyneth', '098f6bcd4621d373cade4e832627b4f6', 1, 'Ginny', 'Beatty', NULL, 1, 'Gwyneth', 'Banfhidhlier', 'mizginny@yahoo.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Anna', '098f6bcd4621d373cade4e832627b4f6', 1, 'Monti', 'Greenawalt', NULL, 1, 'Anna', 'of the Western Hill', 'annawhill@aol.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Philip', '098f6bcd4621d373cade4e832627b4f6', 1, 'Craig', 'Shupee', 'Philip', 1, 'Philip', 'White', 'philipwhite@hotmail.com', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Ealasaiad', '098f6bcd4621d373cade4e832627b4f6', 1, 'Sandra', 'Geil', 'Ealasaid', 1, 'Ealsasaid', 'Mac al''Bhaird al Aeryn', 'aeryngeil@thegrils.net', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Guillaume', '098f6bcd4621d373cade4e832627b4f6', 1, 'Russell', 'Kinder', 'Guillaume', 1, 'Guillaume', 'de Troyes', 'russmax@sbccglobal.net', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Isabeau', '098f6bcd4621d373cade4e832627b4f6', 1, 'Erika', 'Kinder', 'Isabeau', 1, 'Isabeau', 'Lallement', 'russmax@sbcglobal.net', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Melissent', '098f6bcd4621d373cade4e832627b4f6', 1, 'Michelle', 'Henry', 'Capricia', 1, 'Melissent', 'd''Aulnay the Capricious', 'cshenry@ev1.net', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Ariane', '098f6bcd4621d373cade4e832627b4f6', 1, 'Christi', 'Cooper', 'Ariane', 1, 'Ariane', 'Lancaster', 'rendancers@sbcglobal.net', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Sayyida', '098f6bcd4621d373cade4e832627b4f6', 1, 'Sandra', 'White', 'Sayyida', 1, 'Sayyida', 'al Sheriffa Sna bint Kieran al Kerra', 'swhite@pegausus-international.com', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Lowrie', '098f6bcd4621d373cade4e832627b4f6', 1, 'Nadine', 'Latief', 'Lowrie', 1, 'Lowrie', 'Leulyn', 'nl33@cornell.edu', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Katriana', '098f6bcd4621d373cade4e832627b4f6', 1, 'Evelyn', 'Alden', 'Katriana', 1, 'Katriana', 'op den Dijk', 'calonkat@yahoo.com', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Gerita', '098f6bcd4621d373cade4e832627b4f6', 1, 'Carolle', 'Cox', 'Gerita', 1, 'Gerita', 'del Mare', 'hpockets@verizon.net', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Morgan', '098f6bcd4621d373cade4e832627b4f6', 1, 'Margo', 'Hablutzel', 'Morgan', 1, 'Morgan', 'Cain', 'morgan@earthlink.net', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Del', '098f6bcd4621d373cade4e832627b4f6', 1, '', '', 'Del', 1, 'Delbert', 'von Strassburg', 'fake@email.com', '', NULL, 17, '', '', '', '', 0, 0),
(49, 'Trahaearn', '098f6bcd4621d373cade4e832627b4f6', 1, 'Peter', 'Durham', 'Trahaearn', 1, 'Trahaearn', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'William', '098f6bcd4621d373cade4e832627b4f6', 1, 'Bill', 'Street Jr.', 'William', 1, 'William', 'Redcape of Iron Mountain', 'billqs@aol.com', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Shaul', '098f6bcd4621d373cade4e832627b4f6', 1, 'Steve', 'Faber', 'Shoiel', 1, 'Shaul', 'ben Yisrael Poznan', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Francesca', '098f6bcd4621d373cade4e832627b4f6', 1, 'Frances', 'Faber', 'Francesca', 1, 'Francesca', 'da Triani', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Christine', '098f6bcd4621d373cade4e832627b4f6', 1, 'Christine', 'Pacheco', 'Christine', 1, 'Cristina', 'de Asturias', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Alina', '098f6bcd4621d373cade4e832627b4f6', 1, 'Elaine', 'Cohen', 'Alina', 10, 'Alina', 'of Foxwood', 'alina@sca.org', 'Yay! Dancing!', NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Amalie', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Amalie', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Amirah', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Amirah', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Carlo', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Carlo', 'della Casa', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Rowan', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, 'Rowan', 1, 'Catherine', 'of the Rowan Tree', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Conrad', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Conrad', 'Marin von Kessel', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Christian', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Christian', 'd''Hiver', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Dafydd', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Dafydd', 'Cyhoeddwr', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Deonna', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 10, 'Deonna', 'von Aachen', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Eiko', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Eiko', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Ermine', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Ermine', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Evelynne', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Evelynne', 'Merrymet', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Fiona', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Fiona', 'macLachlan', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'John', '098f6bcd4621d373cade4e832627b4f6', 2, 'John', 'Gardiner-Garden', '', 1, 'John', 'Garden', 'fake@email.com', '', NULL, 21, '', '', '', '', 0, 0),
(69, 'friar Guillaume', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Guillaume', 'di San Marino', 'fake@email.com', NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'James', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 3, 'James', 'Blackcoat', 'fake@email.com', NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Leonie', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Leonie', 'Leduc', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Margrett', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Margrett', 'Norwoode', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Midair', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Midair', 'MacCormaic', 'fake@email.com', NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Paul', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 8, 'Paul', 'the Simple', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Roselyne', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Roselyne', 'de l''Estrangere', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Staci', '098f6bcd4621d373cade4e832627b4f6', 1, 'Staci', 'Jones', NULL, 1, NULL, NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Stefan', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 7, 'Stefan', 'of Cambion', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Sara', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Sara', 'de Bonneville', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Thora', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Thora', 'von Metten', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Tzipporah', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 10, 'Tzipporah', 'da Pesaro', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Valizan', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Valizan', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Amelie', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 10, 'Amelie', 'd''Anjou', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Robyn Solarius', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Robyn', 'Solarius', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Margaret', '098f6bcd4621d373cade4e832627b4f6', 1, '', '', '', 2, 'Margaret', 'Raynsford', 'fake@email.com', '', NULL, 3, '', '', '', '', 0, 0),
(85, 'Ron', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Ron', 'Fisher', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Fern', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 12, 'Fern', 'de la Foret', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Aiden', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Aiden', 'Elfeadur', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Henry', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 8, 'Henry', 'of Maldon', 'fake@email.com', NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Daniele', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 3, 'Daniele', 'di Padola', 'fake@email.com', NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Genevieve', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Genevieve', 'd''Auvergne', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Ginevra', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Ginevra', 'Boscoli', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Maurin', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 3, 'Maurin', 'Lessault', 'fake@email.com', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Robyn', '098f6bcd4621d373cade4e832627b4f6', 1, 'Robyn', 'Staebler', NULL, 1, 'Robyn', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Victoria', '098f6bcd4621d373cade4e832627b4f6', 5, 'Victoria', 'Gray', NULL, 1, NULL, NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'George', '098f6bcd4621d373cade4e832627b4f6', 5, 'George', 'Dimitri Sawa', NULL, 1, NULL, NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Hans', '098f6bcd4621d373cade4e832627b4f6', 5, 'Hans', 'Utter', NULL, 1, NULL, NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Alethea', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 10, 'Alethea', 'bint Fahd ibn Akhtar', 'fake@email.com', NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Milesent', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 10, 'Milesent', 'Vibert', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Celeste', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 8, 'Celeste', 'Dougherty', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Adelheidis', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Adelheidis', 'Danzevous', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Jezebel', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Jezebel', 'Ava Shuvani', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Emine', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Emine', 'bint Istani', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Zaattana', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Zattana', 'Al-Naseem', 'fake@email.com', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Giuseppe', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Giuseppe', 'Francesco da Borgia', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Signy', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 10, 'Signy', 'Dimmeradalea', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Silvija', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Silvija', 'the Landlady', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Katrina', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Katrina', 'of Iron Mountain', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Janelyn', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Janelyn', 'of Fenmere', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Giles', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Giles', 'Hill of Sweetwater', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Justin', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Justin', 'du Coeur', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Rosina', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 10, 'Rosina', 'del Bosco Chiaro', 'fake@email.com', NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Mara', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Mara', 'Kolarova', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Avatar', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Avatar', 'of Catsprey', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Ellisif', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 2, 'Ellisif', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Perronnelle', '098f6bcd4621d373cade4e832627b4f6', 1, '', '', '', 1, 'Perronnelle', 'Charrette de La Tour du Pin', 'fake@email.com', '', NULL, 21, '', '', '', '', 0, 0),
(116, 'Dafydd Arth', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Dafydd', 'Arth', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Gregory', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Gregory', 'Blunt', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Lizbeth', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Lizbeth', 'Ravensholm', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Solveig', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Solveig', 'Throndardottir', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Phelan', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Phelan', 'ab Emrys', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'johann', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Johann', 'von Metten', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Tsivia', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Tsivia', 'bas Tamara', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Isaac', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Isaac', 'de Hugo', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Cormac', '098f6bcd4621d373cade4e832627b4f6', 1, '', '', '', 1, 'Cormac', 'O''Bron', 'fake@email.com', '', NULL, 21, '', '', '', '', 0, 0),
(125, 'Morgan McBride ', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Morgan', 'McBride', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Angie', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Angie', 'of the Wild Roses', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Anne', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Anne', 'of Framlingham', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'cassandra', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Cassandra', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Charles', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Charles', 'Garth', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Constance', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Constance', 'of Aarnimetsa', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Crystal', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Crystal', 'of the Westermark', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'Cybele', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Cybele', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Emma La Rousse', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Emma', 'la Rousse d''Argent', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Geoffrey', '098f6bcd4621d373cade4e832627b4f6', 1, '', '', '', 1, 'Geoffrey', 'Mathias', 'fake@email.com', '', NULL, 21, '', '', '', '', 0, 0),
(135, 'Ghazallah', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Ghazallah', 'al-Badriyyah', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Isabeau Legere', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Isabeau', 'Legere de Pieds', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Julia', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Julia', 'Sutton', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Ken', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Ken', 'Pierce', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Kieran', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Kieran', 'Grey', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Miklos', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Miklos', 'Sandorfia', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Nawson', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Nawson', 'ben Mas''ud', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Patri', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Patri', 'du Chat Gris', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Pryder', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Pryder', 'mab Aurddolen', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'Rochl', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Rochl', 'bas Gershom Sternenkiker', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'Safira', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Safira', 'al-Muffaddadiyya', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'Sheila', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Sheila', 'Beardslee', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Su&#39;ad', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Su''ad', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'John Tyson', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'John', 'Tyson', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Yvonne', '098f6bcd4621d373cade4e832627b4f6', 5, NULL, NULL, NULL, 1, 'Yvonne', 'Kendall', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'Ihon', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 9, 'Ihon', 'Vinson macFergus', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Adele D', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Adele', 'Desfontaines', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Etienne', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Etienne', 'de Clermont', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'Sorcha', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Sorcha', 'ni Fhaolain', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Brighid', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Brighid', 'of Glebaun', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Signy G', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Signy', 'Gandalvsdottir', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Morgan E', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Morgan', 'Ellise', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'Helene', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Helene', 'Quivremont', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Sionnain', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Sionnain', 'of Mynydd Seren', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Lyev', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Lyev', 'Davidovitch', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Sana', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Sana', 'bint Kieran al Kerra', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Rhiannon', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Rhiannon', 'NiBryan Maclaughton', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Claire', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Claire', 'Shayhan', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'Adria', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Adria', 'Lorelle', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Tahira', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Tahira', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Brigit', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Brigit', 'ni Sheachnasaigh', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'Dominique', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Dominique', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Jorunn', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Jorunn', 'Steinnabrjotr', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Soelig', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Soelig', 'Sweteglee', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'Vyncent', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Vyncent', 'atte Wodegate', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'John E', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'John', 'Elys', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'Yves', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Yves', 'de Fortanier', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'Tessa', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Tessa', 'di Aquila', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'Anna M', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Anna', 'Mansbridge', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'Fionnabhair', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Fionnabhair', 'inghean Donnchaidh Guthrie ', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'Elsbeth', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Elsbeth', 'Anne Roth', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'Isabel', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Isabel', 'D Triana', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'Conandil', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Conandil', NULL, 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'Crispin', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Crispin', 'Sexi', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'Elisa', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Elisa', 'von Sohpey', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'Emily', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Emily ', 'of Winerock', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'Gwenllyn', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Gwenllyn', 'the Minstrel', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'Jane', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Jane', 'Milford', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'Katherine', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Katherine', 'Mercer', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'Marian', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Marian', 'of Heather Dale', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'Martin', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Martin', 'Bildner', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'Sciath', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Sciath', 'ingen Chaennaig ', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'Swannoc', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Swannoc', ' ', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'Thea', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Thea', 'of Jararvellir', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'Alaric', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Alaric', 'MacConnal', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'Brian', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Brian', 'Pinch', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'Cormac L', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Cormac', 'Lenehan', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'Emma W', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Emma', 'of Wolvercote', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'Finn', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Finn', ' ', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'Hrothgar', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Hrothgar', 'von Roani', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'Joanna', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Joanna', ' ', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'Katharine', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Katharine', 'von Regensburg', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'Miriam', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Miriam', 'Galbraith', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'Rodrigo', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Rodrigo', ' ', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'Teleri', '098f6bcd4621d373cade4e832627b4f6', 1, NULL, NULL, NULL, 1, 'Teleri', 'ferch Morgant', 'fake@email.com', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
