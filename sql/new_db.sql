-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 07:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`) VALUES
(1, 'Bently', 'Bonaparte'),
(2, 'Brook', 'Oatwin'),
(3, 'Ruvona', 'CopperTone');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES
(1, 'Bone'),
(2, 'Gemstone'),
(3, 'Plastic (injection mold)'),
(4, 'Plastic (printed)'),
(5, 'Wooden'),
(6, 'Metal'),
(7, 'Glass');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(4096) NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `date`, `content`, `author`) VALUES
(6, 'Action alignment', '1974-06-12', 'Action alignment archon subtype astral plane balance domain critical hit diminutive drow domain energy drain fear aura incorporeal subtype monstrous humanoid type natural ability nonabilities paralyzed planning domain points of damage prone racial hit die reach weapon skill points spell spell preparation spider domain stable summoning subschool sun domain threatened square yugoloth subtype.\r\n 0-level spell concentrate on a spell critical hit destruction domain dispel check metal domain negative level overlap sacred bonus slime domain spell square tanar \"ri subtype\r\n concentrate on a spell critical hit destruction domain dispel check metal domain negative level overlap sacred bonus slime domain spell square tanar ri subtype. Abjuration acid effects antimagic archon subtype change shape cowering damage reduction evil domain experience points extraplanar immunity lava effects law domain luck domain pinned player character size modifier spell resistance spell trigger item stable trade domain transmutation..', 1),
(7, 'Weapon caster', '1989-07-12', '\'Ability score alternate form base land speed bolster undead class class skill conjuration creature type dispel drow domain dungeon master elemental type engaged fear effect good subtype initiative count lawful natural reach paralyzed pattern subschool resistance bonus rune domain special ability spell vermin type.\r\n Ability ability check ability drain action bonus chaos domain charm subschool continuous damage cover cure spell energy damage energy drain flat-footed gold piece healing subschool heat dangers immunity inherent bonus pinned player character psionics range penalty sorcerer space strength domain supernatural ability swarm subtype teleportation subschool total concealment water subtype.', 1),
(8, ' falling free action', '0000-00-00', ' 5-foot step arcane spell failure automatic hit base save bonus command undead conjuration enhancement bonus evasion extraplanar subtype fatigued force damage gold piece incorporeal mundane nauseated plant domain ranged attack roll rogue size modifier special quality spell preparation tanar\'ri subtype threat threatened square turning damage water subtype.\r\n\r\n Ability damage character dying energy damage inherent bonus portal domain ranged attack roll scrying subschool speed suffocation water dangers. Barbarian blinded charm domain craft domain deal damage enchantment energy plane engaged evil subtype extraordinary ability fey type figment subschool gnome domain penalty platinum piece scent skill check splash weapon stable temporary hit points thrown weapon undeath domain vermin type.\r\n\r\n Animal domain circumstance bonus cross-class skill deflection bonus eladrin subtype exhausted extraplanar fire subtype glamer subschool gnome domain lethal damage one-handed weapon silver piece special quality stable strength subject subtype swift action telepathic link war domain.\r\n\r\n Ability check bard catching on fire character level climb cold subtype dispel domain engaged full-round action hardness heat dangers lava effects masterwork ranger spell descriptor spell failure suffering domain total cover trample turning check war domain.\r\n\r\n', 2),
(9, 'undeath domain', '2023-05-19', ' Action alignment archon subtype astral plane balance domain critical hit diminutive drow domain energy drain fear aura incorporeal subtype monstrous humanoid type natural ability nonabilities paralyzed planning domain points of damage prone racial hit die reach weapon skill points spell spell preparation spider domain stable summoning subschool sun domain threatened square yugoloth subtype.\r\n\r\n Armor class casting time character cleric dexterity dispel electrum energy charge energy drained ethereal plane extraplanar level adjustment positive energy plane profane bonus skill points summoning subschool swallow whole temporary hit points trample travel domain.\r\n\r\n Ability decrease armor bonus character coup de grace cowering critical roll death attack dexterity fear aura fighter healing subschool monk monstrous humanoid type pattern subschool prone reptilian subtype rounding spell immunity spell resistance square teleportation subschool turn resistance turned turning damage .\r\n\r\n', 1),
(10, 'Archon subtype', '2023-06-08', ' Charm climb critical hit dazed disabled earth domain energy drain fear effect grapple check grappling hit points immediate action incorporeal subtype manufactured weapons medium natural reach paralyzed planning domain prerequisite profane bonus psionics reflex save stack strength summoning subschool swim tanar\'ri subtype teleportation subschool treasure unarmed strike.\r\n\r\n Adjacent animal type compulsion cowering darkness diminutive entangled fatigued flight frightened infection metal domain miniature figure negative level polymorph ranger rend resistance to energy spell domain total cover touch attack unarmed strike use-activated item will save.\r\n\r\n Ability check charm concealment earth subtype fighter fire domain paralyzed range penalty rebuke undead rounding spell slot subject telepathy turning check vulnerability to energy. Adventuring party creature type current hit points effective character level energy damage fear aura fear ray projectile weapon scribe take 20 turned.\r\n\r\n Archon subtype augmented subtype bonus compulsion constrict energy charge good domain immunity kind melee prerequisite shadow subschool sorcerer threat.\r\n\r\n Air subtype animal type antimagic aquatic subtype augmented subtype blindsense bonus calling subschool cleric critical roll direct a spell disease energy drained extraplanar subtype failure family domain fascinated flight hardness kind profane bonus reach weapon redirect a spell resistance bonus sickened skill modifier swarm subtype trained turning check.\r\n\r\n', 2),
(11, 'Telepathic link ', '2023-08-30', ' Ability decrease armor bonus character coup de grace cowering critical roll death attack dexterity fear aura fighter healing subschool monk monstrous humanoid type pattern subschool prone reptilian subtype rounding spell immunity spell resistance square teleportation subschool turn resistance turned turning damage undeath domain.\r\n\r\n Animal domain attack attack roll base attack bonus charm domain checked critical roll cure spell death attack difficult terrain disease elf domain evocation falling fear aura force damage gnome domain good domain magic domain melee attack natural weapon one-handed weapon panicked party plant domain retribution domain shaken water domain.\r\n\r\n Acid effects angel subtype change shape death domain divination inflict spell initiative miss chance roll paladin paralysis protection domain tyranny domain.\r\n\r\n Balance domain enchantment fire immunity invisible lethal damage morale bonus shaken strength domain tremorsense turning damage. Command word item energy damage energy drained ethereal fear aura line of effect masterwork positive energy racial bonus reach weapon sacred bonus shadow subschool spell version.\r\n\r\n Adjacent antimagic arcane spell failure casting time concentrate on a spell drow domain earth domain enchantment fascinated moon domain point of origin resistance bonus spell-like ability starvation treasure unarmed attack. Archon subtype base save bonus cantrip caster level check evil domain fly incorporeal natural natural reach skill modifier spell domain suffering domain untrained.\r\n\r\n', 2),
(12, 'water dangers.', '2023-05-27', ' 5-foot step armor class charm subschool current hit points difficulty class divination divine spell fear cone fine fly gaze hit points ocean domain pattern subschool plant type prerequisite sonic attack special ability spellcaster swift action take 20 telepathy transmutation.\r\n\r\n Action bonus charm cold domain cowering disabled fey type giant type illusion manufactured weapons negative energy plane nonplayer character plant type player character resistance bonus shaken target turning check unconscious.\r\n\r\n Baatezu subtype bonus creation subschool divination druid fear aura granted power lawful magical beast type mentalism domain nauseated sorcerer spell domain total concealment travel domain.\r\n\r\n Automatic hit command undead evasion flat-footed invisible living construct subtype morale bonus negative level stunned time domain transmutation.\r\n\r\n Abjuration action cantrip catching on fire character compulsion subschool darkness domain fate domain fine giant type knocked down modifier mundane negative level nonlethal damage paralyzed pounce spell descriptor spell resistance suffering domain summoning subschool undeath domain water dangers.\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `post_category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`post_category_id`, `post_id`, `category_id`) VALUES
(8, 7, 7),
(9, 8, 2),
(10, 8, 7),
(11, 9, 6),
(12, 9, 5),
(13, 10, 6),
(14, 10, 5),
(15, 11, 1),
(16, 11, 2),
(17, 11, 7),
(18, 12, 2),
(19, 12, 7),
(20, 12, 6),
(21, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_tag_id`, `post_id`, `tag_id`) VALUES
(15, 6, 2),
(16, 7, 2),
(17, 7, 1),
(18, 8, 3),
(19, 8, 4),
(20, 8, 5),
(21, 9, 3),
(22, 9, 5),
(23, 9, 1),
(24, 10, 2),
(25, 10, 5),
(26, 11, 3),
(27, 11, 5),
(28, 12, 2),
(29, 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`) VALUES
(1, 'tutorial'),
(2, 'dice'),
(3, 'dice bags'),
(4, 'maker advice'),
(5, 'real play');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`post_category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `post_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
