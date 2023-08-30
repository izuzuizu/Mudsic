-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2023 a las 19:03:16
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mudsic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `duracion` time NOT NULL,
  `album_idSpotify` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`id`, `nombre`, `duracion`, `album_idSpotify`) VALUES
(1, 'Dreamland (Real Life Edition)', '128:00:00', '2YA8gtgzLZaum0wOaHZq8T'),
(2, 'Dreamland (+ Bonus Levels 2.0)', '54:24:00', '7cVH2UZweQe9dQ2DAt4GyZ'),
(3, 'Dreamland (+ Bonus Levels)', '92:48:00', '0E2xXn23qVmfx9ThZjWFBE'),
(4, 'Dreamland', '51:12:00', '5bfpRtBW7RNRdsm3tRyl3R'),
(5, 'How To Be A Human Being', '35:12:00', '6qb9MDR0lfsN9a2pw77uJy'),
(6, 'Remixes', '38:24:00', '3AXgCzdurgpNogdTzmtLQo'),
(7, 'ZABA (Deluxe)', '48:00:00', '0dd6bX3CRdybDCgltyoItP'),
(8, 'ZABA', '35:12:00', '14IOe7ahxQPTwUYUQX3IFi'),
(9, 'Waterfalls Coming Out Your Mou', '03:12:00', '2cmgRFJrAxZc2b0Mc96YXV'),
(10, 'Tokyo Drifting (Young Franco R', '03:12:00', '7JrFzC2NYvbsIQ0ytJh0ts'),
(11, 'Space Ghost Coast To Coast (Ra', '03:12:00', '3y8YoBWtmpDHTjrp7lZWQu'),
(12, 'Space Ghost Coast To Coast (Hi', '03:12:00', '4RP53vgwue8ItCWCbHG0ad'),
(13, 'Melon and the Coconut (Mona Yi', '03:12:00', '3TFqj6THiYYdOrw3c7NJXK'),
(14, 'It’s All So Incredibly Loud (K', '03:12:00', '2C57VaIJeOyQRnKFHlWa2R'),
(15, 'It’s All So Incredibly Loud (D', '03:12:00', '5n9EWcD2VZzWKUu0NScfTI'),
(16, 'Hot Sugar (Washed Out Remix)', '03:12:00', '6FmbqarSqSz85UZ6gA0W0N'),
(17, 'Helium (Hudson Mohawke Remix)', '03:12:00', '5xEXroZToWOicoOZ0NppwP'),
(18, 'Heat Waves (Logic1000 Remix)', '03:12:00', '2yWZRt7NiE5QgrRpqviLx8'),
(19, 'Dreamland (Mindchatter Remix)', '03:12:00', '0EyumovEQclUu9nCgpQeUm'),
(20, 'I Don\'t Wanna Talk (I Just Wan', '06:24:00', '6xD74PHFKfhdgAzZ5xkfSq'),
(21, 'My Love (Dave Glass Animals Re', '03:12:00', '5dd31rqNnOvoVDvSt5ajdG'),
(22, 'Spotify Singles', '06:24:00', '4HpaTUThM0f9DhH7XJRXzZ'),
(23, 'Heat Waves (Instrumental)', '03:12:00', '51CejWgNBJzR9bmqPthRF7'),
(24, 'I Don\'t Wanna Talk (I Just Wan', '03:12:00', '4Rmv2DGTZuxsULDbhU5L49'),
(25, 'Tokyo Drifting (Oliver Malcolm', '03:12:00', '4M1xwfnGW7jHMIqXoQGQtN'),
(26, 'Space Ghost Coast To Coast (wi', '03:12:00', '4w5ziqDWymHVdTz2Hd3BRN'),
(27, 'Heat Waves (Expansion Pack)', '28:48:00', '4SRt3uGUROnTFCw41dzHIh'),
(28, 'Heat Waves (Sonny Fodera Remix', '03:12:00', '5rFWF52LV2EEHsRH67h6fl'),
(29, 'Heat Waves (Oliver Heldens Rem', '03:12:00', '4kaqVpmUmbcsVVQ5qgtmCT'),
(30, 'Heat Waves (Riton Remix)', '03:12:00', '0AGzRJlQIf0fpmxLLF9PVe'),
(31, 'Tangerine (with Arlo Parks)', '03:12:00', '3Sr7oVD7O9Gr3VfJoExoHc'),
(32, 'Heat Waves (Diplo Remix)', '03:12:00', '7EsB6vnfiS17ANTPakNQ0i'),
(33, 'Quarantine Covers', '06:24:00', '1PoNxdvXr6C4XM4cr6Fr6u'),
(34, 'Your Love (Déjà Vu)', '03:12:00', '7xz9Hi6y8KaYlLNSkvme0W'),
(35, 'Tokyo Drifting', '03:12:00', '1awYYlPxboJHZqiEFXEdTh'),
(36, 'Agnes (Radio Edit)', '03:12:00', '0v53lR3CdMTyefBV2vHAYL'),
(37, 'Spotify Live', '16:00:00', '2JLJ4OEVPnJ5CgNcd6Lnyo'),
(38, 'Pork Soda (Radio Edit)', '03:12:00', '7hNqaMi3lct1HBRTMM79p1'),
(39, 'Season 2 Episode 3 (Photay Rem', '03:12:00', '0wuZJYHJAUhUVZDZSL6WfW'),
(40, 'Life Itself (Roosevelt Remix)', '03:12:00', '2uzP9YkKRRWtrrGJVHoxCX'),
(41, 'Lose Control', '03:12:00', '6rX8ry5bXaEbG2mcAgzjSW'),
(42, 'Gooey', '16:00:00', '56st0yyb1uGIZ92t2vGYcD'),
(43, 'Spotify Sessions (Live From Sp', '16:00:00', '7n8wEKfnfniyzhM0CRQU7u'),
(44, 'Pools', '16:00:00', '60TNKsE97pRoQW6LCkUQKV'),
(45, 'Hazey', '12:48:00', '4tzdd7lmrOF5Ygj8H8SZQU'),
(46, 'Glass Animals', '12:48:00', '4M7zRurOW6q7pQxjMcPqwU'),
(47, 'Leaflings', '12:48:00', '4TEE0IdVvHZG1a7eOV0Whb'),
(48, 'CHILDHOOD', '19:12:00', '0DVF8QE8XiNVucaR4eZWB8'),
(49, 'ADOLESCENCE', '12:48:00', '3oT93rOX5kUGzxllp5iMmC'),
(50, 'ADULTHOOD', '16:00:00', '2kBr3SQufKPbkYMfeXEFzZ'),
(51, 'Juno (Deluxe)', '60:48:00', '7dMtse1hCWqbfFGMLW2clA'),
(52, 'Juno', '41:36:00', '7tJ8Wtej161vR0uCbGDiDR'),
(53, 'We Love Dogs!', '48:00:00', '1Aus1dFkP2BSyzibCl0HA7'),
(54, 'Prescription', '06:24:00', '2wIRcj57SrX5Xz7CsJxnsp'),
(55, 'Pyjamas (feat. Remi Wolf)', '12:48:00', '0AmJGPvtL6Kj0MBp7gh8BK'),
(56, 'Hospital (One Man Down)', '03:12:00', '25iq2f67q6Je815D44cXPu'),
(57, 'Last Christmas / Winter Wonder', '06:24:00', '4UvWqFOHO52TlLLEANkeqr'),
(58, 'Live at Electric Lady', '19:12:00', '2H3dV4ihkK47r8M8f3tkb9'),
(59, 'Michael', '03:12:00', '12uiCiql0IX6dT6yMXEwGq'),
(60, 'Pool', '03:12:00', '3rDZy3Mdl38XtftACWXL5c'),
(61, 'Liz', '03:12:00', '38WHZJFOzJY6k5INRXigZC'),
(62, 'Photo ID (with Dominic Fike)', '03:12:00', '3zFq7EuaSEF96fFaMCUE8w'),
(63, 'OK (with Remi Wolf & Solomonop', '06:24:00', '0MsM0ZsU68EiOBrwtt0Lbz'),
(64, 'Monte Carlo', '03:12:00', '5jZs0pEMbz0ZDdEqd0GmrI'),
(65, 'I\'m Allergic To Dogs!', '16:00:00', '23JijmRgLWloEMnFUwHJa2'),
(66, 'Cheesin\'', '03:12:00', '102eowByJ8U5YpG4mDxNGj'),
(67, 'Bad Behavior', '03:12:00', '0suZ5xK1o6VuclzdnLL7jK'),
(68, 'You\'re A Dog!', '19:12:00', '1b1xMT1Lx19e9kmNvuF4QM'),
(69, 'Rufufus', '03:12:00', '2sXawp3NSAYwSwIF4oe8IZ'),
(70, 'Shawty', '03:12:00', '2kF6bikHMAry39BlUpZkes'),
(71, 'Sauce', '03:12:00', '0tRIbVAjxkCFGlWlxBtuIS'),
(72, 'Guy', '03:12:00', '2cdnISmAWIM3cLLIhgiwDx'),
(73, 'Remote (Deluxe)', '35:12:00', '7pco4VrxVCaebDX9ZPoJ5b'),
(74, 'Revealer (Deluxe Edition)', '54:24:00', '3nGF3nGNbvyqlwPHbpGof1'),
(75, 'Young Hearts', '32:00:00', '5HSUCEmAAFT1yl5GoGUnxa'),
(76, 'A Small Light (Songs from the ', '25:36:00', '5OMNsSmLzeb3ZPpCBmw6SD'),
(77, 'Apoptosis', '38:24:00', '0yo761HLE61km3nqhoCNsq'),
(78, 'Live At The Fonda, Los Angeles', '44:48:00', '3GMRdBDrbJgmEKNui1vlMh'),
(79, 'Underwater Pipe Dreams', '57:36:00', '7cDxqoU5OdTX9xWrBrWOpq'),
(80, 'Sun Transmission', '38:24:00', '5J9YmwdAHSk1NG0scmQ19b'),
(81, 'III', '25:36:00', '5Y8n0zLN7AaqK1hxxlgT1u'),
(82, 'Inner Wave on Audiotree Live', '16:00:00', '5MbWXGwrwGn8rQWKlIn98B'),
(83, 'Baby', '03:12:00', '1bSMgGLERBaeOJgsgt3ldN'),
(84, 'Mystery', '03:12:00', '7xJ446B2Swff9jZqpM3tZ6'),
(85, 'June', '03:12:00', '16XEmvxPCeTF6T0d6eIUuo'),
(86, 'Take 3', '03:12:00', '6wyfl693YUpS8kPXZeU6cB'),
(87, 'wyd', '19:12:00', '4nCo8vzlqvAYocAUktBIA1'),
(88, 'Schemin', '03:12:00', '0AzM46kZh1F709eDXYbaKr'),
(89, 'Rose', '03:12:00', '5I8dVSyx2Wqwa2qVwNVbxr'),
(90, 'wya', '16:00:00', '4XcsUPOvcTDNWRVUSN31W8'),
(91, 'Mushroom', '03:12:00', '3yyvB8WRZObDPj2bPqpLNV'),
(92, 'Why\'d You Have To Act Like Tha', '03:12:00', '0a2N9tB7ppqpPPmomBlwW0'),
(93, 'Lullaby', '03:12:00', '4ELFxK0xE6HlhqnYvA7h2A'),
(94, 'Underwater +', '19:12:00', '4J6RztGqh368GSdkI3U5Vk'),
(95, 'Fine', '03:12:00', '16nr19mQ4JKdxFZHSl1wn2'),
(96, 'Eclipse', '03:12:00', '5xWMIeyKYa6C76Da0NLacd'),
(97, 'Buffalo', '03:12:00', '46B4tJKVhXA6YkWSC7EQzu'),
(98, 'Bower', '03:12:00', '1CRBRXbunImfdKOwd4x9k2'),
(99, 'Song 3', '03:12:00', '1RrmXP3wUKzUOh3Sbj1pet'),
(100, 'Blacklight', '09:36:00', '59KY7AC0zez738mT9upShg'),
(101, 'going strong', '03:12:00', '21ZH1MczfbI1GTqKnDMROj'),
(102, 'Mis Amigxs (En Vivo)', '54:24:00', '48tdBVEwHoT7rjsivauE2r'),
(103, 'Flow de Cuyo', '32:00:00', '2iqVud26NCO2NP02YdajgU'),
(104, 'Chupalapija', '25:36:00', '7kOKGjiQQuqeDmaBIr86sA'),
(105, 'Oss', '03:12:00', '2xr6n9IOEt5B9gkTpCBMH1'),
(106, 'Takashi', '12:48:00', '5vnMaNAAYUj9xaTOWXsZzN'),
(107, 'Película', '06:24:00', '1d4vNIf3aUIH4W6xjk7pfr'),
(108, 'Guandanara', '35:12:00', '48mgLSOZ2CI3E6FdHg1vWQ'),
(109, 'Caete al Casti', '19:12:00', '54r2ifQHFAAp4rXKMnQE2t'),
(110, 'Tripolar', '41:36:00', '6ud8dLSruWnM0i6qdIBHjS'),
(111, 'II', '35:12:00', '1p57rF4jF9evU5rrmpzSaG'),
(112, 'Usted Señalemelo', '32:00:00', '3xHEcjPRuQwvkkG1EogH8S'),
(113, 'VOID', '03:12:00', '5KidTGNtKDsqsItKqUcG9V'),
(114, 'Nena, dime algo.', '03:12:00', '4LNN7H1otfd8z5TFIlQCEY'),
(115, 'Las Flores Sangran', '03:12:00', '5qUgzq7T3JlqS8EStNt6GV'),
(116, 'Nuevo Comienzo', '03:12:00', '3t9n5vhwmuQU14VJZfCAmg'),
(117, 'Pastizal', '03:12:00', '5kVAft4Exn8KrfwIOOdUWC'),
(118, 'Remixes II', '12:48:00', '1wm51GhrM9EfstuTCgzn7N'),
(119, 'Xavier', '35:12:00', '0cLfepUS1abhkviDy3UrQ4'),
(120, 'Viaje', '67:12:00', '7nZuIokKB7MvNO10yMnKNT'),
(121, 'Aura', '41:36:00', '7F07mLmaqBJmjLkCmzxnzp'),
(122, 'A Tiempo 2.0 (feat. Usted Seña', '03:12:00', '5wIJr8BK3wxAd6m3AZP0Y3'),
(123, 'Looking Back', '22:24:00', '7dPHUYbBBUfMj6LDD2Ui7Z'),
(124, 'Solo Tú', '03:12:00', '2iOKZuLxu60BM5mMwyUFWn'),
(125, 'Love Again feat.Los Retros', '03:12:00', '3VxQoRe52pfEij3M7M17lG'),
(126, 'Amtrak', '03:12:00', '1xbF8NdEtd9gsP7Fo97KRe'),
(127, 'It\'s Got To Be You', '03:12:00', '4N2pYFQCoA4UdjE8kmdW2W'),
(128, 'Everlasting', '16:00:00', '1p0B0yZhc04KInnikui2gQ'),
(129, 'Retrospect', '19:12:00', '5gZCWr6pi1KLogtjNHdjMp'),
(130, 'Never Have Enough', '03:12:00', '1FaSi9Ne7IHmuhN8M7lLvX'),
(131, 'Friends', '03:12:00', '4JOcTTsqOx4g1G0U3lnt9m'),
(132, 'Someone To Spend Time With', '03:12:00', '0DyyOMpwfB5KS6OFNiUV1m'),
(133, 'Emerald City Guide', '32:00:00', '0qwaehehSXaqVMwkwhvlAy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `artista_idSpotify` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `artista_idSpotify`) VALUES
(1, 'Glass Animals', '4yvcSjfu4PC0CYQyLy4wSq'),
(2, 'Remi Wolf', '0NB5HROxc8dDBXpkIi1v3d'),
(3, 'Inner Wave', '6AQEfqGPSxZX0nJVonYxi6'),
(4, 'weekdays on the beach', '7BfRTpk1Pb2CMoPvAsmmbj'),
(5, 'Perras on the beach', '0mSn9qsGHUMllx267A3qX3'),
(6, 'Usted Señalemelo', '1a1v0OJC5GqtsLwzoqJm7j'),
(7, 'Los Retros', '0qraFJK6boYSp4ZMMX4PzG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `duracion` time DEFAULT NULL,
  `artista` varchar(40) NOT NULL,
  `album` text NOT NULL,
  `previewUrl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `duracion`, `artista`, `album`, `previewUrl`) VALUES
(1, 'Dreamland', '03:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(2, 'Tangerine', '03:20:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(3, '((home movie: 1994))', '00:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(4, 'Hot Sugar', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(5, '((home movie: btx))', '00:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(6, 'Space Ghost Coast To Coast', '03:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(7, 'Tokyo Drifting', '03:36:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(8, 'Melon and the Coconut', '02:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(9, 'Your Love (Déjà Vu)', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(10, 'Waterfalls Coming Out Your Mouth', '02:41:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(11, 'It’s All So Incredibly Loud', '04:19:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(12, '((home movie: rockets))', '01:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(13, 'Domestic Bliss', '03:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(14, 'Heat Waves', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(15, '((home movie: shoes on))', '00:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(16, 'Helium', '05:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(17, 'I Don\'t Wanna Talk (I Just Wanna Dance)', '03:15:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(18, 'Helium - Hudson Mohawke Remix', '03:48:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(19, 'Space Ghost Coast To Coast - Raz & Afla Remix', '03:43:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(20, 'It’s All So Incredibly Loud - Kelly Lee Owens Remix', '03:37:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(21, 'Tokyo Drifting - Young Franco Remix', '03:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(22, 'Melon and the Coconut - Mona Yim Remix', '02:40:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(23, 'Hot Sugar - Washed Out Remix', '03:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(24, 'It’s All So Incredibly Loud - DJ Seinfeld Remix', '04:34:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(25, 'Space Ghost Coast To Coast - Hit-Boy Remix', '02:52:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(26, 'Dreamland - Mindchatter Remix', '03:44:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(27, 'Heat Waves - Logic1000 Remix', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(28, 'Waterfalls Coming Out Your Mouth - Clap! Clap! Remix', '02:44:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(29, 'Tangerine (with Arlo Parks)', '03:27:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(30, 'Space Ghost Coast To Coast (with Bree Runway)', '02:55:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(31, 'Heat Waves (with iann dior)', '02:55:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(32, 'Heat Waves - Diplo Remix', '02:21:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(33, 'Heat Waves - Shakur Ahmad Remix', '03:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(34, 'Heat Waves - Oliver Heldens Remix', '04:03:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(35, 'Heat Waves - Riton Remix', '02:40:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(36, 'Heat Waves - Sonny Fodera Remix', '03:11:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(37, 'Tokyo Drifting - Oliver Malcolm Remix', '02:51:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(38, 'Heat Waves - Stripped Back', '03:15:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(39, 'Your Love (Deja Vu) - Stripped Back', '04:08:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(40, 'Space Ghost Coast To Coast - Stripped Back', '03:03:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(41, 'Dreamland', '03:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(42, 'Tangerine', '03:20:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(43, '((home movie: 1994))', '00:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(44, 'Hot Sugar', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(45, '((home movie: btx))', '00:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(46, 'Space Ghost (Coast To Coast)', '03:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(47, 'Tokyo Drifting', '03:36:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(48, 'Melon and the Coconut', '02:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(49, 'Your Love (Déjà Vu)', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(50, 'Waterfalls Coming Out Your Mouth', '02:41:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(51, 'It’s All So Incredibly Loud', '04:19:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(52, '((home movie: rockets))', '01:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(53, 'Domestic Bliss', '03:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(54, 'Heat Waves', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(55, '((home movie: shoes on))', '00:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(56, 'Helium', '05:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(57, 'I Don\'t Wanna Talk (I Just Wanna Dance)', '03:15:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(58, 'Dreamland', '03:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(59, 'Tangerine', '03:20:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(60, '((home movie: 1994))', '00:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(61, 'Hot Sugar', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(62, '((home movie: btx))', '00:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(63, 'Space Ghost Coast To Coast', '03:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(64, 'Tokyo Drifting', '03:36:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(65, 'Melon and the Coconut', '02:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(66, 'Your Love (Déjà Vu)', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(67, 'Waterfalls Coming Out Your Mouth', '02:41:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(68, 'It’s All So Incredibly Loud', '04:19:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(69, '((home movie: rockets))', '01:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(70, 'Domestic Bliss', '03:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(71, 'Heat Waves', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(72, '((home movie: shoes on))', '00:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(73, 'Helium', '05:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(74, 'I Don\'t Wanna Talk (I Just Wanna Dance)', '03:15:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(75, 'Tangerine', '03:27:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(76, 'Space Ghost Coast To Coast', '02:55:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(77, 'Heat Waves', '02:55:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(78, 'Heat Waves - Diplo Remix', '02:21:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(79, 'Heat Waves - Shakur Ahmad Remix', '03:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(80, 'Heat Waves - Oliver Heldens Remix', '04:03:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(81, 'Heat Waves - Riton Remix', '02:40:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(82, 'Heat Waves - Sonny Fodera Remix', '03:11:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(83, 'Tokyo Drifting - Oliver Malcolm Remix', '02:51:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(84, 'Heat Waves - Stripped Back', '03:14:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(85, 'Your Love (Deja Vu) - Stripped Back', '04:08:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(86, 'Space Ghost Coast To Coast - Stripped Back', '03:02:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(87, 'Dreamland', '03:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(88, 'Tangerine', '03:20:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(89, '((home movie: 1994))', '00:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(90, 'Hot Sugar', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(91, '((home movie: btx))', '00:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(92, 'Space Ghost Coast To Coast', '03:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(93, 'Tokyo Drifting', '03:36:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(94, 'Melon and the Coconut', '02:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(95, 'Your Love (Déjà Vu)', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(96, 'Waterfalls Coming Out Your Mouth', '02:41:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(97, 'It’s All So Incredibly Loud', '04:19:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(98, '((home movie: rockets))', '01:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(99, 'Domestic Bliss', '03:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(100, 'Heat Waves', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(101, '((home movie: shoes on))', '00:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(102, 'Helium', '05:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(103, 'Life Itself', '04:41:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(104, 'Youth', '03:50:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(105, 'Season 2 Episode 3', '04:03:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(106, 'Pork Soda', '04:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(107, 'Mama\'s Gun', '04:26:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(108, 'Cane Shuga', '03:16:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(109, '[Premade Sandwiches]', '00:36:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(110, 'The Other Side Of Paradise', '05:20:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(111, 'Take A Slice', '03:49:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(112, 'Poplar St', '04:22:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(113, 'Agnes', '04:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(114, 'Gooey - Gilligan Moss Remix', '05:39:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(115, 'Hazey - Dave Glass Animals Rework', '03:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(116, 'Pools - Roosevelt Remix', '07:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(117, 'Black Mambo - Zodiac Remix', '03:40:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(118, 'Gooey Rework', '03:05:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(119, 'Hazey - Gabriel Garzón-Montano Remix', '04:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(120, 'Exxus - Patten Remix', '05:34:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(121, 'Pools - Kwes. Rework', '04:01:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(122, 'Hazey - Boody Remix', '05:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(123, 'Gooey - Kingdom Remix', '03:21:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(124, 'Hazey - Dark Sky Remix', '06:26:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(125, 'Pools - Jackson And His Computer Band Remix', '06:52:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(126, 'Flip', '03:42:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(127, 'Black Mambo', '04:08:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(128, 'Pools', '04:48:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(129, 'Gooey', '04:49:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(130, 'Walla Walla', '03:37:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(131, 'Intruxx', '02:49:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(132, 'Hazey', '04:25:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(133, 'Toes', '04:14:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(134, 'Wyrd', '04:05:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(135, 'Cocoa Hooves', '04:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(136, 'JDNT', '04:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(137, 'Black Mambo - Stripped', '03:51:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(138, 'Gooey - Stripped', '04:08:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(139, 'Hazey - Stripped', '03:48:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(140, 'Cocoa Hooves - Stripped', '03:35:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(141, 'Flip', '03:42:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(142, 'Black Mambo', '04:08:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(143, 'Pools', '04:48:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(144, 'Gooey', '04:49:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(145, 'Walla Walla', '03:37:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(146, 'Intruxx', '02:49:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(147, 'Hazey', '04:25:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(148, 'Toes', '04:14:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(149, 'Wyrd', '04:05:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(150, 'Cocoa Hooves', '04:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(151, 'JDNT', '04:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(152, 'Waterfalls Coming Out Your Mouth - Clap! Clap! Remix', '02:44:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(153, 'Tokyo Drifting - Young Franco Remix', '03:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(154, 'Space Ghost Coast To Coast - Raz & Afla Remix', '03:43:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(155, 'Space Ghost Coast To Coast - Hit-Boy Remix', '02:52:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(156, 'Melon and the Coconut - Mona Yim Remix', '02:40:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(157, 'It’s All So Incredibly Loud - Kelly Lee Owens Remix', '03:37:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(158, 'It’s All So Incredibly Loud - DJ Seinfeld Remix', '04:34:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(159, 'Hot Sugar - Washed Out Remix', '03:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(160, 'Helium - Hudson Mohawke Remix', '03:48:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(161, 'Heat Waves - Logic1000 Remix', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(162, 'Dreamland - Mindchatter Remix', '03:44:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(163, 'I Don\'t Wanna Talk (I Just Wanna Dance)', '03:15:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(164, 'I Don\'t Wanna Talk (I Just Wanna Dance) (with Albert Hammond Jr)', '04:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(165, 'My Love - Dave Glass Animals Remix', '03:30:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(166, 'Solar Power - Spotify Singles', '02:53:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(167, 'I Don\'t Wanna Talk (I Just Wanna Dance) - Spotify Singles', '03:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(168, 'Heat Waves - Instrumental', '03:55:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(169, 'I Don\'t Wanna Talk (I Just Wanna Dance)', '03:15:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(170, 'Tokyo Drifting - Oliver Malcolm Remix', '02:51:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(171, 'Space Ghost Coast To Coast (with Bree Runway)', '02:55:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(172, 'Heat Waves', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(173, 'Heat Waves - Slowed', '04:22:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(174, 'Heat Waves - Oliver Heldens Remix', '04:03:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(175, 'Heat Waves - Riton Remix', '02:40:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(176, 'Heat Waves - Diplo Remix', '02:21:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(177, 'Heat Waves - Sonny Fodera Remix', '03:11:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(178, 'Heat Waves - Shakur Ahmad Remix', '03:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(179, 'Heat Waves - Live', '05:02:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(180, 'Heat Waves - Stripped Back', '03:14:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(181, 'Heat Waves - Sonny Fodera Remix', '03:11:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(182, 'Heat Waves - Oliver Heldens Remix', '04:03:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(183, 'Heat Waves - Riton Remix', '02:40:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(184, 'Tangerine (with Arlo Parks)', '03:27:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(185, 'Heat Waves - Diplo Remix', '02:21:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(186, 'Heart-Shaped Box', '03:03:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(187, 'Young And Beautiful', '04:26:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(188, 'Your Love (Déjà Vu)', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(189, 'Tokyo Drifting (with Denzel Curry)', '03:37:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(190, 'Agnes - Radio Edit', '03:35:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(191, 'Youth - Live From Tumblr IRL', '04:10:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(192, 'Life Itself - Live From Tumblr IRL', '05:46:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(193, 'Season 2 Episode 3 - Live From Tumblr IRL', '03:34:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(194, 'Pork Soda - Live From Tumblr IRL', '05:37:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(195, 'Gooey - Live From Tumblr IRL', '07:50:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(196, 'Pork Soda - Radio Edit', '03:15:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(197, 'Season 2 Episode 3 - Photay Remix', '04:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(198, 'Life Itself - Roosevelt Remix', '06:25:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(199, 'Lose Control', '03:30:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(200, 'Gooey', '04:49:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(201, 'Holiest', '03:21:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(202, 'Gooey Rework', '03:05:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(203, 'Gooey - Gilligan Moss Remix', '05:39:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(204, 'Gooey - Kingdom Remix', '03:21:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(205, 'Psylla - Live At SXSW', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(206, 'Exxus - Live At SXSW', '03:45:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(207, 'Gooey - Live At SXSW', '05:17:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(208, 'Black Mambo - Live At SXSW', '04:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(209, 'Pools - Live At SXSW', '04:46:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(210, 'Pools', '04:48:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(211, 'Love Lockdown', '02:41:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(212, 'Pools - Jackson And His Computer Band Remix', '06:52:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(213, 'Pools - Roosevelt Remix', '07:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(214, 'Pools - Kwes. Rework', '04:01:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(215, 'Hazey', '04:25:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(216, 'Hazey - Dave Glass Animals Rework', '03:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(217, 'Hazey - Dark Sky Remix', '06:26:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(218, 'Hazey - Boody Remix', '05:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(219, 'Psylla', '03:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(220, 'Black Mambo', '04:04:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(221, 'Exxus', '04:16:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(222, 'Woozy', '03:35:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(223, 'Golden Antlers', '04:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(224, 'Cocoa Hooves', '04:12:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(225, 'Dust In Your Pocket', '04:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(226, 'Cocoa Hooves Part II', '02:49:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(227, 'Space Ghost Coast To Coast', '03:07:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(228, '((home movie: btx))', '00:13:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(229, 'Domestic Bliss', '03:18:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(230, '((home movie: rockets))', '01:00:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(231, 'Tangerine', '03:20:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(232, '((home movie: shoes on))', '00:31:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(233, 'Waterfalls Coming Out Your Mouth', '02:41:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(234, 'Hot Sugar', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(235, 'Tokyo Drifting', '03:37:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(236, 'Your Love (Déjà Vu)', '03:54:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(237, 'Heat Waves', '03:58:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(238, 'Melon and the Coconut', '02:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(239, 'It’s All So Incredibly Loud', '04:19:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(240, 'Dreamland', '03:23:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(241, 'Helium', '05:28:00', '4yvcSjfu4PC0CYQyLy4wSq', '', ''),
(242, 'Fired', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(243, 'Cake', '02:47:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(244, 'Liz', '02:55:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(245, 'Michael', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(246, 'Sugar', '03:16:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(247, 'Liquor Store', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(248, 'Anthony Kiedis', '02:51:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(249, 'wyd', '03:19:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(250, 'Guerrilla', '02:44:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(251, 'Quiet On Set', '03:15:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(252, 'Volkiano', '03:55:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(253, 'Front Tooth', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(254, 'Grumpy Old Man', '03:31:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(255, 'Buttermilk', '02:17:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(256, 'Sally', '02:43:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(257, 'Sexy Villain', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(258, 'Buzz Me In', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(259, 'Street You Live On', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(260, 'Street You Live On - Live', '03:37:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(261, 'Liquor Store', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(262, 'Anthony Kiedis', '02:51:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(263, 'wyd', '03:19:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(264, 'Guerrilla', '02:44:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(265, 'Quiet On Set', '03:15:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(266, 'Volkiano', '03:55:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(267, 'Front Tooth', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(268, 'Grumpy Old Man', '03:31:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(269, 'Buttermilk', '02:17:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(270, 'Sally', '02:43:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(271, 'Sexy Villain', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(272, 'Buzz Me In', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(273, 'Street You Live On', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(274, 'Photo ID (with Dominic Fike)', '03:29:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(275, 'Down The Line - Kimbra Remix', '03:44:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(276, 'Rufufus - Sylvan Esso Remix', '04:07:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(277, 'Disco Man - Hot Chip Remix', '06:11:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(278, 'Hello Hello Hello - Polo & Pan Remix', '03:56:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(279, 'Guy - L’Impératrice Remix', '04:20:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(280, 'Sauce - Beck Remix', '03:23:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(281, 'Woo! - Panda Bear Remix', '02:22:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(282, 'Doctor - Phony Ppl Remix', '03:20:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(283, 'Thicc - Gabriel Garzón-Montano Remix', '02:34:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(284, 'Woo! - Porches Remix', '03:02:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(285, 'Photo ID - Free Nationals Remix', '04:40:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(286, 'Shawty - Nile Rodgers Remix', '03:11:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(287, 'Disco Man - Little Dragon Remix', '03:06:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(288, 'Monte Carlo - Tune-Yards Remix', '02:49:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(289, 'Prescription', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(290, 'Prescription - Extended', '07:11:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(291, 'Pyjamas (feat. Remi Wolf)', '02:48:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/dc4600753fbec698771429850c6b910192c6a728?cid=eed31a43318f478ba48917070c9c3b37'),
(292, 'Young Hearts', '02:39:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/bc3a878e13e09379fd8e0813d3d695a120ab33ac?cid=eed31a43318f478ba48917070c9c3b37'),
(293, 'The World', '03:06:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/8b4c7654d55a4a13533fc27dbd3c39ce65026343?cid=eed31a43318f478ba48917070c9c3b37'),
(294, 'The Only One', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/fad18adc65bb117eef1cf2d7b96ff5f7fa8fbba5?cid=eed31a43318f478ba48917070c9c3b37'),
(295, 'Hospital (One Man Down) (feat. Remi Wolf)', '03:27:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(296, 'Last Christmas', '04:05:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(297, 'Winter Wonderland', '02:40:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(298, 'wyd - Live at Electric Lady', '03:37:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(299, 'Woo! - Live at Electric Lady', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(300, 'Sauce - Live at Electric Lady', '04:08:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(301, 'Liz - Live at Electric Lady', '03:35:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(302, 'Pink + White - Live at Electric Lady', '03:53:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(303, 'Grumpy Old Man - Live at Electric Lady', '03:21:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(304, 'Michael', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(305, 'Pool', '03:43:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(306, 'Liz', '02:55:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(307, 'Photo ID (with Dominic Fike)', '03:27:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(308, 'OK - with Remi Wolf & Solomonophonic', '02:42:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/00c001bbf977163a6b011b23b6e8c6b92d8a1dfa?cid=eed31a43318f478ba48917070c9c3b37'),
(309, 'OK', '03:13:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/2f7135b29fce81b92b616c08f784b1f6264919c4?cid=eed31a43318f478ba48917070c9c3b37'),
(310, 'Monte Carlo', '02:23:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(311, 'Down The Line', '02:54:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(312, 'Woo!', '03:16:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(313, 'Hello Hello Hello', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(314, 'Photo ID', '04:25:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(315, 'Disco Man', '03:12:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(316, 'Cheesin\'', '02:18:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/69a930d5e12dd7c046da03f2898ea525734409d6?cid=eed31a43318f478ba48917070c9c3b37'),
(317, 'Bad Behavior', '03:22:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/44865a4c76c2824a721fe0b1dd2a0fad92449447?cid=eed31a43318f478ba48917070c9c3b37'),
(318, 'Sauce', '03:50:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(319, 'Rufufus', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(320, 'Doctor', '02:50:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(321, 'Guy', '02:42:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(322, 'Thicc', '02:34:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(323, 'Shawty', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(324, 'Rufufus', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(325, 'Shawty', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(326, 'Sauce', '03:50:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(327, 'Guy', '02:42:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(328, 'Virtual Aerobics', '02:02:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/d25300f011cc80915e3f7c771a21edfd1e2c5fa7?cid=eed31a43318f478ba48917070c9c3b37'),
(329, 'Dig What You Dug', '02:57:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/900d648d50f4f8646ee6daa498f34c59656b7a13?cid=eed31a43318f478ba48917070c9c3b37'),
(330, 'Nobody Gets Me (Like You)', '02:37:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/ccf170659fda1a0fcb87f031cb0cd95a4901b8fc?cid=eed31a43318f478ba48917070c9c3b37'),
(331, 'Coastlines', '03:09:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/c83ad59d1ec4b653284ec1c0ab26d07a82b2eb82?cid=eed31a43318f478ba48917070c9c3b37'),
(332, 'Talk Like That', '02:00:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/beafd849e02143f6e1b9dfa90aab0304dcd3f263?cid=eed31a43318f478ba48917070c9c3b37'),
(333, 'Wish Me Luck', '03:45:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/aac5c9e0f83599f5eb3dcf6218eeba955c9436a0?cid=eed31a43318f478ba48917070c9c3b37'),
(334, 'On Time', '02:49:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/30157d511f1030e250e86dc5052dd13eb25b9c07?cid=eed31a43318f478ba48917070c9c3b37'),
(335, 'Quarterback', '03:00:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/9334fc253380475656704522a6ba1a4e9c678212?cid=eed31a43318f478ba48917070c9c3b37'),
(336, 'Another Story', '01:42:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/67c64d1f4a4df36a38f652d32638539e0240e171?cid=eed31a43318f478ba48917070c9c3b37'),
(337, 'OK - with Remi Wolf & Solomonophonic', '02:42:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/00c001bbf977163a6b011b23b6e8c6b92d8a1dfa?cid=eed31a43318f478ba48917070c9c3b37'),
(338, 'OK', '03:13:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/2f7135b29fce81b92b616c08f784b1f6264919c4?cid=eed31a43318f478ba48917070c9c3b37'),
(339, 'All I’ve Ever Known', '05:06:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(340, 'Hospital', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(341, 'Anywhere', '03:48:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(342, 'Sunshine Over The Counter', '04:22:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(343, 'Life According To Raechel', '04:33:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(344, 'Who Are You Now', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(345, 'In From Japan', '04:22:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(346, 'Collider Particles', '03:10:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(347, 'Your Hate Could Power A Train', '03:11:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(348, 'Our Rebellion', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(349, 'Sara And The Silent Crowd', '04:30:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(350, 'Hospital (One Man Down) (feat. Remi Wolf)', '03:27:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(351, 'Inventing The Wheel', '04:17:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(352, 'Death By Suspicion', '04:43:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(353, 'Who Are You Now - Version 1', '03:55:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(354, 'Hospital - First Demo', '03:59:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(355, 'Life According To Raechel - First Demo', '04:12:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(356, 'Young Hearts', '02:39:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/71c859aaafa192f4adc1cfa93738ecd77f87335f?cid=eed31a43318f478ba48917070c9c3b37'),
(357, 'The Only One', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/97542cc4751493cfde133dc1164e51b63568b592?cid=eed31a43318f478ba48917070c9c3b37'),
(358, 'Simple Love Songs', '01:51:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/eec8dc7c9c1e37eba03ff50d3e23466f746ebc38?cid=eed31a43318f478ba48917070c9c3b37'),
(359, 'Pyjamas (feat. Remi Wolf)', '02:48:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/9d9c80102c30fc76909ac86997cb186cc71a526f?cid=eed31a43318f478ba48917070c9c3b37'),
(360, 'The World', '03:06:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/edc7156ed306cc3dc79c0720ab347952abe2978c?cid=eed31a43318f478ba48917070c9c3b37'),
(361, 'Distance', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/9811186a40a90d7b3f372e7df3315feb240290c7?cid=eed31a43318f478ba48917070c9c3b37'),
(362, 'Love Will Find A Way', '01:28:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/1cca2e5bd60c4fd759eb02a0d333215312d4731a?cid=eed31a43318f478ba48917070c9c3b37'),
(363, 'Movie Star', '02:54:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/ece12c970df8316285a76f54c2a4c6c36abf4288?cid=eed31a43318f478ba48917070c9c3b37'),
(364, 'Let’s Go', '02:57:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/d191cd12bf4eadbd8be5435fce11b0ce3f52408e?cid=eed31a43318f478ba48917070c9c3b37'),
(365, 'Take Your Time', '02:53:00', '0NB5HROxc8dDBXpkIi1v3d', '', 'https://p.scdn.co/mp3-preview/764d6f35b8d962641ed4f5c793159f0d5998ba7e?cid=eed31a43318f478ba48917070c9c3b37'),
(366, 'Till We Meet Again', '02:28:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(367, 'Cheryl', '05:23:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(368, 'I Don\'t Want to Set the World on Fire', '03:06:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(369, 'My Reverie', '03:09:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(370, 'When You\'re Smiling', '02:29:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(371, 'Autumn Leaves', '02:12:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(372, 'I\'m Making Believe', '02:15:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(373, 'I\'ll Be Seeing You', '03:34:00', '0NB5HROxc8dDBXpkIi1v3d', '', ''),
(374, 'One in a Million', '03:57:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/eb7e1839c6fc80fe018bc41edc080b71d09c3ffd?cid=eed31a43318f478ba48917070c9c3b37'),
(375, 'Rey', '03:24:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/c4a9b206772e7161d3cbc89a94106b3318428d44?cid=eed31a43318f478ba48917070c9c3b37'),
(376, 'Fever', '02:54:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/ddac14c95889aedc256454e9242256c9ac5642d6?cid=eed31a43318f478ba48917070c9c3b37'),
(377, 'Memory(Trees)', '04:16:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/0ad743c78e81aca7309a691199b613aa5132fa0d?cid=eed31a43318f478ba48917070c9c3b37'),
(378, 'June', '02:39:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/4a2a6a4f0585bce0b8309cf00249c8ec3553e999?cid=eed31a43318f478ba48917070c9c3b37'),
(379, 'Reach', '02:26:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/0b4cb999938bb5e442a3f7ae50370a7bb4540a34?cid=eed31a43318f478ba48917070c9c3b37'),
(380, 'Nature', '03:22:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/a1737c3167235f52795a86ebdc37744ce3b97640?cid=eed31a43318f478ba48917070c9c3b37'),
(381, 'Take 3', '03:56:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/43ede8db44e878f0334f87adce644ad828ef2c5f?cid=eed31a43318f478ba48917070c9c3b37'),
(382, 'O', '02:16:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/def6ee9d9f539428217d9f24bfe0710f894d6898?cid=eed31a43318f478ba48917070c9c3b37'),
(383, 'Air', '04:08:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/ec3b72d6274c7f079323a1b582ac7bf673c1e8d6?cid=eed31a43318f478ba48917070c9c3b37'),
(384, 'Mystery', '03:51:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/69f89602f1aab14b612e83af2d76973ab6360662?cid=eed31a43318f478ba48917070c9c3b37'),
(385, 'Bones', '03:17:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/f1377502dfe7140a4a72cf63974081bbfd3dc8a8?cid=eed31a43318f478ba48917070c9c3b37'),
(386, 'Six Am - Live At The Fonda, Los Angeles, 2019', '02:06:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/4d8b71ac9a31d3c9c7372b6cf933a0f38c0369ea?cid=eed31a43318f478ba48917070c9c3b37'),
(387, '88 - Live At The Fonda, Los Angeles, 2019', '04:08:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/8d5b814c738262091de857950c03e5fd9fe39d91?cid=eed31a43318f478ba48917070c9c3b37'),
(388, 'Jerry - Live At The Fonda, Los Angeles, 2019', '03:32:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/27a49510e84d44496dce93fc14d9b2914fafb975?cid=eed31a43318f478ba48917070c9c3b37'),
(389, '2031 - Live At The Fonda, Los Angeles, 2019', '02:38:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/da46f7626147b6beb5d02081223c57b4c6f01a32?cid=eed31a43318f478ba48917070c9c3b37'),
(390, 'Conversations - Live At The Fonda, Los Angeles, 2019', '06:05:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/ef65a2161a82e8798b94189d649cb650ec8a1d9b?cid=eed31a43318f478ba48917070c9c3b37'),
(391, 'Bower - Live At The Fonda, Los Angeles, 2019', '02:59:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/b35b81d887b941e11ad3d12948469299fed70a73?cid=eed31a43318f478ba48917070c9c3b37'),
(392, 'American Spirits - Live At The Fonda, Los Angeles, 2019', '02:46:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/b16485738b7d037aa41f9afa18b9de67aee20116?cid=eed31a43318f478ba48917070c9c3b37'),
(393, 'Jam - Live At The Fonda, Los Angeles, 2019', '01:09:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/6e5637762514161d8dcf7a4feb7cc5c4c1e9e038?cid=eed31a43318f478ba48917070c9c3b37'),
(394, 'Oof - Live At The Fonda, Los Angeles, 2019', '03:44:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/427dd0d23f8baca7de505e446145de9589beb08d?cid=eed31a43318f478ba48917070c9c3b37'),
(395, 'Diamond Eyes - Live At The Fonda, Los Angeles, 2019', '05:07:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/ef0fd9296760579bfe3550657a64f7b0a8bfd816?cid=eed31a43318f478ba48917070c9c3b37'),
(396, 'Buffalo - Live At The Fonda, Los Angeles, 2019', '04:48:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/4a0cab1aea2d680446f2ecc1adf6add46dfa57a7?cid=eed31a43318f478ba48917070c9c3b37'),
(397, 'Song 3 - Live At The Fonda, Los Angeles, 2019', '03:14:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/e5b8ad4dee2e5104cd7a0398bb3a276249dda8cf?cid=eed31a43318f478ba48917070c9c3b37'),
(398, '1 4 2 - Live At The Fonda, Los Angeles, 2019', '05:30:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/56d66326ae9a72c513959837dc9ccbac10c93b05?cid=eed31a43318f478ba48917070c9c3b37'),
(399, 'Eclipse - Live At The Fonda, Los Angeles, 2019', '05:07:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/a4370a21cff2f11747e90907eb069eff6bee1c69?cid=eed31a43318f478ba48917070c9c3b37'),
(400, 'Dream', '01:42:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/a4172f4071a8fd9228f47e276f4a3c21aae6f81c?cid=eed31a43318f478ba48917070c9c3b37'),
(401, 'Eclipse', '03:04:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/9ffa999911384dbac258cc1f1fad33b7d49f0b80?cid=eed31a43318f478ba48917070c9c3b37'),
(402, 'Twnsion', '02:17:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/c7cc4a25aad7187befbfcc3ca45df9686f1228ed?cid=eed31a43318f478ba48917070c9c3b37'),
(403, 'I\'m Aware', '02:15:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/aad13ddcb40919e35a796ce7fda62ea95bf57b98?cid=eed31a43318f478ba48917070c9c3b37'),
(404, 'Jerry', '03:29:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/ca1c830792220876f0b7d7dcb5a7870c6b07f123?cid=eed31a43318f478ba48917070c9c3b37'),
(405, 'Emphasis', '02:04:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/63e9bacf3257c88f10977591d3aa7d6caf7151ec?cid=eed31a43318f478ba48917070c9c3b37'),
(406, 'Discipline', '03:41:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/91de5ae35f70721ad63ed195d3cba68bb67bd65e?cid=eed31a43318f478ba48917070c9c3b37'),
(407, 'Buffalo', '03:43:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/b363397efb3373949b2b349d5bb6a76544164ba4?cid=eed31a43318f478ba48917070c9c3b37'),
(408, 'Forest', '03:52:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/52ce01c413dc2164549af2e5d1f5e277fe3c9f6d?cid=eed31a43318f478ba48917070c9c3b37'),
(409, 'Møøn', '02:28:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/00ef8266972c250afb924d6afdb8606a13b54882?cid=eed31a43318f478ba48917070c9c3b37'),
(410, 'People Free', '03:19:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/463e370142ba192bd6878f9523bae9d941e6a514?cid=eed31a43318f478ba48917070c9c3b37'),
(411, 'Drowning', '01:56:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/6fbd9d115c497351e39d8b2547968be67fff07d4?cid=eed31a43318f478ba48917070c9c3b37'),
(412, 'Buffalo Reprise', '02:03:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/7785135e1c623c011c7f99eac79256b3d86f4f29?cid=eed31a43318f478ba48917070c9c3b37'),
(413, 'Bower', '02:06:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/bcd16b017845b2e851f603494fcf03b6c3334871?cid=eed31a43318f478ba48917070c9c3b37'),
(414, 'Nice One', '03:33:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/049dcfa4fc1b5b66f067945a108448e4b4c21506?cid=eed31a43318f478ba48917070c9c3b37'),
(415, 'Song 3', '03:27:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/0ba2481c69534bc7f88d18a2e74699604a16695b?cid=eed31a43318f478ba48917070c9c3b37'),
(416, 'Conversations', '05:57:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/6f343d0618b25571fbd7a2eb867e466716e7133b?cid=eed31a43318f478ba48917070c9c3b37'),
(417, 'Balto', '03:56:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/af9033b2abeede1e1b55a7d537b1a87de4b4e3c5?cid=eed31a43318f478ba48917070c9c3b37'),
(418, 'Intro', '00:18:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/9dc5f6796faa64e8b7d7d9a531f8130b4e91b4b3?cid=eed31a43318f478ba48917070c9c3b37'),
(419, 'Womack', '01:55:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/9e47bf0f8ffb6f4e953812ee5f2aa84602100773?cid=eed31a43318f478ba48917070c9c3b37'),
(420, '88', '03:53:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/bb8a9bfd410543e048afbeabc443750887e979e9?cid=eed31a43318f478ba48917070c9c3b37'),
(421, 'Rosary', '03:24:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/c2c1cc3b5fe6d35211f3a2165344f2a73b5f6ec2?cid=eed31a43318f478ba48917070c9c3b37'),
(422, 'I Almost Lost This', '02:41:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/da713ecde97f6b2182c78c51f5c7895e762acbc8?cid=eed31a43318f478ba48917070c9c3b37'),
(423, 'Diamond Eyes', '05:16:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/58542c5b80e94235a4d11633dc5968ad7c3ab684?cid=eed31a43318f478ba48917070c9c3b37'),
(424, 'Lethologica', '00:22:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/9d9e7cf6b5b24d8bb3af77c3b5fd8d2fd6f7ccb4?cid=eed31a43318f478ba48917070c9c3b37'),
(425, 'Wild', '03:42:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/d011f0e9b9e3046e3fee2ba0a16e403332f047d7?cid=eed31a43318f478ba48917070c9c3b37'),
(426, 'Interlude', '00:35:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/55a49a04a803add82a2678e533010a41a55e8557?cid=eed31a43318f478ba48917070c9c3b37'),
(427, 'Interstellar Me', '03:13:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/89dd3a952a936f5d8a62e9f3ac338becf2213a13?cid=eed31a43318f478ba48917070c9c3b37'),
(428, 'Ccbw', '03:46:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/08da7c674fd2e56d040c3abd87dc6ef15ac31e8b?cid=eed31a43318f478ba48917070c9c3b37'),
(429, '1 4 2', '05:05:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/ab51e35e98c3c408a8be7df731c0ef895a1e8ad3?cid=eed31a43318f478ba48917070c9c3b37'),
(430, 'Change Your Mind', '02:10:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/de37f7881379700ebbab1c09ff94aeb72bfb8d21?cid=eed31a43318f478ba48917070c9c3b37'),
(431, 'American Spirits', '02:50:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/b826afa1050c787c52b60d8fafb1e277dba8e6a7?cid=eed31a43318f478ba48917070c9c3b37'),
(432, 'Happy 21', '05:21:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/bac12c02c7249951378ef0afcc4fc213f463fdb9?cid=eed31a43318f478ba48917070c9c3b37'),
(433, 'Feel Better', '04:12:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/2c2f8cb69d3c2f71baa506d59d314ca99e40948e?cid=eed31a43318f478ba48917070c9c3b37'),
(434, 'King\'s Cup', '04:27:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/4f7c8de761386bef24222867d1028d35d4501bdc?cid=eed31a43318f478ba48917070c9c3b37'),
(435, 'R.Dkrd', '05:24:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/c5785d183fdb518e1a581704c83f15400bb4b104?cid=eed31a43318f478ba48917070c9c3b37'),
(436, 'Solar', '04:20:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/68c3157c685eba885cf77b0404bcf67684c7607e?cid=eed31a43318f478ba48917070c9c3b37'),
(437, 'Pseudo', '06:23:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/cbf02599102a2025f02becbc85aaaa696d5521e2?cid=eed31a43318f478ba48917070c9c3b37'),
(438, 'Jerry - Audiotree Live Version', '03:30:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/ad0bd1745167f4f523314e3eb2ea4913941cfdeb?cid=eed31a43318f478ba48917070c9c3b37'),
(439, 'Take 3 - Audiotree Live Version', '04:08:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/5a94654dc29e8a900efdc520f467d72fd62c24c2?cid=eed31a43318f478ba48917070c9c3b37'),
(440, 'One in a Million - Audiotree Live Version', '03:50:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/086686db87868bae2d04c59233f7742bbf9c4de0?cid=eed31a43318f478ba48917070c9c3b37'),
(441, 'Rose - Audiotree Live Version', '03:42:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/ac7069f56f9b9bb78bc39a33b8f65362714b2cd1?cid=eed31a43318f478ba48917070c9c3b37'),
(442, 'Diamond Eyes - Audiotree Live Version', '05:15:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/138afcf6473a2392c61a6410acff1823498f67f8?cid=eed31a43318f478ba48917070c9c3b37'),
(443, 'Baby', '03:40:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/d5a80e2bbbe159de41fda67dfaaf5323c59ead43?cid=eed31a43318f478ba48917070c9c3b37'),
(444, 'Mystery', '03:51:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/69f89602f1aab14b612e83af2d76973ab6360662?cid=eed31a43318f478ba48917070c9c3b37'),
(445, 'June', '02:39:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/4a2a6a4f0585bce0b8309cf00249c8ec3553e999?cid=eed31a43318f478ba48917070c9c3b37'),
(446, 'Take 3', '03:56:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/43ede8db44e878f0334f87adce644ad828ef2c5f?cid=eed31a43318f478ba48917070c9c3b37'),
(447, 'Estrella', '03:07:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/58fbfd0450b3d3b616640035df514f6b5e4f6d1e?cid=eed31a43318f478ba48917070c9c3b37'),
(448, 'Schemin', '02:08:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/b5c227fa1a9df4bf3e32cb35bc14244fadaadbc9?cid=eed31a43318f478ba48917070c9c3b37'),
(449, 'Poligamia', '03:17:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/a4c24817ab27f3eb425b5232d3a798534a8121e7?cid=eed31a43318f478ba48917070c9c3b37'),
(450, 'Cold Feet', '03:29:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/469c5d3708b607606aed4feadb2a2a6cab1ae3e2?cid=eed31a43318f478ba48917070c9c3b37'),
(451, '50', '03:50:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/844ab3a26d6f2e05216b288abddb8d3ab3d6cde3?cid=eed31a43318f478ba48917070c9c3b37'),
(452, 'The Beginning', '04:16:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/c699e4ea206090099cef6ad5d01ea2b178fe275c?cid=eed31a43318f478ba48917070c9c3b37'),
(453, 'Schemin', '02:08:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/758b91e925079bf6dcb7604a78ef98a043274c24?cid=eed31a43318f478ba48917070c9c3b37'),
(454, 'Rose', '03:46:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/6b1fb7ddc7cfb5a8994f3f9bc903e22fe014d668?cid=eed31a43318f478ba48917070c9c3b37'),
(455, 'Why\'d You Have To Act Like That Though', '01:51:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/57939cd75794f14c05aee12ba3883e8f3147486a?cid=eed31a43318f478ba48917070c9c3b37'),
(456, 'Oof', '03:57:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/f4999fa8851f8f6db3d7b358a5eb7bdef0a212fc?cid=eed31a43318f478ba48917070c9c3b37'),
(457, 'Six AM', '02:05:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/e711cc8294b65cedcca3a7c50cd1eb17b3c9f661?cid=eed31a43318f478ba48917070c9c3b37'),
(458, 'Mushroom', '02:46:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/9ba4e52cc4ee73303c39c11308125c9541d6ef2c?cid=eed31a43318f478ba48917070c9c3b37'),
(459, 'Mate', '02:00:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/6e3431f243e5819a149cbeb70de881aaf435eb55?cid=eed31a43318f478ba48917070c9c3b37'),
(460, 'Mushroom', '02:46:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/9ba4e52cc4ee73303c39c11308125c9541d6ef2c?cid=eed31a43318f478ba48917070c9c3b37'),
(461, 'Why\'d You Have To Act Like That Though', '01:51:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/57939cd75794f14c05aee12ba3883e8f3147486a?cid=eed31a43318f478ba48917070c9c3b37'),
(462, 'Lullaby', '04:35:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/c45dfe828bebfcd1578c10b7c942718820b83bc5?cid=eed31a43318f478ba48917070c9c3b37'),
(463, 'Autophobia', '01:36:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/3e80637dee543d3b638316ad846279a9fa6d9d91?cid=eed31a43318f478ba48917070c9c3b37'),
(464, '2031', '02:39:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/0fb66442c243fcbc40e882a9a93474f9d9e84a4d?cid=eed31a43318f478ba48917070c9c3b37'),
(465, 'Babbadook', '03:44:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/828abce4bc5c6a629fe4ad07ea8fdf4bcb5a0a0f?cid=eed31a43318f478ba48917070c9c3b37'),
(466, 'Fine', '02:56:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/d7a79c65ccdc1ab6b9b5619d71b568c40244f708?cid=eed31a43318f478ba48917070c9c3b37'),
(467, 'Untitled Two', '01:51:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/03b59e9922e1f54c90cd71c963846b3b7da69a4a?cid=eed31a43318f478ba48917070c9c3b37'),
(468, 'Second Best', '03:18:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/d313448881806a187f7bc92f4d52d64764505fed?cid=eed31a43318f478ba48917070c9c3b37'),
(469, 'Fine', '02:56:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/d7a79c65ccdc1ab6b9b5619d71b568c40244f708?cid=eed31a43318f478ba48917070c9c3b37'),
(470, 'Eclipse', '03:04:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/9ffa999911384dbac258cc1f1fad33b7d49f0b80?cid=eed31a43318f478ba48917070c9c3b37'),
(471, 'Buffalo', '03:43:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/b363397efb3373949b2b349d5bb6a76544164ba4?cid=eed31a43318f478ba48917070c9c3b37'),
(472, 'Bower', '02:06:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/bcd16b017845b2e851f603494fcf03b6c3334871?cid=eed31a43318f478ba48917070c9c3b37'),
(473, 'Song 3', '03:27:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/0ba2481c69534bc7f88d18a2e74699604a16695b?cid=eed31a43318f478ba48917070c9c3b37'),
(474, 'Blacklight', '05:27:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/d9ab1c912cabdfbec83e1620ea44ffb65929c0c1?cid=eed31a43318f478ba48917070c9c3b37'),
(475, 'Signals', '04:38:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/0b47abdcda50aa54cc8ca356983cffb5e1d6d814?cid=eed31a43318f478ba48917070c9c3b37'),
(476, 'Supra', '04:14:00', '6AQEfqGPSxZX0nJVonYxi6', '', 'https://p.scdn.co/mp3-preview/2f4c6338d8c725abed8757d1348caa6d7e9932ce?cid=eed31a43318f478ba48917070c9c3b37'),
(477, 'going strong', '02:03:00', '7BfRTpk1Pb2CMoPvAsmmbj', '', 'https://p.scdn.co/mp3-preview/ca0050854b098a7115eb0aba8ad71ac9713885be?cid=eed31a43318f478ba48917070c9c3b37'),
(478, 'Viaje Alucinante al Centro de la Mente - En Vivo', '05:22:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/b81c6e740e69399eece3ce8d93cc59b54a54d768?cid=eed31a43318f478ba48917070c9c3b37'),
(479, 'Ramona - En Vivo', '01:58:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/a693e8a23392c3b3efc40860f4d03e54c1c17337?cid=eed31a43318f478ba48917070c9c3b37'),
(480, 'Fantasmas - En Vivo', '01:34:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/c69ea89fb31df73b06af81558a905cc7297002a0?cid=eed31a43318f478ba48917070c9c3b37');
INSERT INTO `canciones` (`id`, `nombre`, `duracion`, `artista`, `album`, `previewUrl`) VALUES
(481, 'Mis Amigos II - En Vivo', '02:44:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/c85bb2b848d66165aa65490c10b7530468f85561?cid=eed31a43318f478ba48917070c9c3b37'),
(482, 'Municipálida - En Vivo', '05:29:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/609fd5a1fe45fdc46f1648cf18300c8af764fe37?cid=eed31a43318f478ba48917070c9c3b37'),
(483, 'Tus Pecas / Australia - En Vivo', '05:36:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/7462775d680e5071f613a4045968add7349982b3?cid=eed31a43318f478ba48917070c9c3b37'),
(484, 'Puchos - En Vivo', '03:32:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/304fb4fe072fe3f4498b65f205cbb7cc6268fa11?cid=eed31a43318f478ba48917070c9c3b37'),
(485, 'Oss - En Vivo', '02:02:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/9ef8f2151ac710c09622b9a988f9881b8a4b73a0?cid=eed31a43318f478ba48917070c9c3b37'),
(486, 'Futuro - En Vivo', '05:04:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/7db315c2753491ca1eabae5274eb872b842ce2ca?cid=eed31a43318f478ba48917070c9c3b37'),
(487, 'Flow de Cuyo - En Vivo', '03:47:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/0b125d562475c44727ebae6fe9b6a451f92873d5?cid=eed31a43318f478ba48917070c9c3b37'),
(488, 'Tuca - En Vivo', '04:24:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/3f3e131d0ca1d376d0cb57b487ef227d13276402?cid=eed31a43318f478ba48917070c9c3b37'),
(489, 'Corda - En Vivo', '02:41:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/e5443d9dae7bf1b1c042a712225f396bbacbf951?cid=eed31a43318f478ba48917070c9c3b37'),
(490, 'Mis Amigos - En Vivo', '01:15:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/ba6688c640a39d72bfc8079d31cab5fce1b2cb5f?cid=eed31a43318f478ba48917070c9c3b37'),
(491, 'Pelicula - En Vivo', '02:22:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/5eacf50c7be74aea7b1815b4ecffaad03efcae49?cid=eed31a43318f478ba48917070c9c3b37'),
(492, 'La Playa / Mambo - En Vivo', '02:58:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/e7aa1a2e6f986a88a0cf54021b1bece11654b560?cid=eed31a43318f478ba48917070c9c3b37'),
(493, 'Turco X - En Vivo', '04:19:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/ad40a662789e931474946b855be66a7a5fcd1773?cid=eed31a43318f478ba48917070c9c3b37'),
(494, 'Sangucci - En Vivo', '05:15:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/b7202d1c77d41df07ba024f2ced82ab1e210c115?cid=eed31a43318f478ba48917070c9c3b37'),
(495, 'Flow de Cuyo', '04:00:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/4a92cb66ebc0bec7f2cd41dffef2862da29b9437?cid=eed31a43318f478ba48917070c9c3b37'),
(496, 'Tuca', '04:34:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/c705931be869fd9579315f0ab235d94fc492d91c?cid=eed31a43318f478ba48917070c9c3b37'),
(497, 'Municipálida', '05:00:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/1b2c7d36cacc812d92789078afeeff3e6b368fc3?cid=eed31a43318f478ba48917070c9c3b37'),
(498, 'Sangucci', '03:29:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/fcc6856a69f3e4b330d27ed06aa62b08b1d91188?cid=eed31a43318f478ba48917070c9c3b37'),
(499, 'Fantasmas', '02:00:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/b908b3558374c3d85a70a84a690de3d27a7ef08a?cid=eed31a43318f478ba48917070c9c3b37'),
(500, 'Corda', '01:40:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/3869f1e4f9145e15fb98bb347a66cbc34d028c16?cid=eed31a43318f478ba48917070c9c3b37'),
(501, 'Las Ideas', '03:56:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/77d7a0ec0599e84e0e95f77c5078717b97a8c958?cid=eed31a43318f478ba48917070c9c3b37'),
(502, 'Mis Amigos II', '02:40:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/020ccfcdf17c32eb92b1d5da38036b9d74c0d38f?cid=eed31a43318f478ba48917070c9c3b37'),
(503, 'Futuro', '03:29:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/4d6ec3db8423c3def9c1a1ed0fc5a543fa047d46?cid=eed31a43318f478ba48917070c9c3b37'),
(504, 'Pesadilla', '05:35:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/91f7029ad7f5270b6661e23375076a98a4ef0fff?cid=eed31a43318f478ba48917070c9c3b37'),
(505, 'Mis Amigos', '00:41:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/f95e78af6e3b97dc984f858cdd10e61d5b6c3e6c?cid=eed31a43318f478ba48917070c9c3b37'),
(506, 'Ramona', '01:57:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/af23fd45b918c1c4c00986713f0f3044dbee29fd?cid=eed31a43318f478ba48917070c9c3b37'),
(507, 'Puchos', '03:52:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/e44f8736497836213da64e6c18b9fb72f6cee5d2?cid=eed31a43318f478ba48917070c9c3b37'),
(508, 'La Playa - Mambo', '03:14:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/63d963afcd4be0715ee3f1202b3a1b44f6a506a5?cid=eed31a43318f478ba48917070c9c3b37'),
(509, 'Un Montón', '04:12:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/f73e5d58c43c88748f7387ffa046ff3106cdc669?cid=eed31a43318f478ba48917070c9c3b37'),
(510, 'Australia', '03:50:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/35ea06829f25b5b2cac8c11b455abc96d3dc4b2d?cid=eed31a43318f478ba48917070c9c3b37'),
(511, 'Turco X', '02:22:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/0952ab1956b314b378e3f47a2314e18ccdff705f?cid=eed31a43318f478ba48917070c9c3b37'),
(512, 'Tus Pecas - Bonus Track', '02:47:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/f91f1aafcc277a774762d5b4081144b4109ae866?cid=eed31a43318f478ba48917070c9c3b37'),
(513, 'Oss', '01:35:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/0239d44c7ab8759d98295495f9409706fbe94dee?cid=eed31a43318f478ba48917070c9c3b37'),
(514, 'Tekashi', '00:51:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/a0b81d997a761a49da48d41f88f79d72beede000?cid=eed31a43318f478ba48917070c9c3b37'),
(515, 'Fuego V8', '01:11:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/7589ca28ecb7e71ac1030a09397bf3320b3ff6b0?cid=eed31a43318f478ba48917070c9c3b37'),
(516, 'Devil Son', '01:15:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/5b6963f903830e3e8e993fecbe896c0c5e06edb1?cid=eed31a43318f478ba48917070c9c3b37'),
(517, '11 Point', '00:58:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/b56b65633ef7b9304712e3c4f6fdbef30b1266db?cid=eed31a43318f478ba48917070c9c3b37'),
(518, 'Película', '01:59:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/a2026178146a21bb4b84670fe8498dabefd5d7ca?cid=eed31a43318f478ba48917070c9c3b37'),
(519, 'Viaje Alucinante al Centro de la Mente', '05:00:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/b15f389fae67e2251621ab34a241e551d444a613?cid=eed31a43318f478ba48917070c9c3b37'),
(520, 'Ay Chinita', '02:50:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/f89132f3ba27aa45c656f90dc4ad4664cd335a32?cid=eed31a43318f478ba48917070c9c3b37'),
(521, 'El Visto', '03:41:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/bc461db3a735d1de501e7029f39649cb1a72f8a3?cid=eed31a43318f478ba48917070c9c3b37'),
(522, 'La Pibita', '04:22:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/c1491dd84d6c0b13a6229d0cdad95fcaef18ee28?cid=eed31a43318f478ba48917070c9c3b37'),
(523, 'La Chica de la Playa', '03:52:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/f79ef6e9d01de2762726d3672a9226a038bc3143?cid=eed31a43318f478ba48917070c9c3b37'),
(524, 'Chaparrón', '05:06:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/44b4e62e0c91599914d01dff5f451e1be903d8c0?cid=eed31a43318f478ba48917070c9c3b37'),
(525, 'The King of Achuras', '04:00:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/aeb462c6f72ee9b35c1f03170c1c9c253165fe96?cid=eed31a43318f478ba48917070c9c3b37'),
(526, '5 Medicinas', '03:01:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/b801f40ffda25a06cd797661274d1bdc9c27f25e?cid=eed31a43318f478ba48917070c9c3b37'),
(527, 'La Comunidad', '04:01:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/f040e62ff6e61762716532897198c9218ccbeaf0?cid=eed31a43318f478ba48917070c9c3b37'),
(528, 'La Montaña', '02:50:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/8ce9e40a136e84639dee7c539a2954b095b3fa8a?cid=eed31a43318f478ba48917070c9c3b37'),
(529, 'Bichos', '03:19:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/dfe423b14763bc14e857339e672f2da0f0da082a?cid=eed31a43318f478ba48917070c9c3b37'),
(530, 'El Último Baile', '04:19:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/09401166dff874f21848b43f0b8220fdad1d8d93?cid=eed31a43318f478ba48917070c9c3b37'),
(531, 'Frescos', '04:42:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/1dc984ae192715452f68f3bfaf084f73b2b2ad8f?cid=eed31a43318f478ba48917070c9c3b37'),
(532, 'Lo Que Pinta', '04:39:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/d91f4614697d479d8b816434393677935466d5f5?cid=eed31a43318f478ba48917070c9c3b37'),
(533, 'En el Castillo', '04:59:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/5495b71c202475af3b4e947b53a2c22772aa04dd?cid=eed31a43318f478ba48917070c9c3b37'),
(534, 'Cuentos Nocturnales', '04:26:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/e05163b11236ee5f8d9c2377fed4ed088091ae94?cid=eed31a43318f478ba48917070c9c3b37'),
(535, 'Qda Loco', '04:27:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/e207c69f370b6bddb440a2eca860d6e38fb6b5b0?cid=eed31a43318f478ba48917070c9c3b37'),
(536, 'Quemadísimos', '05:46:00', '0mSn9qsGHUMllx267A3qX3', '', 'https://p.scdn.co/mp3-preview/ff80077fb4b193f47da71d2f12e953ae1215aefe?cid=eed31a43318f478ba48917070c9c3b37'),
(537, 'Nuevo Comienzo', '03:06:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/8f32ffe4c551e373b35733015b49e505aab3b9e3?cid=eed31a43318f478ba48917070c9c3b37'),
(538, 'VOID', '03:19:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/2384b446e0f5b8e649b68af3eb327c5918b7a6b4?cid=eed31a43318f478ba48917070c9c3b37'),
(539, 'Las Flores Sangran', '03:18:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/7b6a1ab4eecfb3ad002f4dfecb3c9fd0aea7d391?cid=eed31a43318f478ba48917070c9c3b37'),
(540, 'Salto al Espacio', '03:01:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/e82308e43f7dac129b88d2a3f895798251011b63?cid=eed31a43318f478ba48917070c9c3b37'),
(541, 'TRAS', '02:59:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/816b5e1b8be0a050652cf4069a381fe638c6e06d?cid=eed31a43318f478ba48917070c9c3b37'),
(542, 'Melodía del Viento', '04:13:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/e7538b0dab36ba968c75cadccf20da608f4e9bd8?cid=eed31a43318f478ba48917070c9c3b37'),
(543, 'Sol', '03:02:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/c0b354b391388cfd92d8a409dae909ce2571db76?cid=eed31a43318f478ba48917070c9c3b37'),
(544, 'Nena, dime algo.', '02:36:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/484c92d1a683f0b595a59658b6d024c0bb6fb78a?cid=eed31a43318f478ba48917070c9c3b37'),
(545, 'Cabo', '03:09:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/058733f13c92085c45b708f60cfda50e2f7f0d99?cid=eed31a43318f478ba48917070c9c3b37'),
(546, 'Horizonte', '02:50:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/5d2e4b6fe4fc8a28b5d7b9a778d99d35c71f76dd?cid=eed31a43318f478ba48917070c9c3b37'),
(547, 'La Verdad', '04:02:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/eeffbcf1c53fd7c2700aa7e4c9e023fcf0a56275?cid=eed31a43318f478ba48917070c9c3b37'),
(548, 'Calma', '04:29:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/d8c10adbb005f450bdbd0f0731f9067c6512c755?cid=eed31a43318f478ba48917070c9c3b37'),
(549, 'Gandalf', '03:46:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/cc56a64f69a09bc0dbd493a3b585894f97999115?cid=eed31a43318f478ba48917070c9c3b37'),
(550, 'Aguetas', '03:30:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/3b455cbd0ad38ea5b7178150a815d09dd7cedbaf?cid=eed31a43318f478ba48917070c9c3b37'),
(551, 'Laser 420', '04:20:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/6fb91289a3e6389300171af3db9082588ba2d3c3?cid=eed31a43318f478ba48917070c9c3b37'),
(552, 'Big Bang', '04:53:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/0f25a21741d60d2cbd507a0432e2f15cc0f0aaa1?cid=eed31a43318f478ba48917070c9c3b37'),
(553, 'Mañana', '03:25:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/d22db9e59f1a3516fbe477c7220d9a6692d0bfc3?cid=eed31a43318f478ba48917070c9c3b37'),
(554, 'F.T', '04:10:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/8fd22d8a626dbd9ce92f362c7346eeb0ed919418?cid=eed31a43318f478ba48917070c9c3b37'),
(555, 'Rhodulo', '01:18:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/00443e833a2b8e6e6c858f9a94cdcb9fc02c493b?cid=eed31a43318f478ba48917070c9c3b37'),
(556, 'Siento', '04:16:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/616ed61c5f06dd5f48326be1ba5a72276571b8e8?cid=eed31a43318f478ba48917070c9c3b37'),
(557, 'La Bestia', '02:48:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/fed6e2b0bc25717638d096a29e6ffa72ce305eed?cid=eed31a43318f478ba48917070c9c3b37'),
(558, 'Pana', '03:22:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/684558c76ffac3b8eeb39512fd6c2757d6f589ae?cid=eed31a43318f478ba48917070c9c3b37'),
(559, 'Tu Salto', '03:13:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/ff85aa1fcec921f0e9782defaa61d55fc853fb35?cid=eed31a43318f478ba48917070c9c3b37'),
(560, 'Puedo Morir, Puedo Caer', '04:06:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/79d69d25b0ca4396b3b11432ef7efa0c29af1eec?cid=eed31a43318f478ba48917070c9c3b37'),
(561, 'Otra Vez', '03:53:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/6733a760eb90b47914e9c8c85c066ac3838faa67?cid=eed31a43318f478ba48917070c9c3b37'),
(562, 'Girando a Través', '03:40:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/1247b9a24df1261f6f4d2b6958204132e5b7eb83?cid=eed31a43318f478ba48917070c9c3b37'),
(563, 'Plastilina', '03:13:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/d530feef5da6aa62e3e3a95863580be34a822eb4?cid=eed31a43318f478ba48917070c9c3b37'),
(564, 'Cristales', '03:44:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/b71d6184f3d312f22ab54d775ebe3986f36109f0?cid=eed31a43318f478ba48917070c9c3b37'),
(565, 'Textos', '04:53:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/f9440681f904ecf570e13d7d950cdff5020ad2b6?cid=eed31a43318f478ba48917070c9c3b37'),
(566, 'Seis', '01:34:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/eab736beb09a03a943271039338d7d83d933cd83?cid=eed31a43318f478ba48917070c9c3b37'),
(567, 'Alfredo', '03:05:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/d671ce3f4951250981d9c842d2b153c02166e033?cid=eed31a43318f478ba48917070c9c3b37'),
(568, 'La Luna Patas para Arriba', '03:41:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/ba821bedbcc360742ddda9039b737a4e75d8823c?cid=eed31a43318f478ba48917070c9c3b37'),
(569, 'Fusión y Fin', '03:09:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/ea7b20142a4add8cec6c2ab5ceef73a90cff2f8b?cid=eed31a43318f478ba48917070c9c3b37'),
(570, 'Agua Marfil', '04:11:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/5e2721bc11b14924e833b1850e5eb1fa6ab70c6b?cid=eed31a43318f478ba48917070c9c3b37'),
(571, 'VOID', '03:19:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/b7cb6198c70126c77dc69599d9d92e4eae0780f1?cid=eed31a43318f478ba48917070c9c3b37'),
(572, 'Nena, dime algo.', '02:36:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/560b26703ec8a41e71ca8955ae50a15bf81a736e?cid=eed31a43318f478ba48917070c9c3b37'),
(573, 'Las Flores Sangran', '03:18:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/f7774efc4d9b5a853285de5c0630a4c8760e6843?cid=eed31a43318f478ba48917070c9c3b37'),
(574, 'Nuevo Comienzo', '03:06:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/3bdf28617af467d7e745981a40ba4e9bfc7525e2?cid=eed31a43318f478ba48917070c9c3b37'),
(575, 'Pastizal', '03:52:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/f4f9cf90ce48b82e2ad596796d4e5ffc0b203a21?cid=eed31a43318f478ba48917070c9c3b37'),
(576, 'Rhodulo', '02:30:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/1acd76e7844a04f29360be4945f708cb629e72ce?cid=eed31a43318f478ba48917070c9c3b37'),
(577, 'Pana', '03:48:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/e898c79554ada810d6d0f794eb44bb1b79fa1cb1?cid=eed31a43318f478ba48917070c9c3b37'),
(578, 'Big Bang', '05:01:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/e0ccce88014612ad7e35cf4427d73689536ef7db?cid=eed31a43318f478ba48917070c9c3b37'),
(579, 'Aguetas', '05:12:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/b20fb3690a1506364e19ccb4b9ad519a8030acd6?cid=eed31a43318f478ba48917070c9c3b37'),
(580, 'Welcome', '04:09:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/18dd06704ce1e0f07e7cfeff2a8d538b9cb9c763?cid=eed31a43318f478ba48917070c9c3b37'),
(581, 'El Hit', '03:59:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/a9911e5de9107d470fb29606dbba9bc1c683859c?cid=eed31a43318f478ba48917070c9c3b37'),
(582, 'Como un Pez (feat. Usted Señalemelo)', '04:01:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/b76fc4d19a40608ac72899875949785ff149036e?cid=eed31a43318f478ba48917070c9c3b37'),
(583, 'Ella Dijo No', '04:04:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/66b9b1ae76b521f168afe84743e0e56b2f0225a1?cid=eed31a43318f478ba48917070c9c3b37'),
(584, 'En el Aire', '03:26:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/8fed5a61e3323c818823aad98ddb579f7ee29753?cid=eed31a43318f478ba48917070c9c3b37'),
(585, 'Somos Nosotros', '03:52:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/6f155af3ef0d1beaec106d1562f3db24ec38c75f?cid=eed31a43318f478ba48917070c9c3b37'),
(586, 'Escenario', '03:31:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/753d0096276078db80cc7391c10590b416d832a1?cid=eed31a43318f478ba48917070c9c3b37'),
(587, '1000 Días', '03:42:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/35fd419f4a29515b40a9f305c2ede2edf917395d?cid=eed31a43318f478ba48917070c9c3b37'),
(588, 'El Intento', '03:51:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/b9e4205bdb7d30055e95b2829d0f78ba116afe5a?cid=eed31a43318f478ba48917070c9c3b37'),
(589, 'Negra Monamour', '03:32:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/ecbfc31925eafa0a9e98a54bb3f52b7b2c19c557?cid=eed31a43318f478ba48917070c9c3b37'),
(590, 'La Universidad de Tus Besos', '04:00:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/dc7752b246951f5a9ba3432f7f389706b4fd0868?cid=eed31a43318f478ba48917070c9c3b37'),
(591, 'Calma Primavera', '04:54:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/51c117079fe34e1662b6d8126df0e598c46de550?cid=eed31a43318f478ba48917070c9c3b37'),
(592, 'Hip Love', '03:26:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/8e994a7f8145b4498d9d3cfee442fa51748fbf6e?cid=eed31a43318f478ba48917070c9c3b37'),
(593, 'Hoy Te Voy a Hablar', '03:17:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/e7a010dd4edda180ec108028c8b378bb78caab45?cid=eed31a43318f478ba48917070c9c3b37'),
(594, 'Haciendo Fiesta', '03:01:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/d37acac7af6f57c1e108042ff42769502d00c058?cid=eed31a43318f478ba48917070c9c3b37'),
(595, 'De Tan Sincero', '03:36:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/6d7321a7931844209bf8330dc089fa7e054a83ed?cid=eed31a43318f478ba48917070c9c3b37'),
(596, 'La Decision', '04:23:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/71c37baa15af30d0ac93190fa1156681f5bcdc36?cid=eed31a43318f478ba48917070c9c3b37'),
(597, 'Jodido', '02:57:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/c18091206ed169b6dfd8ab053001da8c9f4d0cc7?cid=eed31a43318f478ba48917070c9c3b37'),
(598, 'La Topadora', '02:47:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/231ea84d7a3959e43b665b741818d6afa171c535?cid=eed31a43318f478ba48917070c9c3b37'),
(599, 'Gira Loca', '04:36:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/1d2f9d547dfa5cc15054174169c8a33c5c74c658?cid=eed31a43318f478ba48917070c9c3b37'),
(600, 'A Mariana', '03:24:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/d301da0907d55635bed9ef5a1e79c88848fcfdbe?cid=eed31a43318f478ba48917070c9c3b37'),
(601, 'Se Vos', '04:24:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/1d0bce8c9b1df6a63392b15f5f4b0b77f1978348?cid=eed31a43318f478ba48917070c9c3b37'),
(602, 'Se Ha De Ir', '04:40:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/58f8dc42d6b54462aa9b09d91b03000c5252bad2?cid=eed31a43318f478ba48917070c9c3b37'),
(603, 'La Mañana', '04:41:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/8b272b3026fe03d619ba4fb4c54a56dd58fc2d02?cid=eed31a43318f478ba48917070c9c3b37'),
(604, 'Las Piedras', '03:21:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/fe0990d257d75695cf4d1c4ad373f8b29e79921e?cid=eed31a43318f478ba48917070c9c3b37'),
(605, 'Pajero', '04:46:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/e2a44a4322d94dce8e11b0bdb249044d2a47d09b?cid=eed31a43318f478ba48917070c9c3b37'),
(606, 'Reagge Con Amor', '03:44:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/096f18cfd838f900c10eb0cab114940794afe2e2?cid=eed31a43318f478ba48917070c9c3b37'),
(607, 'A Rita', '07:42:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/1c7fafcfbb2865f42f14853028bc1e80e026f5fc?cid=eed31a43318f478ba48917070c9c3b37'),
(608, 'Volver a Ser', '05:12:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/6fe8a31dcf899a965ca771fd84371a8ebeddb4af?cid=eed31a43318f478ba48917070c9c3b37'),
(609, 'Se Tan Sincero', '03:10:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/19463d35478f9d75f2d74f3b303e8484af687cc7?cid=eed31a43318f478ba48917070c9c3b37'),
(610, 'Dulce Dia', '04:29:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/7efe748a8f786bcfa1353aaf2f9cef922c5d74e9?cid=eed31a43318f478ba48917070c9c3b37'),
(611, 'Embajada Cuyana / Alta Birra', '03:47:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/463744f4173a7e67038ada7d330590ae6221afe6?cid=eed31a43318f478ba48917070c9c3b37'),
(612, 'Solari Yacumenza (feat. Cuareim 1080)', '06:39:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/a293780e1d7b1abb70fe01760349bb2eb8cf44ca?cid=eed31a43318f478ba48917070c9c3b37'),
(613, 'Flor de Piel', '04:35:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/612d84808cf0b9dbae56d08a2f1b0a23c3638299?cid=eed31a43318f478ba48917070c9c3b37'),
(614, 'Clueca la Cueca', '06:14:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/d273ea020f25baa47e9b09304ea04d718a6872fa?cid=eed31a43318f478ba48917070c9c3b37'),
(615, 'Espiral', '04:02:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/a748b9ada20688f3b0188b1db37d124f8b9d23e8?cid=eed31a43318f478ba48917070c9c3b37'),
(616, 'A las Siete', '06:04:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/0f28d183a5c4b56f85384342877f197f8f9bb8fa?cid=eed31a43318f478ba48917070c9c3b37'),
(617, 'Trapecista', '04:58:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/e286ff80d0ad8ae9f0e199de9714b7f23150cdbd?cid=eed31a43318f478ba48917070c9c3b37'),
(618, 'A Tiempo (feat. Usted Señalemelo)', '05:23:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/717f862b57061bc028cc42cfabd21f687d0384b3?cid=eed31a43318f478ba48917070c9c3b37'),
(619, 'Hop Club', '04:23:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/8313f466f8a89890d3faa7f73b4c60664cdd4d2c?cid=eed31a43318f478ba48917070c9c3b37'),
(620, 'Caminé', '05:14:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/5b4a68af9469ec8d4bcaca6e28be32528d2e2767?cid=eed31a43318f478ba48917070c9c3b37'),
(621, 'Aura', '03:03:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/82380c38625315e69a9683dac707cc27a98e25b8?cid=eed31a43318f478ba48917070c9c3b37'),
(622, 'Absente', '07:08:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/4b4b5c38a78eafecfea3aa4f84e716c123a7a79c?cid=eed31a43318f478ba48917070c9c3b37'),
(623, 'Virgen del Sol', '04:31:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/7b25ad619467ab00d3fbdcc401789efbac243c07?cid=eed31a43318f478ba48917070c9c3b37'),
(624, 'Bailarín', '08:14:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/9f5bc8e0772800cdad842760ec71c85f61d360e6?cid=eed31a43318f478ba48917070c9c3b37'),
(625, 'A Tiempo 2.0 (feat. Usted Señalemelo)', '03:32:00', '1a1v0OJC5GqtsLwzoqJm7j', '', 'https://p.scdn.co/mp3-preview/f106654f8c45e44d455fcac5ee8c30c13e3192e2?cid=eed31a43318f478ba48917070c9c3b37'),
(626, 'Amtrak', '02:56:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/1f7b109ada9d489864353e1ebc7f302636cfeb39?cid=eed31a43318f478ba48917070c9c3b37'),
(627, 'Deep Seated', '03:50:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/880bc90e732bd6c78c93efea87bb5021b34d6419?cid=eed31a43318f478ba48917070c9c3b37'),
(628, 'Likewise', '03:35:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/42a969aaaf09ca8a5eaa12d37637338c0739293e?cid=eed31a43318f478ba48917070c9c3b37'),
(629, 'It\'s Got To Be You', '03:55:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/8c6441c3793d6fbf0da694de41eec6cba9972494?cid=eed31a43318f478ba48917070c9c3b37'),
(630, 'Lonely', '03:14:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/c0e0e7fefb045eeb42567e40391f3ccfc7f135a2?cid=eed31a43318f478ba48917070c9c3b37'),
(631, 'Moon Ride', '04:55:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/3197b1a89b5ccb43d0050895bec887465b3d5fd5?cid=eed31a43318f478ba48917070c9c3b37'),
(632, 'Purple Night', '03:25:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/a1be26f67997f9de1e819a878ef08cc46bbd619e?cid=eed31a43318f478ba48917070c9c3b37'),
(633, 'Solo Tú', '04:41:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/fb07e7619a6487a8c6a43649253c564caa16270b?cid=eed31a43318f478ba48917070c9c3b37'),
(634, 'Love Again', '03:44:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/b386990f389becdad8da028bd46cfd3aefa5511a?cid=eed31a43318f478ba48917070c9c3b37'),
(635, 'Amtrak', '02:56:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/1f7b109ada9d489864353e1ebc7f302636cfeb39?cid=eed31a43318f478ba48917070c9c3b37'),
(636, 'It\'s Got To Be You', '03:55:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/8c6441c3793d6fbf0da694de41eec6cba9972494?cid=eed31a43318f478ba48917070c9c3b37'),
(637, 'Cry of The Humble', '02:50:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/56c54dbd042f478e7f4d07016e181b15b07af7b6?cid=eed31a43318f478ba48917070c9c3b37'),
(638, 'Sweet Honey', '03:26:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/2a0584565bfa04170bfb79b0eb1c61791ffc2c91?cid=eed31a43318f478ba48917070c9c3b37'),
(639, 'The Messiah', '04:44:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/c92cc33c25b4ea0292bc9338ea1e9d4236483464?cid=eed31a43318f478ba48917070c9c3b37'),
(640, 'New Humanity', '03:20:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/ff07e411d848c678c4e07b700359a722fed5ba98?cid=eed31a43318f478ba48917070c9c3b37'),
(641, 'Fruitful', '02:30:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/76d99ed611a604823a606fab3716ee055331a313?cid=eed31a43318f478ba48917070c9c3b37'),
(642, 'Never Have Enough', '05:19:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/631b6fedc612d303f02d5474087cc65d4d5156de?cid=eed31a43318f478ba48917070c9c3b37'),
(643, 'Friends', '02:39:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/5b614c58f8836e10ec4a184a676fbe6e909544a6?cid=eed31a43318f478ba48917070c9c3b37'),
(644, 'Love Tape', '03:45:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/1093b4a290a4bbe10d3f00d940327b3dc1a6520a?cid=eed31a43318f478ba48917070c9c3b37'),
(645, 'Nostalgic Vibrations', '03:54:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/514e751ee6c725787b72172785abffa2669c4510?cid=eed31a43318f478ba48917070c9c3b37'),
(646, 'Oh Grace', '02:49:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/b58f1595ca8d0e27d327ab0e977453522e571efb?cid=eed31a43318f478ba48917070c9c3b37'),
(647, 'Last Day On Earth', '03:42:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/b1d269d2d97b2df762235af409a09a6105cc8c3c?cid=eed31a43318f478ba48917070c9c3b37'),
(648, 'Never Have Enough', '05:19:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/631b6fedc612d303f02d5474087cc65d4d5156de?cid=eed31a43318f478ba48917070c9c3b37'),
(649, 'Friends', '02:39:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/5b614c58f8836e10ec4a184a676fbe6e909544a6?cid=eed31a43318f478ba48917070c9c3b37'),
(650, 'Someone To Spend Time With', '02:53:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/aaed8f6760c086d67e1d764e32fddc105e694551?cid=eed31a43318f478ba48917070c9c3b37'),
(651, 'Oh! Southern Wind', '03:00:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/e1f862d26285d317206febdc6069568bf757342f?cid=eed31a43318f478ba48917070c9c3b37'),
(652, 'Emerald Glass', '03:32:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/f455eda75b7c96258e5e2500370b81e87293d0be?cid=eed31a43318f478ba48917070c9c3b37'),
(653, 'Summer Begins', '02:58:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/00e5fe8a4d2da48cfa20bc14e7f8d66430076945?cid=eed31a43318f478ba48917070c9c3b37'),
(654, '太陽のせい', '04:41:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/5215b6ec405db958cb325c519f8761ffa01ff719?cid=eed31a43318f478ba48917070c9c3b37'),
(655, 'Love Again', '03:44:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/ec93a4237ae1166a62f0530e038aade74e733896?cid=eed31a43318f478ba48917070c9c3b37'),
(656, '二人の夏', '03:24:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/25a1e0db8677cbfb10b59283d4e6bef2232e4482?cid=eed31a43318f478ba48917070c9c3b37'),
(657, 'Mirage', '04:16:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/f5fcd5403a7ce1e83005607fd2f5ab34ce8de1c8?cid=eed31a43318f478ba48917070c9c3b37'),
(658, 'Drip Trip', '03:52:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/4d7fc500014a0b825d332999cf933170120147ef?cid=eed31a43318f478ba48917070c9c3b37'),
(659, 'There She Goes', '02:52:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/de91d6676cdf4d3519aabada4e5fb0f91b9ef213?cid=eed31a43318f478ba48917070c9c3b37'),
(660, 'Dreamin\'', '03:20:00', '0qraFJK6boYSp4ZMMX4PzG', '', 'https://p.scdn.co/mp3-preview/c6adbc36d4249d85ed482a26d496dbc66d610570?cid=eed31a43318f478ba48917070c9c3b37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emociones`
--

CREATE TABLE `emociones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `emociones`
--

INSERT INTO `emociones` (`id`, `nombre`) VALUES
(1, 'Feliz'),
(2, 'Triste'),
(3, 'Nostalgia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emociones_artistas`
--

CREATE TABLE `emociones_artistas` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) DEFAULT NULL,
  `emociones_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `emociones_artistas`
--

INSERT INTO `emociones_artistas` (`id`, `artistas_id`, `emociones_id`, `usuario_id`) VALUES
(1, 6, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emociones_usuarios`
--

CREATE TABLE `emociones_usuarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `cancion_id` int(11) DEFAULT NULL,
  `emocion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `emociones_usuarios`
--

INSERT INTO `emociones_usuarios` (`id`, `usuario_id`, `cancion_id`, `emocion_id`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Rock'),
(2, 'Pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos2`
--

CREATE TABLE `generos2` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos2`
--

INSERT INTO `generos2` (`id`, `nombre`) VALUES
(1, 'Jazz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `interaccion` text NOT NULL,
  `usuarioId` int(11) NOT NULL,
  `horario` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `interaccion`, `usuarioId`, `horario`) VALUES
(1, 'Cancion:Sexy Villain', 1, '16:20:20'),
(2, 'Cancion:Afterthought', 1, '00:00:00'),
(3, 'Cancion:Summer Time High Time', 1, '19:37:38'),
(4, 'Cancion:Lover Is a Day', 1, '00:00:00'),
(5, 'Cancion:Dontmakemefallinlove', 1, '00:00:00'),
(6, 'Cancion:Dontmakemefallinlove', 1, '00:00:00'),
(7, 'Artista:[object HTMLParagraphElement]', 1, '10:15:04'),
(8, 'Artista:[object HTMLParagraphElement]', 1, '10:15:04'),
(9, 'Cancion:La Estoy Pasando Muy Bien', 1, '10:24:55'),
(10, 'Cancion:La Estoy Pasando Muy Bien', 1, '10:24:55'),
(11, 'Artista:tslit', 1, '10:44:36'),
(12, 'Artista:tslit', 1, '10:44:36'),
(13, '', 1, '00:00:00'),
(14, '', 1, '00:00:00'),
(15, '', 1, '00:00:00'),
(16, '', 1, '00:00:00'),
(17, '', 1, '00:00:00'),
(18, '', 1, '00:00:00'),
(19, '', 1, '00:00:00'),
(20, '', 1, '00:00:00'),
(21, '', 1, '00:00:00'),
(22, '', 1, '00:00:00'),
(23, '', 1, '00:00:00'),
(24, 'Artista:[object HTMLParagraphElement]', 1, '10:15:04'),
(25, 'Artista:[object HTMLParagraphElement]', 1, '10:15:04'),
(26, 'Cancion:Summer Time High Time', 1, '11:20:21'),
(27, 'Cancion:Die For You', 1, '11:24:54'),
(28, 'Cancion:Sexy Villain', 1, '11:28:35'),
(29, 'Cancion:American Spirits', 1, '11:33:49'),
(30, 'Cancion:Fever', 1, '11:39:47'),
(31, 'Artista:Electric Youth', 1, '11:43:00'),
(32, 'Artista:[object HTMLParagraphElement]', 1, '10:15:04'),
(33, 'Artista:Electric Youth', 1, '11:47:43'),
(34, 'Cancion:Sexy Villain', 1, '11:50:10'),
(35, 'Artista:null', 1, '11:50:37'),
(36, 'Cancion:1 4 2', 1, '11:52:41'),
(37, 'Artista:[object HTMLParagraphElement]', 1, '11:52:46'),
(38, 'Artista:Cuco', 1, '11:54:25'),
(39, 'Artista:Joji', 1, '11:56:15'),
(40, 'Album:SMITHEREENS', 1, '11:56:23'),
(41, 'Cancion:Glimpse of Us', 1, '11:56:58'),
(42, 'Cancion:La Estoy Pasando Muy Bien', 1, '12:02:28'),
(43, 'Cancion:American Spirits', 1, '12:17:49'),
(44, 'Cancion:Lover Is a Day', 1, '12:20:35'),
(45, 'Artista:Joji', 1, '12:21:19'),
(46, 'Artista:Cuco', 1, '12:25:31'),
(47, 'Album:Para Mi', 1, '12:25:35'),
(48, 'Cancion:Do Better', 1, '12:30:13'),
(49, 'Artista:Cuco', 1, '12:30:31'),
(50, 'Artista:Cuco', 1, '12:33:26'),
(51, 'Cancion:Summer Time High Time', 1, '12:33:35'),
(52, 'Album:Fantasy Gateway', 1, '12:34:35'),
(53, 'Artista:Cuco', 1, '12:36:24'),
(54, 'Cancion:Heartquake', 1, '12:36:27'),
(55, 'Cancion:Heartquake', 1, '12:36:37'),
(56, 'Artista:[object HTMLParagraphElement]', 1, '10:15:04'),
(57, 'Cancion:Sexy Villain', 1, '12:45:00'),
(58, 'Cancion:Si Me Voy (with The Marías)', 1, '12:52:55'),
(59, 'Artista:Cuco', 1, '12:54:18'),
(60, 'Album:Fantasy Gateway', 1, '12:55:54'),
(61, 'Cancion:Sitting In The Corner (feat. Adriel Favela &amp; Kacey Musgraves)', 1, '12:57:38'),
(62, 'Cancion:Piel Canela', 1, '13:09:40'),
(63, 'Artista:Cuco', 1, '13:09:48'),
(64, 'Album:Fantasy Gateway', 1, '13:10:00'),
(65, 'Cancion:Flow de Cuyo', 1, '13:34:12'),
(66, 'Album:Mi Querido, Mi Viejo, Mi Amigo', 1, '13:42:27'),
(67, 'Cancion:Mi Querido, Mi Viejo, Mi Amigo', 1, '13:42:43'),
(68, 'Artista:Inner Wave', 1, '13:43:11'),
(69, 'Cancion:Fever', 1, '13:43:21'),
(70, 'Album:Inner Wave', 1, '13:46:35'),
(71, 'Cancion:Take 3', 1, '13:47:31'),
(72, 'Artista:Inner Wave', 1, '13:53:54'),
(73, 'Cancion:One in a Million', 1, '13:59:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencias_usuarios`
--

CREATE TABLE `preferencias_usuarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `artista_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `sub_genero_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_generos`
--

CREATE TABLE `sub_generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sub_generos`
--

INSERT INTO `sub_generos` (`id`, `nombre`) VALUES
(1, 'Hip-Hop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_generos_generos`
--

CREATE TABLE `sub_generos_generos` (
  `id` int(11) NOT NULL,
  `generos_id` int(11) DEFAULT NULL,
  `generos2_id` int(11) DEFAULT NULL,
  `sub_generos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`) VALUES
(1, 'Agustin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emociones`
--
ALTER TABLE `emociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emociones_artistas`
--
ALTER TABLE `emociones_artistas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `emociones_id` (`emociones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `emociones_usuarios`
--
ALTER TABLE `emociones_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `emocion_id` (`emocion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generos2`
--
ALTER TABLE `generos2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preferencias_usuarios`
--
ALTER TABLE `preferencias_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `genero_id` (`genero_id`),
  ADD KEY `sub_genero_id` (`sub_genero_id`);

--
-- Indices de la tabla `sub_generos`
--
ALTER TABLE `sub_generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sub_generos_generos`
--
ALTER TABLE `sub_generos_generos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generos_id` (`generos_id`),
  ADD KEY `generos2_id` (`generos2_id`),
  ADD KEY `sub_generos_id` (`sub_generos_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=661;

--
-- AUTO_INCREMENT de la tabla `emociones`
--
ALTER TABLE `emociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `emociones_artistas`
--
ALTER TABLE `emociones_artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `emociones_usuarios`
--
ALTER TABLE `emociones_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `generos2`
--
ALTER TABLE `generos2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `preferencias_usuarios`
--
ALTER TABLE `preferencias_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sub_generos`
--
ALTER TABLE `sub_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sub_generos_generos`
--
ALTER TABLE `sub_generos_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `emociones_artistas`
--
ALTER TABLE `emociones_artistas`
  ADD CONSTRAINT `emociones_artistas_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `emociones_artistas_ibfk_2` FOREIGN KEY (`emociones_id`) REFERENCES `emociones` (`id`);

--
-- Filtros para la tabla `emociones_usuarios`
--
ALTER TABLE `emociones_usuarios`
  ADD CONSTRAINT `emociones_usuarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `emociones_usuarios_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `emociones_usuarios_ibfk_3` FOREIGN KEY (`emocion_id`) REFERENCES `emociones` (`id`);

--
-- Filtros para la tabla `preferencias_usuarios`
--
ALTER TABLE `preferencias_usuarios`
  ADD CONSTRAINT `preferencias_usuarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `preferencias_usuarios_ibfk_2` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `preferencias_usuarios_ibfk_3` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`),
  ADD CONSTRAINT `preferencias_usuarios_ibfk_4` FOREIGN KEY (`sub_genero_id`) REFERENCES `sub_generos` (`id`);

--
-- Filtros para la tabla `sub_generos_generos`
--
ALTER TABLE `sub_generos_generos`
  ADD CONSTRAINT `sub_generos_generos_ibfk_1` FOREIGN KEY (`generos_id`) REFERENCES `generos` (`id`),
  ADD CONSTRAINT `sub_generos_generos_ibfk_2` FOREIGN KEY (`generos2_id`) REFERENCES `generos2` (`id`),
  ADD CONSTRAINT `sub_generos_generos_ibfk_3` FOREIGN KEY (`sub_generos_id`) REFERENCES `sub_generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
