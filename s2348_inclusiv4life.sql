-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 45.153.88.126
-- Timp de generare: nov. 08, 2021 la 10:58 AM
-- Versiune server: 10.1.48-MariaDB-0+deb9u2
-- Versiune PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `s2348_invlusiv4life`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `alex_housing`
--

CREATE TABLE `alex_housing` (
  `id_casa` int(11) NOT NULL,
  `id_proprietar` int(11) NOT NULL DEFAULT '0',
  `nume_proprietar` varchar(250) NOT NULL DEFAULT 'None',
  `sellprice` float NOT NULL DEFAULT '0',
  `pret` float NOT NULL DEFAULT '0',
  `lavanzare` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `tip` varchar(50) DEFAULT 'normal',
  `marimechest` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tickete`
--

CREATE TABLE `tickets` (
  `id` int(255) NOT NULL,
  `nume` varchar(100) DEFAULT NULL,
  `facutdeid` int(11) DEFAULT NULL,
  `motiv` varchar(105) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


--
-- Structură tabel pentru tabel `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


--
-- Structură tabel pentru tabel `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL COMMENT 'Num such owner',
  `num` varchar(255) NOT NULL COMMENT 'Reference number of the contact',
  `incoming` int(255) NOT NULL COMMENT 'Defined if we are at the origin of the calls',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(255) DEFAULT 0 COMMENT 'Calls accept or not'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `phone_stocks`
--

CREATE TABLE `phone_stocks` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Label` varchar(50) NOT NULL,
  `Current` double DEFAULT NULL,
  `Min` double NOT NULL,
  `Max` double NOT NULL,
  `Med` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Structură tabel pentru tabel `vrp_admin_tickets`
--

CREATE TABLE `vrp_admin_tickets` (
  `id` int(255) NOT NULL,
  `createdName` varchar(100) DEFAULT NULL,
  `createdId` int(11) DEFAULT NULL,
  `reason` varchar(100) NOT NULL,
  `time` varchar(100) DEFAULT NULL,
  `accepted` varchar(50) NOT NULL DEFAULT 'Nu'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_business`
--

CREATE TABLE `vrp_business` (
  `id` int(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `bizName` text CHARACTER SET latin1 NOT NULL,
  `bizDescription` text CHARACTER SET latin1 NOT NULL,
  `bizPrice` int(255) NOT NULL DEFAULT '0',
  `bizType` text CHARACTER SET latin1 NOT NULL,
  `bizCashier` bigint(255) NOT NULL DEFAULT '0',
  `bizSupplies` int(255) NOT NULL DEFAULT '75',
  `bizOwner` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bizOwnerID` int(255) NOT NULL,
  `bizForSale` int(255) NOT NULL DEFAULT '0',
  `bizSalePrice` int(255) NOT NULL,
  `bizStrikes` int(255) NOT NULL DEFAULT '0',
  `bizImunity` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_factions`
--

CREATE TABLE `vrp_factions` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `rank_1` varchar(255) DEFAULT 'Rank 1',
  `rank_2` varchar(255) NOT NULL DEFAULT 'Rank 2',
  `rank_3` varchar(255) NOT NULL DEFAULT 'Rank 3',
  `rank_4` varchar(255) NOT NULL DEFAULT 'Rank 4',
  `rank_5` varchar(255) NOT NULL DEFAULT 'Rank 5',
  `rank_6` varchar(255) NOT NULL DEFAULT 'Rank 6',
  `rank_7` varchar(255) NOT NULL DEFAULT 'Rank 7',
  `rank_8` varchar(255) NOT NULL DEFAULT 'Rank 8',
  `salary_1` int(11) NOT NULL DEFAULT '0',
  `salary_2` int(11) NOT NULL DEFAULT '0',
  `salary_3` int(11) NOT NULL DEFAULT '0',
  `salary_4` int(11) NOT NULL DEFAULT '0',
  `salary_5` int(11) NOT NULL DEFAULT '0',
  `salary_6` int(11) NOT NULL DEFAULT '0',
  `salary_7` int(11) NOT NULL DEFAULT '0',
  `salary_8` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `slots` int(255) NOT NULL DEFAULT '5',
  `color` varchar(255) NOT NULL DEFAULT '[[ 255, 255, 0 ]]'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_garages`
--

CREATE TABLE `vrp_garages` (
  `id` int(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `bID` int(11) NOT NULL DEFAULT '0',
  `bColor` int(11) NOT NULL DEFAULT '0',
  `facion` int(11) NOT NULL DEFAULT '0',
  `gtype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `vrp_garages`
--

INSERT INTO `vrp_garages` (`id`, `x`, `y`, `z`, `bID`, `bColor`, `facion`, `gtype`) VALUES
(1, -75.4387, -1114.95, 25.8376, 0, 0, 0, 'Civili'),
(2, 427.389, -982.517, 25.7297, 0, 0, 0, 'Politie'),
(4, 427.378, -976.666, 25.7297, 0, 0, 0, 'Politie'),
(6, -460.992, -271.749, 35.7815, 0, 0, 0, 'Civili'),
(7, -516.404, -294.014, 35.2192, 0, 0, 0, 'Civili'),
(8, -454.875, -339.736, 34.3636, 0, 0, 0, 'Medici'),
(11, -492.008, -336.865, 34.3734, 0, 0, 0, 'Medici'),
(12, 290.851, -589.367, 43.1881, 0, 0, 0, 'Medici'),
(19, 117.037, 6598.68, 32.0146, 0, 0, 0, 'Civili'),
(20, -25.2685, -1434.45, 30.6484, 0, 0, 0, 'Civili'),
(21, -1033.67, -2728.04, 20.1621, 0, 0, 0, 'Civili'),
(22, 988.971, -1782.87, 31.2407, 0, 0, 0, 'Civili'),
(23, -1116.87, 2678.86, 18.4972, 0, 0, 0, 'Civili'),
(24, 250.35, 3133.31, 42.2401, 0, 0, 0, 'Civili'),
(25, 2488.18, -319.666, 92.9926, 0, 0, 0, 'Civili'),
(26, 143.494, -1081, 29.188, 0, 0, 0, 'Civili'),
(27, -128.924, 1003.07, 235.732, 0, 0, 0, 'Cartel Sinaloa'),
(28, -594.077, -1126.56, 22.1738, 0, 0, 0, 'Civili'),
(29, -1155.63, -1522.3, 4.30247, 0, 0, 0, 'Civili'),
(30, -872.423, -370.186, 38.3583, 0, 0, 0, 'Civili'),
(31, -354.199, 6220.89, 31.4887, 0, 0, 0, 'Civili'),
(32, -819.396, 183.723, 72.1319, 0, 0, 0, 'Civili'),
(34, 1978.08, 3827.53, 32.3851, 0, 0, 0, 'Civili'),
(35, 2480.59, 4953.96, 45.0218, 0, 0, 0, 'Civili'),
(36, -1415.13, -956.423, 7.23245, 0, 0, 0, 'Civili'),
(37, 684.451, -719.592, 25.8791, 0, 0, 0, 'Civili'),
(38, -795.993, 304.551, 85.6954, 0, 0, 0, 'Civili'),
(44, -356.784, -773.788, 53.2463, 0, 0, 0, 'Civili'),
(45, 371.228, -951.207, 29.3645, 0, 0, 0, 'Civili'),
(46, -1618.59, -905.561, 8.95789, 0, 0, 0, 'Civili'),
(55, -1715.72, -501.749, 37.6434, 0, 0, 0, 'Civili'),
(56, -1483.85, -737.909, 24.8765, 0, 0, 0, 'Civili'),
(59, -742.661, -1312.01, 5.00038, 0, 0, 0, 'Civili'),
(60, -791.721, -569.125, 30.1261, 0, 0, 0, 'Civili'),
(61, -1694.4, 39.7617, 64.8559, 0, 0, 0, 'Civili'),
(62, -2297.01, 447.971, 174.467, 0, 0, 0, 'Civili'),
(63, -2312.83, 451.671, 174.467, 0, 0, 0, 'Civili'),
(64, -1824.22, 780.433, 137.913, 0, 0, 0, 'Civili'),
(65, -1892.47, 2032.46, 140.734, 0, 0, 0, 'Civili'),
(66, -2194.53, 4268.13, 48.5537, 0, 0, 0, 'Civili'),
(91, -220.808, -1291.58, 31.296, 0, 0, 0, 'Civili'),
(93, -1527.53, 85.0572, 56.6026, 0, 0, 0, 'Civili'),
(94, 432.088, -1023.46, 28.7919, 0, 0, 0, 'Politie'),
(95, -730.635, -144.272, 36.8566, 0, 0, 0, 'Civili');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_serverstats`
--

CREATE TABLE `vrp_serverstats` (
  `whitelist` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_showroom`
--

CREATE TABLE `vrp_showroom` (
  `masina` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_srv_data`
--

CREATE TABLE `vrp_srv_data` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_turfs`
--

CREATE TABLE `vrp_turfs` (
  `id` int(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `blipColor` int(11) NOT NULL DEFAULT '0',
  `blipRadius` float NOT NULL DEFAULT '110',
  `faction` varchar(50) NOT NULL,
  `isAttacked` varchar(50) NOT NULL DEFAULT 'Nu',
  `attackedBy` varchar(50) NOT NULL DEFAULT 'none',
  `payday` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `vrp_turfs`
--

INSERT INTO `vrp_turfs` (`id`, `x`, `y`, `z`, `blipColor`, `blipRadius`, `faction`, `isAttacked`, `attackedBy`, `payday`) VALUES
(1, 905.984, -1572.91, 30.8198, 0, 110, 'Bloods', 'Nu', 'none', 70000),
(2, 850.558, -2334.52, 30.3406, 1, 110, 'Bloods', 'Nu', 'none', 70000),
(3, 132.307, -1305.94, 29.172, 2, 110, 'Cartel Sinaloa', 'Nu', 'none', 70000),
(4, 1698.23, 3674.78, 37.8809, 1, 110, 'Bloods', 'Nu', 'none', 70000),
(5, 101.87, -1936.54, 20.8037, 2, 110, 'Cartel Sinaloa', 'Nu', 'none', 70000);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_users`
--

CREATE TABLE `vrp_users` (
  `id` int(11) NOT NULL,
  `username` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` varchar(100) DEFAULT NULL,
  `whitelisted` tinyint(1) DEFAULT NULL,
  `x` float NOT NULL DEFAULT '-537.796',
  `y` float NOT NULL DEFAULT '-216.83',
  `z` float NOT NULL DEFAULT '37.6498',
  `banned` tinyint(1) DEFAULT NULL,
  `bannedReason` varchar(100) NOT NULL DEFAULT 'Nu a fost setat niciun motiv',
  `bannedBy` char(255) NOT NULL DEFAULT 'none',
  `DmvTest` varchar(50) NOT NULL DEFAULT 'Required',
  `faction` text NOT NULL,
  `isFactionLeader` int(255) NOT NULL DEFAULT '0',
  `isFactionCoLeader` int(11) NOT NULL DEFAULT '0',
  `factionRank` text NOT NULL,
  `aJailTime` int(255) NOT NULL DEFAULT '0',
  `phone` varchar(100) DEFAULT NULL,
  `aJailReason` text,
  `adminLvl` int(11) NOT NULL DEFAULT '0',
   `vipLvl` int(11) NOT NULL DEFAULT 0,
  `sponsorRank` int(11) NOT NULL DEFAULT 0,
  `timpsponsor` int(11) NOT NULL DEFAULT 0,
  `adminTickets` int(11) NOT NULL DEFAULT '0',
  `bankMoney` int(255) NOT NULL DEFAULT '5000000',
  `walletMoney` int(255) NOT NULL DEFAULT '10000000',
  `giftPoints` int(11) NOT NULL DEFAULT '0',
  `diamonds` int(11) NOT NULL DEFAULT '0',
  `hoursPlayed` float NOT NULL DEFAULT '0',
  `firstName` varchar(100) NOT NULL DEFAULT 'Nume',
  `secondName` varchar(100) NOT NULL DEFAULT 'Prenume',
  `age` int(11) NOT NULL DEFAULT '18',
  `warns` int(11) NOT NULL DEFAULT 0,
  `warnr1` varchar(255) NOT NULL DEFAULT 'none',
  `warnr2` varchar(255) NOT NULL DEFAULT 'none',
  `warnr3` varchar(255) NOT NULL DEFAULT 'none',
  `warnid1` varchar(255) NOT NULL DEFAULT 'none',
  `warnid2` varchar(255) NOT NULL DEFAULT 'none',
  `warnid3` varchar(255) NOT NULL DEFAULT 'none',
  `dblPayday` int(255) NOT NULL DEFAULT '0',
  `job` varchar(100) NOT NULL DEFAULT 'Somer',
  `tempban` varchar(150) NOT NULL DEFAULT 'No Temp Ban',
  `banDate` varchar(150) NOT NULL DEFAULT 'No Date',
  `PermisArma` varchar(50) NOT NULL DEFAULT 'Nu are Permis',
  `level` text,
  `permis` int(11) DEFAULT '0',
  `registration` varchar(100) DEFAULT NULL,
  `raport` int(30) DEFAULT '0',
  `skin` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_user_business`
--

CREATE TABLE `vrp_user_business` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` text,
  `capital` int(11) DEFAULT NULL,
  `laundered` int(11) DEFAULT NULL,
  `reset_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `vrp_user_business`
--

INSERT INTO `vrp_user_business` (`user_id`, `name`, `description`, `capital`, `laundered`, `reset_timestamp`) VALUES
(3, 'tEst', '', 2000000, 0, 1635848104);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_user_data`
--

CREATE TABLE `vrp_user_data` (
  `user_id` int(11) NOT NULL,
  `dkey` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `vrp_user_data`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_user_homes`
--

CREATE TABLE `vrp_user_homes` (
  `user_id` int(11) NOT NULL,
  `home` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_user_identities`
--

CREATE TABLE `vrp_user_identities` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_user_ids`
--

CREATE TABLE `vrp_user_ids` (
  `identifier` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `vrp_user_ids`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_user_moneys`
--

CREATE TABLE `vrp_user_moneys` (
  `user_id` int(11) NOT NULL,
  `wallet` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `pps` int(11) NOT NULL DEFAULT '0',
  `chei` int(11) NOT NULL DEFAULT '0',
  `gold` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vrp_user_vehicles`
--

CREATE TABLE `vrp_user_vehicles` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `vehicle` varchar(255) NOT NULL DEFAULT '',
  `veh_type` varchar(255) NOT NULL DEFAULT 'default',
  `garage` text NOT NULL,
  `gSlot` int(255) NOT NULL DEFAULT '1',
  `vehicle_plate` varchar(50) NOT NULL,
  `impounded` int(255) NOT NULL DEFAULT '0',
  `vehicle_colorprimary` varchar(150) DEFAULT NULL,
  `vehicle_colorsecondary` varchar(150) DEFAULT NULL,
  `vehicle_pearlescentcolor` varchar(150) DEFAULT NULL,
  `vehicle_wheelcolor` varchar(150) DEFAULT NULL,
  `vehicle_plateindex` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor1` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor2` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor3` varchar(150) DEFAULT NULL,
  `vehicle_windowtint` varchar(150) DEFAULT NULL,
  `vehicle_wheeltype` varchar(150) DEFAULT NULL,
  `vehicle_mods0` varchar(150) DEFAULT NULL,
  `vehicle_mods1` varchar(150) DEFAULT NULL,
  `vehicle_mods2` varchar(150) DEFAULT NULL,
  `vehicle_mods3` varchar(150) DEFAULT NULL,
  `vehicle_mods4` varchar(150) DEFAULT NULL,
  `vehicle_mods5` varchar(150) DEFAULT NULL,
  `vehicle_mods6` varchar(150) DEFAULT NULL,
  `vehicle_mods7` varchar(150) DEFAULT NULL,
  `vehicle_mods8` varchar(150) DEFAULT NULL,
  `vehicle_mods9` varchar(150) DEFAULT NULL,
  `vehicle_mods10` varchar(150) DEFAULT NULL,
  `vehicle_mods11` varchar(150) DEFAULT NULL,
  `vehicle_mods12` varchar(150) DEFAULT NULL,
  `vehicle_mods13` varchar(150) DEFAULT NULL,
  `vehicle_mods14` varchar(150) DEFAULT NULL,
  `vehicle_mods15` varchar(150) DEFAULT NULL,
  `vehicle_mods16` varchar(150) DEFAULT NULL,
  `vehicle_turbo` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_tiresmoke` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_xenon` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_mods23` varchar(150) DEFAULT NULL,
  `vehicle_mods24` varchar(150) DEFAULT NULL,
  `vehicle_neon0` varchar(150) DEFAULT NULL,
  `vehicle_neon1` varchar(150) DEFAULT NULL,
  `vehicle_neon2` varchar(150) DEFAULT NULL,
  `vehicle_neon3` varchar(150) DEFAULT NULL,
  `vehicle_bulletproof` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor1` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor2` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor3` varchar(150) DEFAULT NULL,
  `vehicle_modvariation` varchar(150) NOT NULL DEFAULT 'off',
  `vehname` int(11) NOT NULL,
  `upgrades` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Structură tabel pentru tabel `advanced_vehicles`
--

CREATE TABLE `advanced_vehicles` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `km` double UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_handling` longtext NOT NULL,
  `nitroAmount` int(11) NOT NULL DEFAULT 0,
  `nitroRecharges` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `advanced_vehicles_inspection`
--

CREATE TABLE `advanced_vehicles_inspection` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL,
  `km` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double UNSIGNED NOT NULL DEFAULT 0,
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `advanced_vehicles_services`
--

CREATE TABLE `advanced_vehicles_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `km` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `img` varchar(255) NOT NULL DEFAULT '',
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `advanced_vehicles_upgrades`
--

CREATE TABLE `advanced_vehicles_upgrades` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `alex_housing`
--
ALTER TABLE `alex_housing`
  ADD PRIMARY KEY (`id_casa`),
  ADD UNIQUE KEY `id_casa` (`id_casa`);

--
-- Indexuri pentru tabele `vrp_business`
--
ALTER TABLE `vrp_business`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `vrp_factions`
--
ALTER TABLE `vrp_factions`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `vrp_garages`
--
ALTER TABLE `vrp_garages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexuri pentru tabele `vrp_srv_data`
--
ALTER TABLE `vrp_srv_data`
  ADD PRIMARY KEY (`dkey`);

--
-- Indexuri pentru tabele `vrp_users`
--
ALTER TABLE `vrp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `vrp_user_business`
--
ALTER TABLE `vrp_user_business`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexuri pentru tabele `vrp_user_data`
--
ALTER TABLE `vrp_user_data`
  ADD PRIMARY KEY (`user_id`,`dkey`);

--
-- Indexuri pentru tabele `vrp_user_homes`
--
ALTER TABLE `vrp_user_homes`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `home` (`home`,`number`);

--
-- Indexuri pentru tabele `vrp_user_ids`
--
ALTER TABLE `vrp_user_ids`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `fk_user_ids_users` (`user_id`);

--
-- Indexuri pentru tabele `vrp_user_moneys`
--
ALTER TABLE `vrp_user_moneys`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `alex_housing`
--
ALTER TABLE `alex_housing`
  MODIFY `id_casa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `vrp_business`
--
ALTER TABLE `vrp_business`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `vrp_factions`
--
ALTER TABLE `vrp_factions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `vrp_garages`
--
ALTER TABLE `vrp_garages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pentru tabele `vrp_users`
--
ALTER TABLE `vrp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Structură tabel pentru tabel `vrp_business`
--

CREATE TABLE `vrp_business` (
  `id` int(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `bizName` text CHARACTER SET latin1 NOT NULL,
  `bizDescription` text CHARACTER SET latin1 NOT NULL,
  `bizPrice` int(255) NOT NULL DEFAULT 0,
  `bizType` text CHARACTER SET latin1 NOT NULL,
  `bizCashier` bigint(255) NOT NULL DEFAULT 0,
  `bizSupplies` int(255) NOT NULL DEFAULT 75,
  `bizOwner` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bizOwnerID` int(255) NOT NULL,
  `bizForSale` int(255) NOT NULL DEFAULT 0,
  `bizSalePrice` int(255) NOT NULL,
  `bizStrikes` int(255) NOT NULL DEFAULT 0,
  `bizImunity` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------