-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2023 a las 05:51:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

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
  `nombre` text NOT NULL,
  `duracion` time NOT NULL,
  `album_idSpotify` text NOT NULL,
  `imgAlbum` text NOT NULL,
  `type` varchar(30) NOT NULL,
  `canciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`id`, `nombre`, `duracion`, `album_idSpotify`, `imgAlbum`, `type`, `canciones`) VALUES
(1, 'Juno (Deluxe)', '60:48:00', '7dMtse1hCWqbfFGMLW2clA', 'https://i.scdn.co/image/ab67616d0000b2736ae0631d36fc51b963780650', 'album', 19),
(2, 'Juno', '41:36:00', '7tJ8Wtej161vR0uCbGDiDR', 'https://i.scdn.co/image/ab67616d0000b27316a6cb93e32bf2ae66b1f5b2', 'album', 13),
(3, 'We Love Dogs!', '48:00:00', '1Aus1dFkP2BSyzibCl0HA7', 'https://i.scdn.co/image/ab67616d0000b27360a3dfec16ef34ac0b9cfad8', 'album', 15),
(4, 'You First (Re: Remi Wolf)', '03:12:00', '6gn9peue2gXdYeDFqBrK7z', 'https://i.scdn.co/image/ab67616d0000b273a4013ec6f1d5fb7c6af136ff', 'album', 1),
(5, 'Prescription', '06:24:00', '2wIRcj57SrX5Xz7CsJxnsp', 'https://i.scdn.co/image/ab67616d0000b27375f40b718a5b72b2a86753b8', 'album', 2),
(6, 'Pyjamas (feat. Remi Wolf)', '12:48:00', '0AmJGPvtL6Kj0MBp7gh8BK', 'https://i.scdn.co/image/ab67616d0000b273e2720633bcf81d01c3c9a58d', 'album', 4),
(7, 'Hospital (One Man Down)', '03:12:00', '25iq2f67q6Je815D44cXPu', 'https://i.scdn.co/image/ab67616d0000b2735c4d3a0c671cd2ee106c3f44', 'album', 1),
(8, 'Last Christmas / Winter Wonderland', '06:24:00', '4UvWqFOHO52TlLLEANkeqr', 'https://i.scdn.co/image/ab67616d0000b2737dfe3f5630ef1fff1c76ec2a', 'album', 2),
(9, 'Live at Electric Lady', '19:12:00', '2H3dV4ihkK47r8M8f3tkb9', 'https://i.scdn.co/image/ab67616d0000b273b417f2cd0cda99a1710a3367', 'album', 6),
(10, 'Michael', '03:12:00', '12uiCiql0IX6dT6yMXEwGq', 'https://i.scdn.co/image/ab67616d0000b273cb6eb56a0f06e9211fb6d4da', 'album', 1),
(11, 'Pool', '03:12:00', '3rDZy3Mdl38XtftACWXL5c', 'https://i.scdn.co/image/ab67616d0000b273752547ae24e3f830ee1b90a0', 'album', 1),
(12, 'Liz', '03:12:00', '38WHZJFOzJY6k5INRXigZC', 'https://i.scdn.co/image/ab67616d0000b273f6386052742c587f52b3f005', 'album', 1),
(13, 'Photo ID (with Dominic Fike)', '03:12:00', '3zFq7EuaSEF96fFaMCUE8w', 'https://i.scdn.co/image/ab67616d0000b273324bcf91e78a7921a51b4367', 'album', 1),
(14, 'OK (with Remi Wolf & Solomonophonic)', '06:24:00', '0MsM0ZsU68EiOBrwtt0Lbz', 'https://i.scdn.co/image/ab67616d0000b2737980941707cad8fcbc600c2a', 'album', 2),
(15, 'Monte Carlo', '03:12:00', '5jZs0pEMbz0ZDdEqd0GmrI', 'https://i.scdn.co/image/ab67616d0000b2736985bc19133132f5cb6b32a5', 'album', 1),
(16, 'I\'m Allergic To Dogs!', '16:00:00', '23JijmRgLWloEMnFUwHJa2', 'https://i.scdn.co/image/ab67616d0000b2730e68fefa1408603f54a4d664', 'album', 5),
(17, 'Cheesin\'', '03:12:00', '102eowByJ8U5YpG4mDxNGj', 'https://i.scdn.co/image/ab67616d0000b273e4d805cdcff5be31d35e84fc', 'album', 1),
(18, 'Bad Behavior', '03:12:00', '0suZ5xK1o6VuclzdnLL7jK', 'https://i.scdn.co/image/ab67616d0000b273e47722f6a226f4d852034ca8', 'album', 1),
(19, 'You\'re A Dog!', '19:12:00', '1b1xMT1Lx19e9kmNvuF4QM', 'https://i.scdn.co/image/ab67616d0000b2739ea18f33f65c990f1f589225', 'album', 6),
(20, 'Rufufus', '03:12:00', '2sXawp3NSAYwSwIF4oe8IZ', 'https://i.scdn.co/image/ab67616d0000b27317a324a835a06c03f25e6f75', 'album', 1),
(21, 'Shawty', '03:12:00', '2kF6bikHMAry39BlUpZkes', 'https://i.scdn.co/image/ab67616d0000b2731afa910201111fd0035ffde5', 'album', 1),
(22, 'Sauce', '03:12:00', '0tRIbVAjxkCFGlWlxBtuIS', 'https://i.scdn.co/image/ab67616d0000b27342e6b5ea7b077ecc0c8c5281', 'album', 1),
(23, 'Guy', '03:12:00', '2cdnISmAWIM3cLLIhgiwDx', 'https://i.scdn.co/image/ab67616d0000b273095aca68e134c87933511df6', 'album', 1),
(24, 'Re: This Is Why', '38:24:00', '3GteSAGBQKHhmSN5OU819j', 'https://i.scdn.co/image/ab67616d0000b2732b8d431791429aa6f1337702', 'album', 12),
(25, 'Remote (Deluxe)', '35:12:00', '7pco4VrxVCaebDX9ZPoJ5b', 'https://i.scdn.co/image/ab67616d0000b2736535ec3fc3623dd9aea043e7', 'album', 11),
(26, 'Revealer (Deluxe Edition)', '54:24:00', '3nGF3nGNbvyqlwPHbpGof1', 'https://i.scdn.co/image/ab67616d0000b27308e656024c960ca5128a2f49', 'album', 17),
(27, 'Young Hearts', '35:12:00', '7qNttLERG60jtBqhMsLA7J', 'https://i.scdn.co/image/ab67616d0000b273377090bb4da13ff91306cb7a', 'album', 11),
(28, 'A Small Light (Songs from the Limited Series)', '25:36:00', '5OMNsSmLzeb3ZPpCBmw6SD', 'https://i.scdn.co/image/ab67616d0000b273dd54a6b909cb4920ad351f29', 'album', 8),
(29, 'Modern Rock Empire', '224:00:00', '0ZfWocuwsQg5Y8B2S5yabj', 'https://i.scdn.co/image/ab67616d0000b27317812115af1d02d4c8f4f43a', 'album', 70),
(30, 'Dla Ciebie', '112:00:00', '34Mug3cj520ZQRaJ360tg9', 'https://i.scdn.co/image/ab67616d0000b273d9b433a0c075b1ed6a269fb1', 'album', 35),
(31, 'What\'s Popping', '144:00:00', '3ja0lE7IZQD2LnIx7MuPW9', 'https://i.scdn.co/image/ab67616d0000b27315768cae26193084ce2c4b40', 'album', 45),
(32, 'Fantasy Gateway', '38:24:00', '7JvjOgEBBcrLs9048x1QcM', 'https://i.scdn.co/image/ab67616d0000b273be9a3e8a5e535ec7240f8317', 'album', 12),
(33, 'Para Mi', '41:36:00', '6e8eJS3DUWZ9SAjHE5AD5m', 'https://i.scdn.co/image/ab67616d0000b27365d444a19f72771cba82cb00', 'album', 13),
(34, 'Songs4u', '28:48:00', '2bLdzrKZaJTEZvoeJPzMxx', 'https://i.scdn.co/image/ab67616d0000b273b30dac162a2ad3e366d5da24', 'album', 9),
(35, 'wannabewithu', '22:24:00', '1rQys03txxThcRZLofLlHY', 'https://i.scdn.co/image/ab67616d0000b273b1c091e32aad5310ebbdd558', 'album', 7),
(36, 'Planet Express', '03:12:00', '1pFOoKAoqMRWTIAdDdqTnF', 'https://i.scdn.co/image/ab67616d0000b273a133fa11a513685f3d591afe', 'album', 1),
(37, 'Dime (with Conexión Divina)', '03:12:00', '62LsTv9SDFBUihRPwVUsLr', 'https://i.scdn.co/image/ab67616d0000b273bc95476aa337038d344df93d', 'album', 1),
(38, 'Coastin\' (with Alemán)', '03:12:00', '1Vxwqwvz1yO72jFTQ7O5aH', 'https://i.scdn.co/image/ab67616d0000b273e85738beecad3af50f1f90d7', 'album', 1),
(39, 'DECIR ADIOS \"OYE NARRADOR\" (with Cuco)', '03:12:00', '0GgsvW4d1yiUjwMeALi6uO', 'https://i.scdn.co/image/ab67616d0000b2739d492b75dafdf805466fc383', 'album', 1),
(40, 'el paso', '06:24:00', '5QBjcz2tdsRVsmPtmg8h5Z', 'https://i.scdn.co/image/ab67616d0000b273453bb88dd548a5c1bb5401b1', 'album', 2),
(41, 'Heartquake', '03:12:00', '1Ug1cKJWf6t7qlKQEfKs4R', 'https://i.scdn.co/image/ab67616d0000b273171e5db8be81b162afeb6b6e', 'album', 1),
(42, 'Mi Querido, Mi Viejo, Mi Amigo', '03:12:00', '7vlyywsguQ8jChINFZRf7d', 'https://i.scdn.co/image/ab67616d0000b273fdcbc1f71572387da2dfa5d4', 'album', 1),
(43, 'Miel', '06:24:00', '62w772P9uxu5l8OmVWpj6Q', 'https://i.scdn.co/image/ab67616d0000b2738b97c03ec80afc0bb3fd2601', 'album', 2),
(44, 'Medusa', '03:12:00', '0wbKY324xkDkzZvSrHQCVW', 'https://i.scdn.co/image/ab67616d0000b273904a73aa09a0dc9831a58a53', 'album', 1),
(45, 'Si Me Voy (with The Marías)', '03:12:00', '5TZm9qi0223t20ypmJevEq', 'https://i.scdn.co/image/ab67616d0000b27314a012da5638f895eaefffa5', 'album', 1),
(46, 'Best Disaster', '03:12:00', '5BMoArQlFykRWUh120Hcdh', 'https://i.scdn.co/image/ab67616d0000b27386a448dac783d5c4071fe2cb', 'album', 1),
(47, 'First Of The Year', '03:12:00', '1mgwNlzi9VzFcE1Qd4Xj86', 'https://i.scdn.co/image/ab67616d0000b273a7e86044a15f55db6fa268cb', 'album', 1),
(48, 'Pendant', '03:12:00', '5Byl3llMQRhBj88mYrEbGS', 'https://i.scdn.co/image/ab67616d0000b27354b1c25344ce61f18a361dfe', 'album', 1),
(49, 'Aura (Spanish Version)', '03:12:00', '6LWAOYIqPzIdujffA7ah7W', 'https://i.scdn.co/image/ab67616d0000b27321bc6f1988bfe2d7f9717100', 'album', 1),
(50, 'Aura', '03:12:00', '1i3MA9Eamgjk3SKYFo0zdn', 'https://i.scdn.co/image/ab67616d0000b273ab2bf6a86ab662fd9e184188', 'album', 1),
(51, 'Fin Del Mundo (with Bratty)', '03:12:00', '2er3W6mBnmly9PuRHL74aj', 'https://i.scdn.co/image/ab67616d0000b2739ea5269c47109422af35d486', 'album', 1),
(52, 'Time Machine', '03:12:00', '4jAN28tuuWdvDsX5HzPXbv', 'https://i.scdn.co/image/ab67616d0000b2733f7d04140eede4fb6071ba0a', 'album', 1),
(53, 'Caution', '03:12:00', '69809nxVVagxVz0YBOnCIX', 'https://i.scdn.co/image/ab67616d0000b273d25a65f463276d050a2b30a8', 'album', 1),
(54, 'La Novela', '03:12:00', '0Jm9vE88gbVVxYVyXfSgcY', 'https://i.scdn.co/image/ab67616d0000b2730d084265453126bd8bf3c569', 'album', 1),
(55, 'Under The Sun', '03:12:00', '45ubqbPdQyqmYEj9FFzmQ4', 'https://i.scdn.co/image/ab67616d0000b27362bb4a1286bfc9eaeb66f878', 'album', 1),
(56, 'Forevermore', '03:12:00', '6UppGVPzMsv9LJI2x4e0Qn', 'https://i.scdn.co/image/ab67616d0000b273340415661f675e5627fe3c03', 'album', 1),
(57, 'Paradise', '03:12:00', '2zaWUjh9T05lm2r3gKOqsk', 'https://i.scdn.co/image/ab67616d0000b2738b587f8c2ac3e1d9cef7cda0', 'album', 1),
(58, 'Piel Canela', '03:12:00', '2sNKWMhg0kOHdPDlvl0w6t', 'https://i.scdn.co/image/ab67616d0000b273cb516c3ced23744f0aad488d', 'album', 1),
(59, 'See Me With Her', '03:12:00', '7uPXkiaL11uZ5Qo9hKj5Of', 'https://i.scdn.co/image/ab67616d0000b27369a3a5ad7ab901191be1c544', 'album', 1),
(60, 'A24', '03:12:00', '2HJwG5X5A3SNhVza2LRr1W', 'https://i.scdn.co/image/ab67616d0000b2731e30516ec6b5bb9baf1d0c3c', 'album', 1),
(61, 'Feelings', '03:12:00', '7jaaCkiivIJrVnuQDZfcuE', 'https://i.scdn.co/image/ab67616d0000b273283e74dddfe94495afb6135a', 'album', 1),
(62, 'Hydrocodone', '03:12:00', '0WbpBm4ihG22MeUYB14tig', 'https://i.scdn.co/image/ab67616d0000b273cad5d947405e017528f9c5f4', 'album', 1),
(63, 'SEARCH', '03:12:00', '3xcO7Z4wv27ZWBXINEfUl7', 'https://i.scdn.co/image/ab67616d0000b273e7203c533faefd9a8277d9e8', 'album', 1),
(64, 'Fix Me', '03:12:00', '1rYSeoTc0x4oJi1fV2QVUQ', 'https://i.scdn.co/image/ab67616d0000b2735e7781138d073ea4378f6cd8', 'album', 1),
(65, 'Amor de Siempre (Mariachi Version)', '03:12:00', '5aVMCJLSjbvw5bp3oIGcfl', 'https://i.scdn.co/image/ab67616d0000b273b925d3d03de37c18cd2d7d1e', 'album', 1),
(66, 'Drown', '03:12:00', '22y4jRBJ3WK5plaTLg0Vn4', 'https://i.scdn.co/image/ab67616d0000b273d635e746425359813c6720fa', 'album', 1),
(67, 'Chiquito', '19:12:00', '4gjhrTin1WwrEHd8GslZ7O', 'https://i.scdn.co/image/ab67616d0000b2733723db14dc06a047a1d789de', 'album', 6),
(68, 'Lucy', '03:12:00', '4kvLQ1DESp2qGMqlP3uwvU', 'https://i.scdn.co/image/ab67616d0000b273bb5dd89bab6a29f7b6c514cb', 'album', 1),
(69, 'CR-V', '03:12:00', '7MJpteZWsI9nU2aS0sbzAX', 'https://i.scdn.co/image/ab67616d0000b2732ecd433c035adf2ef13f019a', 'album', 1),
(70, 'Cuco on Audiotree Live', '19:12:00', '3vPz1h4oIlzugy0imdWvAO', 'https://i.scdn.co/image/ab67616d0000b273ae6bbd0067912df3edbe364a', 'album', 6),
(71, 'Sunnyside', '03:12:00', '5WJtbe5MO9WrcUNELwKdFI', 'https://i.scdn.co/image/ab67616d0000b273f01da18051d739e60bb3f948', 'album', 1),
(72, 'Lo Que Siento', '03:12:00', '69FOLmptEcKSeN1f60UFDC', 'https://i.scdn.co/image/ab67616d0000b2738a8cdf8e2a8329c26dca4790', 'album', 1),
(73, 'DLUX', '54:24:00', '5pAgLx8XeBoItzjT81csbJ', 'https://i.scdn.co/image/ab67616d0000b273e1c22d262a4ea4837c5cc1c4', 'album', 17),
(74, 'Baby Gravy 2', '32:00:00', '1oxxysQmylUXuxzSdHlqUc', 'https://i.scdn.co/image/ab67616d0000b27315f04c6e3d7c57a5a4348bca', 'album', 10),
(75, 'I GOT ISSUES', '44:48:00', '4fu0jN1IzoaXgzCfqdjOjJ', 'https://i.scdn.co/image/ab67616d0000b2738ea070f7c32c70e6c411642e', 'album', 14),
(76, 'The South Got Something to Say', '60:48:00', '0NE2xFN8Kw4mzQiDND5b1F', 'https://i.scdn.co/image/ab67616d0000b273bdfc98572b0a10b6c3472db4', 'album', 19),
(77, 'New Levels New Devils', '32:00:00', '7GhytR6ZMWetf1jxAzITtG', 'https://i.scdn.co/image/ab67616d0000b2737a799cc62e624fd6432779e3', 'album', 10),
(78, 'Nuevos Aires', '32:00:00', '1pmuUGKQdl3yIAIMZucjKu', 'https://i.scdn.co/image/ab67616d0000b273ccd6eb99a41fdb2123344ab0', 'album', 10),
(79, 'Sex Music 2023', '313:36:00', '6JeKwat4aFIDH1j6sFmKlC', 'https://i.scdn.co/image/ab67616d0000b273886f7e6616524005652a2662', 'album', 98),
(80, 'I Dance', '03:12:00', '2lH1BhcT3LoYMSU881XX9W', 'https://i.scdn.co/image/ab67616d0000b273531ce4d886a889147bb333ac', 'album', 1),
(81, 'Descifrar', '35:12:00', '0iS5WqBx0TeI4duoxqk57F', 'https://i.scdn.co/image/ab67616d0000b273a08bc176ddfdb34510be6c1b', 'album', 11),
(82, 'Apoptosis', '38:24:00', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://i.scdn.co/image/ab67616d0000b2739467e8f555f0a111abed5856', 'album', 12),
(83, 'Live At The Fonda, Los Angeles, 2019', '44:48:00', '3GMRdBDrbJgmEKNui1vlMh', 'https://i.scdn.co/image/ab67616d0000b27394a5d1cbba4a92f186425ea7', 'album', 14),
(84, 'Underwater Pipe Dreams', '57:36:00', '7cDxqoU5OdTX9xWrBrWOpq', 'https://i.scdn.co/image/ab67616d0000b27374cd6374d3a86cf3187a4c81', 'album', 18),
(85, 'Sun Transmission', '38:24:00', '5J9YmwdAHSk1NG0scmQ19b', 'https://i.scdn.co/image/ab67616d0000b273d3bad585cfa42108a235ae33', 'album', 12),
(86, 'III', '25:36:00', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://i.scdn.co/image/ab67616d0000b273179d49f5b43b28dde17f2356', 'album', 8),
(87, 'NOS SOLTAMOS chiliado', '06:24:00', '3Mmkzg9JwpsW5tMFXdR9TU', 'https://i.scdn.co/image/ab67616d0000b273e131102aa01d495c129fc89d', 'album', 2),
(88, 'Inner Wave on Audiotree Live', '16:00:00', '5MbWXGwrwGn8rQWKlIn98B', 'https://i.scdn.co/image/ab67616d0000b273d699a41f12066ef7ab49666b', 'album', 5),
(89, 'Baby', '03:12:00', '1bSMgGLERBaeOJgsgt3ldN', 'https://i.scdn.co/image/ab67616d0000b2733afb88a344229d6ab6870f56', 'album', 1),
(90, 'Mystery', '03:12:00', '24z3YrkF0VQclLJeYx43m3', 'https://i.scdn.co/image/ab67616d0000b273c9811c10207435a08b22b841', 'album', 1),
(91, 'June', '03:12:00', '16XEmvxPCeTF6T0d6eIUuo', 'https://i.scdn.co/image/ab67616d0000b2733c137c0d5c54ad5166567b13', 'album', 1),
(92, 'Take 3', '03:12:00', '2Mm5SuB6IsFPYE0O9fVrV4', 'https://i.scdn.co/image/ab67616d0000b273da9012d0680dd71d72860ab5', 'album', 1),
(93, 'wyd', '19:12:00', '4nCo8vzlqvAYocAUktBIA1', 'https://i.scdn.co/image/ab67616d0000b2738e0eb7c85be6982732884c2e', 'album', 6),
(94, 'Schemin', '03:12:00', '0AzM46kZh1F709eDXYbaKr', 'https://i.scdn.co/image/ab67616d0000b2733a72aa5dac2f8c1ecc050951', 'album', 1),
(95, 'Rose', '03:12:00', '5I8dVSyx2Wqwa2qVwNVbxr', 'https://i.scdn.co/image/ab67616d0000b273fc0e8c0253491afe0a839b82', 'album', 1),
(96, 'wya', '16:00:00', '4XcsUPOvcTDNWRVUSN31W8', 'https://i.scdn.co/image/ab67616d0000b2731159462ad000fe1a22b0cedc', 'album', 5),
(97, 'Mushroom', '03:12:00', '3yyvB8WRZObDPj2bPqpLNV', 'https://i.scdn.co/image/ab67616d0000b273abbc374ae740969ecaf1d690', 'album', 1),
(98, 'Why\'d You Have To Act Like That Though', '03:12:00', '0a2N9tB7ppqpPPmomBlwW0', 'https://i.scdn.co/image/ab67616d0000b27336737e8235cfa436a0a1e4ab', 'album', 1),
(99, 'Lullaby', '03:12:00', '4ELFxK0xE6HlhqnYvA7h2A', 'https://i.scdn.co/image/ab67616d0000b27394e02e1eabe41df5e837c8d1', 'album', 1),
(100, 'Underwater +', '19:12:00', '4J6RztGqh368GSdkI3U5Vk', 'https://i.scdn.co/image/ab67616d0000b273ce3ee7e3997423d36c3c1657', 'album', 6),
(101, 'Fine', '03:12:00', '16nr19mQ4JKdxFZHSl1wn2', 'https://i.scdn.co/image/ab67616d0000b2736212734f9a2b2fd09f780c87', 'album', 1),
(102, 'Eclipse', '03:12:00', '5xWMIeyKYa6C76Da0NLacd', 'https://i.scdn.co/image/ab67616d0000b273efaa48936f85964c6b3c5b58', 'album', 1),
(103, 'Buffalo', '03:12:00', '46B4tJKVhXA6YkWSC7EQzu', 'https://i.scdn.co/image/ab67616d0000b2730df6f3468332c8cdea4e0803', 'album', 1),
(104, 'Bower', '03:12:00', '1CRBRXbunImfdKOwd4x9k2', 'https://i.scdn.co/image/ab67616d0000b273be4b17c2ec513bd006faef0a', 'album', 1),
(105, 'Song 3', '03:12:00', '1RrmXP3wUKzUOh3Sbj1pet', 'https://i.scdn.co/image/ab67616d0000b273255bf9a4e3118ff8fbfb8daa', 'album', 1),
(106, 'Blacklight', '09:36:00', '59KY7AC0zez738mT9upShg', 'https://i.scdn.co/image/ab67616d0000b273c94f7d022c6324910c267a8c', 'album', 3),
(107, 'XO clubeteado / NOS SOLTAMOS chiliado', '06:24:00', '4L9dCnZASsPEIhhBwItsho', 'https://i.scdn.co/image/ab67616d0000b273620c12187dd5802a1ff1960f', 'album', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes_artistas`
--

CREATE TABLE `albumes_artistas` (
  `id` int(11) NOT NULL,
  `albumes_id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `albumes_artistas`
--

INSERT INTO `albumes_artistas` (`id`, `albumes_id`, `artistas_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 2),
(33, 33, 2),
(34, 34, 2),
(35, 35, 2),
(36, 36, 2),
(37, 37, 2),
(38, 38, 2),
(39, 39, 2),
(40, 40, 2),
(41, 41, 2),
(42, 42, 2),
(43, 43, 2),
(44, 44, 2),
(45, 45, 2),
(46, 46, 2),
(47, 47, 2),
(48, 48, 2),
(49, 49, 2),
(50, 50, 2),
(51, 51, 2),
(52, 52, 2),
(53, 53, 2),
(54, 54, 2),
(55, 55, 2),
(56, 56, 2),
(57, 57, 2),
(58, 58, 2),
(59, 59, 2),
(60, 60, 2),
(61, 61, 2),
(62, 62, 2),
(63, 63, 2),
(64, 64, 2),
(65, 65, 2),
(66, 66, 2),
(67, 67, 2),
(68, 68, 2),
(69, 69, 2),
(70, 70, 2),
(71, 71, 2),
(72, 72, 2),
(73, 73, 2),
(74, 74, 2),
(75, 75, 2),
(76, 76, 2),
(77, 77, 2),
(78, 78, 2),
(79, 79, 2),
(80, 80, 2),
(81, 81, 2),
(82, 82, 3),
(83, 83, 3),
(84, 84, 3),
(85, 85, 3),
(86, 86, 3),
(87, 87, 3),
(88, 88, 3),
(89, 89, 3),
(90, 90, 3),
(91, 91, 3),
(92, 92, 3),
(93, 93, 3),
(94, 94, 3),
(95, 95, 3),
(96, 96, 3),
(97, 97, 3),
(98, 98, 3),
(99, 99, 3),
(100, 100, 3),
(101, 101, 3),
(102, 102, 3),
(103, 103, 3),
(104, 104, 3),
(105, 105, 3),
(106, 106, 3),
(107, 107, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `artista_idSpotify` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imgArtista` text NOT NULL,
  `popularidad` int(11) NOT NULL,
  `seguidores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `artista_idSpotify`, `imgArtista`, `popularidad`, `seguidores`) VALUES
(1, 'Remi Wolf', '0NB5HROxc8dDBXpkIi1v3d', 'https://i.scdn.co/image/ab6761610000e5ebcd55517da0fe95d122c05511', 62, 408059),
(2, 'Cuco', '2Tglaf8nvDzwSQnpSrjLHP', 'https://i.scdn.co/image/ab6761610000e5ebaccd7a0491c0fa9f7afee49f', 68, 2508346),
(3, 'Inner Wave', '6AQEfqGPSxZX0nJVonYxi6', 'https://i.scdn.co/image/ab6761610000e5eb9cecc3522909b3078e923ff8', 49, 198180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_generos`
--

CREATE TABLE `artistas_generos` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `generos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `artistas_generos`
--

INSERT INTO `artistas_generos` (`id`, `artista_id`, `generos_id`) VALUES
(1, 2, 2),
(2, 2, 3),
(3, 3, 2),
(4, 3, 3),
(5, 2, 2),
(6, 2, 3),
(7, 1, 2),
(8, 1, 3),
(9, 2, 6),
(10, 2, 7),
(11, 3, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `nombre` text NOT NULL,
  `repeticion` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`id`, `tipo`, `nombre`, `repeticion`, `usuarios_id`) VALUES
(1, 'Artista', 'Remi Wolf', 25, 1),
(2, 'Artista', 'Cuco', 48, 1),
(3, 'Cancion', 'Summer Time High Time', 12, 1),
(4, 'Cancion:Summer Time ', 'undefined', 1, 1),
(5, 'Album', 'Songs4u', 2, 1),
(6, 'Album', 'wannabewithu', 2, 1),
(7, 'Cancion', 'Fix Me', 18, 1),
(8, 'Cancion:Fix Me', 'undefined', 4, 1),
(9, 'Cancion:Summer Time ', 'undefined', 1, 1),
(10, 'Album', 'Para Mi', 1, 1),
(11, 'Artista', 'Inner Wave', 13, 1),
(12, 'Cancion', 'Bossa No Sé (feat. Jean Carter)', 1, 1),
(13, 'Album', 'Inner Wave on Audiotree Live', 1, 1),
(14, 'Cancion', 'Michael', 2, 1),
(15, 'Cancion', 'Drown', 1, 1),
(16, 'Cancion', 'Amor de Siempre', 11, 1),
(17, 'Cancion', 'Dontmakemefallinlove', 1, 1),
(18, 'Cancion', 'Lover Is a Day', 1, 1);

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
  `previewUrl` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `duracion`, `artista`, `album`, `previewUrl`) VALUES
(1, 'Fired', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(2, 'Cake', '02:47:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(3, 'Liz', '02:55:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(4, 'Michael', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(5, 'Sugar', '03:16:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(6, 'Liquor Store', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(7, 'Anthony Kiedis', '02:51:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(8, 'wyd', '03:19:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(9, 'Guerrilla', '02:44:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(10, 'Quiet On Set', '03:15:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(11, 'Volkiano', '03:55:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(12, 'Front Tooth', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(13, 'Grumpy Old Man', '03:31:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(14, 'Buttermilk', '02:17:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(15, 'Sally', '02:43:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(16, 'Sexy Villain', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(17, 'Buzz Me In', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(18, 'Street You Live On', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(19, 'Street You Live On - Live', '03:37:00', '0NB5HROxc8dDBXpkIi1v3d', '7dMtse1hCWqbfFGMLW2clA', 'nulo'),
(20, 'Liquor Store', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(21, 'Anthony Kiedis', '02:51:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(22, 'wyd', '03:19:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(23, 'Guerrilla', '02:44:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(24, 'Quiet On Set', '03:15:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(25, 'Volkiano', '03:55:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(26, 'Front Tooth', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(27, 'Grumpy Old Man', '03:31:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(28, 'Buttermilk', '02:17:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(29, 'Sally', '02:43:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(30, 'Sexy Villain', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(31, 'Buzz Me In', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(32, 'Street You Live On', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '7tJ8Wtej161vR0uCbGDiDR', 'nulo'),
(33, 'Photo ID (with Dominic Fike)', '03:29:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(34, 'Down The Line - Kimbra Remix', '03:44:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(35, 'Rufufus - Sylvan Esso Remix', '04:07:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(36, 'Disco Man - Hot Chip Remix', '06:11:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(37, 'Hello Hello Hello - Polo & Pan Remix', '03:56:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(38, 'Guy - L’Impératrice Remix', '04:20:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(39, 'Sauce - Beck Remix', '03:23:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(40, 'Woo! - Panda Bear Remix', '02:22:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(41, 'Doctor - Phony Ppl Remix', '03:20:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(42, 'Thicc - Gabriel Garzón-Montano Remix', '02:34:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(43, 'Woo! - Porches Remix', '03:02:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(44, 'Photo ID - Free Nationals Remix', '04:40:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(45, 'Shawty - Nile Rodgers Remix', '03:11:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(46, 'Disco Man - Little Dragon Remix', '03:06:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(47, 'Monte Carlo - Tune-Yards Remix', '02:49:00', '0NB5HROxc8dDBXpkIi1v3d', '1Aus1dFkP2BSyzibCl0HA7', 'nulo'),
(48, 'You First (Re: Remi Wolf)', '03:54:00', '0NB5HROxc8dDBXpkIi1v3d', '6gn9peue2gXdYeDFqBrK7z', 'https://p.scdn.co/mp3-preview/688f37f806c19cb2e809e69e53519f09e46285d2?cid=eed31a43318f478ba48917070c9c3b37'),
(49, 'Prescription', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '2wIRcj57SrX5Xz7CsJxnsp', 'nulo'),
(50, 'Prescription - Extended', '07:11:00', '0NB5HROxc8dDBXpkIi1v3d', '2wIRcj57SrX5Xz7CsJxnsp', 'nulo'),
(51, 'Pyjamas (feat. Remi Wolf)', '02:48:00', '0NB5HROxc8dDBXpkIi1v3d', '0AmJGPvtL6Kj0MBp7gh8BK', 'https://p.scdn.co/mp3-preview/dc4600753fbec698771429850c6b910192c6a728?cid=eed31a43318f478ba48917070c9c3b37'),
(52, 'Young Hearts', '02:39:00', '0NB5HROxc8dDBXpkIi1v3d', '0AmJGPvtL6Kj0MBp7gh8BK', 'https://p.scdn.co/mp3-preview/bc3a878e13e09379fd8e0813d3d695a120ab33ac?cid=eed31a43318f478ba48917070c9c3b37'),
(53, 'The World', '03:06:00', '0NB5HROxc8dDBXpkIi1v3d', '0AmJGPvtL6Kj0MBp7gh8BK', 'https://p.scdn.co/mp3-preview/8b4c7654d55a4a13533fc27dbd3c39ce65026343?cid=eed31a43318f478ba48917070c9c3b37'),
(54, 'The Only One', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '0AmJGPvtL6Kj0MBp7gh8BK', 'https://p.scdn.co/mp3-preview/fad18adc65bb117eef1cf2d7b96ff5f7fa8fbba5?cid=eed31a43318f478ba48917070c9c3b37'),
(55, 'Hospital (One Man Down) (feat. Remi Wolf)', '03:27:00', '0NB5HROxc8dDBXpkIi1v3d', '25iq2f67q6Je815D44cXPu', 'nulo'),
(56, 'Last Christmas', '04:05:00', '0NB5HROxc8dDBXpkIi1v3d', '4UvWqFOHO52TlLLEANkeqr', 'nulo'),
(57, 'Winter Wonderland', '02:40:00', '0NB5HROxc8dDBXpkIi1v3d', '4UvWqFOHO52TlLLEANkeqr', 'nulo'),
(58, 'wyd - Live at Electric Lady', '03:37:00', '0NB5HROxc8dDBXpkIi1v3d', '2H3dV4ihkK47r8M8f3tkb9', 'nulo'),
(59, 'Woo! - Live at Electric Lady', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '2H3dV4ihkK47r8M8f3tkb9', 'nulo'),
(60, 'Sauce - Live at Electric Lady', '04:08:00', '0NB5HROxc8dDBXpkIi1v3d', '2H3dV4ihkK47r8M8f3tkb9', 'nulo'),
(61, 'Liz - Live at Electric Lady', '03:35:00', '0NB5HROxc8dDBXpkIi1v3d', '2H3dV4ihkK47r8M8f3tkb9', 'nulo'),
(62, 'Pink + White - Live at Electric Lady', '03:53:00', '0NB5HROxc8dDBXpkIi1v3d', '2H3dV4ihkK47r8M8f3tkb9', 'nulo'),
(63, 'Grumpy Old Man - Live at Electric Lady', '03:21:00', '0NB5HROxc8dDBXpkIi1v3d', '2H3dV4ihkK47r8M8f3tkb9', 'nulo'),
(64, 'Michael', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '12uiCiql0IX6dT6yMXEwGq', 'nulo'),
(65, 'Pool', '03:43:00', '0NB5HROxc8dDBXpkIi1v3d', '3rDZy3Mdl38XtftACWXL5c', 'nulo'),
(66, 'Liz', '02:55:00', '0NB5HROxc8dDBXpkIi1v3d', '38WHZJFOzJY6k5INRXigZC', 'nulo'),
(67, 'Photo ID (with Dominic Fike)', '03:27:00', '0NB5HROxc8dDBXpkIi1v3d', '3zFq7EuaSEF96fFaMCUE8w', 'nulo'),
(68, 'OK - with Remi Wolf & Solomonophonic', '02:42:00', '0NB5HROxc8dDBXpkIi1v3d', '0MsM0ZsU68EiOBrwtt0Lbz', 'https://p.scdn.co/mp3-preview/00c001bbf977163a6b011b23b6e8c6b92d8a1dfa?cid=eed31a43318f478ba48917070c9c3b37'),
(69, 'OK', '03:13:00', '0NB5HROxc8dDBXpkIi1v3d', '0MsM0ZsU68EiOBrwtt0Lbz', 'https://p.scdn.co/mp3-preview/2f7135b29fce81b92b616c08f784b1f6264919c4?cid=eed31a43318f478ba48917070c9c3b37'),
(70, 'Monte Carlo', '02:23:00', '0NB5HROxc8dDBXpkIi1v3d', '5jZs0pEMbz0ZDdEqd0GmrI', 'nulo'),
(71, 'Down The Line', '02:54:00', '0NB5HROxc8dDBXpkIi1v3d', '23JijmRgLWloEMnFUwHJa2', 'nulo'),
(72, 'Woo!', '03:16:00', '0NB5HROxc8dDBXpkIi1v3d', '23JijmRgLWloEMnFUwHJa2', 'nulo'),
(73, 'Hello Hello Hello', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '23JijmRgLWloEMnFUwHJa2', 'nulo'),
(74, 'Photo ID', '04:25:00', '0NB5HROxc8dDBXpkIi1v3d', '23JijmRgLWloEMnFUwHJa2', 'nulo'),
(75, 'Disco Man', '03:12:00', '0NB5HROxc8dDBXpkIi1v3d', '23JijmRgLWloEMnFUwHJa2', 'nulo'),
(76, 'Cheesin\'', '02:18:00', '0NB5HROxc8dDBXpkIi1v3d', '102eowByJ8U5YpG4mDxNGj', 'https://p.scdn.co/mp3-preview/69a930d5e12dd7c046da03f2898ea525734409d6?cid=eed31a43318f478ba48917070c9c3b37'),
(77, 'Bad Behavior', '03:22:00', '0NB5HROxc8dDBXpkIi1v3d', '0suZ5xK1o6VuclzdnLL7jK', 'https://p.scdn.co/mp3-preview/44865a4c76c2824a721fe0b1dd2a0fad92449447?cid=eed31a43318f478ba48917070c9c3b37'),
(78, 'Sauce', '03:50:00', '0NB5HROxc8dDBXpkIi1v3d', '1b1xMT1Lx19e9kmNvuF4QM', 'nulo'),
(79, 'Rufufus', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '1b1xMT1Lx19e9kmNvuF4QM', 'nulo'),
(80, 'Doctor', '02:50:00', '0NB5HROxc8dDBXpkIi1v3d', '1b1xMT1Lx19e9kmNvuF4QM', 'nulo'),
(81, 'Guy', '02:42:00', '0NB5HROxc8dDBXpkIi1v3d', '1b1xMT1Lx19e9kmNvuF4QM', 'nulo'),
(82, 'Thicc', '02:34:00', '0NB5HROxc8dDBXpkIi1v3d', '1b1xMT1Lx19e9kmNvuF4QM', 'nulo'),
(83, 'Shawty', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '1b1xMT1Lx19e9kmNvuF4QM', 'nulo'),
(84, 'Rufufus', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '2sXawp3NSAYwSwIF4oe8IZ', 'nulo'),
(85, 'Shawty', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '2kF6bikHMAry39BlUpZkes', 'nulo'),
(86, 'Sauce', '03:50:00', '0NB5HROxc8dDBXpkIi1v3d', '0tRIbVAjxkCFGlWlxBtuIS', 'nulo'),
(87, 'Guy', '02:42:00', '0NB5HROxc8dDBXpkIi1v3d', '2cdnISmAWIM3cLLIhgiwDx', 'nulo'),
(88, 'This Is Why (Re: Foals)', '05:51:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/ac9eed227cc6005b9605a40c479c6f927192efc8?cid=eed31a43318f478ba48917070c9c3b37'),
(89, 'The News (Re: The Linda Lindas)', '03:25:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/fd7c75dd363e285bf065c0fd86d4c75cbf1bacb6?cid=eed31a43318f478ba48917070c9c3b37'),
(90, 'Running Out Of Time (Re: Panda Bear)', '04:23:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/d192a006ce94d917a7353c67931a52818d76004a?cid=eed31a43318f478ba48917070c9c3b37'),
(91, 'Running Out Of Time (Re: Zane Lowe)', '04:44:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/e698bc6bc7069620901aa76b755a9f283e7b0f2e?cid=eed31a43318f478ba48917070c9c3b37'),
(92, 'C’est Comme Ça (Re: Wet Leg)', '02:24:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/9c08de53da49856a5df674e24b67d90dfcd3a1f4?cid=eed31a43318f478ba48917070c9c3b37'),
(93, 'Big Man, Little Dignity (Re: DOMi & JD BECK)', '02:59:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/b8b0f71115fc9070a74aa24c6dfb7fa2e365782c?cid=eed31a43318f478ba48917070c9c3b37'),
(94, 'You First (Re: Remi Wolf)', '03:54:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/688f37f806c19cb2e809e69e53519f09e46285d2?cid=eed31a43318f478ba48917070c9c3b37'),
(95, 'Figure 8 (Re: Bartees Strange)', '03:35:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/ee95134d2a7a4f3f866c6052e7d89ca6db9db814?cid=eed31a43318f478ba48917070c9c3b37'),
(96, 'Liar (Re: Romy)', '04:36:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/3b203a2eadf7474e30769747f6d03069b0342f08?cid=eed31a43318f478ba48917070c9c3b37'),
(97, 'Crave (Re: Claud)', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/c8d6e6da4bcd00a8252a180b413ee37ea8a15af6?cid=eed31a43318f478ba48917070c9c3b37'),
(98, 'Thick Skull (Re: Julien Baker)', '04:54:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/364b4589e24ec7279d6f35d6f906a5ace76988c7?cid=eed31a43318f478ba48917070c9c3b37'),
(99, 'Sanity (demo)', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '3GteSAGBQKHhmSN5OU819j', 'https://p.scdn.co/mp3-preview/514a7d4d834e2bd138124a2d3eca9fff47c0e86f?cid=eed31a43318f478ba48917070c9c3b37'),
(100, 'Virtual Aerobics', '02:02:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/d25300f011cc80915e3f7c771a21edfd1e2c5fa7?cid=eed31a43318f478ba48917070c9c3b37'),
(101, 'Dig What You Dug', '02:57:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/900d648d50f4f8646ee6daa498f34c59656b7a13?cid=eed31a43318f478ba48917070c9c3b37'),
(102, 'Nobody Gets Me (Like You)', '02:37:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/ccf170659fda1a0fcb87f031cb0cd95a4901b8fc?cid=eed31a43318f478ba48917070c9c3b37'),
(103, 'Coastlines', '03:09:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/c83ad59d1ec4b653284ec1c0ab26d07a82b2eb82?cid=eed31a43318f478ba48917070c9c3b37'),
(104, 'Talk Like That', '02:00:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/beafd849e02143f6e1b9dfa90aab0304dcd3f263?cid=eed31a43318f478ba48917070c9c3b37'),
(105, 'Wish Me Luck', '03:45:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/aac5c9e0f83599f5eb3dcf6218eeba955c9436a0?cid=eed31a43318f478ba48917070c9c3b37'),
(106, 'On Time', '02:49:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/30157d511f1030e250e86dc5052dd13eb25b9c07?cid=eed31a43318f478ba48917070c9c3b37'),
(107, 'Quarterback', '03:00:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/9334fc253380475656704522a6ba1a4e9c678212?cid=eed31a43318f478ba48917070c9c3b37'),
(108, 'Another Story', '01:42:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/67c64d1f4a4df36a38f652d32638539e0240e171?cid=eed31a43318f478ba48917070c9c3b37'),
(109, 'OK - with Remi Wolf & Solomonophonic', '02:42:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/00c001bbf977163a6b011b23b6e8c6b92d8a1dfa?cid=eed31a43318f478ba48917070c9c3b37'),
(110, 'OK', '03:13:00', '0NB5HROxc8dDBXpkIi1v3d', '7pco4VrxVCaebDX9ZPoJ5b', 'https://p.scdn.co/mp3-preview/2f7135b29fce81b92b616c08f784b1f6264919c4?cid=eed31a43318f478ba48917070c9c3b37'),
(111, 'All I’ve Ever Known', '05:06:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(112, 'Hospital', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(113, 'Anywhere', '03:48:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(114, 'Sunshine Over The Counter', '04:22:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(115, 'Life According To Raechel', '04:33:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(116, 'Who Are You Now', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(117, 'In From Japan', '04:22:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(118, 'Collider Particles', '03:10:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(119, 'Your Hate Could Power A Train', '03:11:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(120, 'Our Rebellion', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(121, 'Sara And The Silent Crowd', '04:30:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(122, 'Hospital (One Man Down) (feat. Remi Wolf)', '03:27:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(123, 'Inventing The Wheel', '04:17:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(124, 'Death By Suspicion', '04:43:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(125, 'Who Are You Now - Version 1', '03:55:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(126, 'Hospital - First Demo', '03:59:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(127, 'Life According To Raechel - First Demo', '04:12:00', '0NB5HROxc8dDBXpkIi1v3d', '3nGF3nGNbvyqlwPHbpGof1', 'nulo'),
(128, 'Young Hearts', '02:39:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/83c5ecfb8374d5717dfde2c967d2ee0d8c56baea?cid=eed31a43318f478ba48917070c9c3b37'),
(129, 'The Only One', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/0aa6d3ef8bc1d5ed9261997d15c02ca034543892?cid=eed31a43318f478ba48917070c9c3b37'),
(130, 'Simple Love Songs', '01:51:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/d479488a101acf33f5de32ccf25ed23ad16b4e73?cid=eed31a43318f478ba48917070c9c3b37'),
(131, 'Pyjamas (feat. Remi Wolf)', '02:48:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/165225bc2bc30f0631495dac21fc2e55b7f30ff1?cid=eed31a43318f478ba48917070c9c3b37'),
(132, 'The World', '03:06:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/a46bfdbcc006f04c9945505ee107ba2330bdd213?cid=eed31a43318f478ba48917070c9c3b37'),
(133, 'Distance', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/361659de96b659bf9cb1bc4b39919469cce4c5ca?cid=eed31a43318f478ba48917070c9c3b37'),
(134, 'Love Will Find A Way', '01:28:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/8ea6e6d24b264b07cde63f7dc1dd8ec5ebe2ef37?cid=eed31a43318f478ba48917070c9c3b37'),
(135, 'Movie Star', '02:54:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/3327f48d4549534040b32271b50e904992fdeb61?cid=eed31a43318f478ba48917070c9c3b37'),
(136, 'Let’s Go', '02:57:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/0a1a0d27e019c92c81c9998bf64fe6dd26d48afd?cid=eed31a43318f478ba48917070c9c3b37'),
(137, 'Take Your Time', '02:53:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/6ceb6a54d81f629d311288df2603e1fc8d167ad5?cid=eed31a43318f478ba48917070c9c3b37'),
(138, 'Wait For The Summer (Bonus Track)', '03:00:00', '0NB5HROxc8dDBXpkIi1v3d', '7qNttLERG60jtBqhMsLA7J', 'https://p.scdn.co/mp3-preview/8edbc665c2abb12308a7ed4e3601f45a9c5a2d8c?cid=eed31a43318f478ba48917070c9c3b37'),
(139, 'Till We Meet Again', '02:28:00', '0NB5HROxc8dDBXpkIi1v3d', '5OMNsSmLzeb3ZPpCBmw6SD', 'nulo'),
(140, 'Cheryl', '05:23:00', '0NB5HROxc8dDBXpkIi1v3d', '5OMNsSmLzeb3ZPpCBmw6SD', 'nulo'),
(141, 'I Don\'t Want to Set the World on Fire', '03:06:00', '0NB5HROxc8dDBXpkIi1v3d', '5OMNsSmLzeb3ZPpCBmw6SD', 'nulo'),
(142, 'My Reverie', '03:09:00', '0NB5HROxc8dDBXpkIi1v3d', '5OMNsSmLzeb3ZPpCBmw6SD', 'nulo'),
(143, 'When You\'re Smiling', '02:29:00', '0NB5HROxc8dDBXpkIi1v3d', '5OMNsSmLzeb3ZPpCBmw6SD', 'nulo'),
(144, 'Autumn Leaves', '02:12:00', '0NB5HROxc8dDBXpkIi1v3d', '5OMNsSmLzeb3ZPpCBmw6SD', 'nulo'),
(145, 'I\'m Making Believe', '02:15:00', '0NB5HROxc8dDBXpkIi1v3d', '5OMNsSmLzeb3ZPpCBmw6SD', 'nulo'),
(146, 'I\'ll Be Seeing You', '03:34:00', '0NB5HROxc8dDBXpkIi1v3d', '5OMNsSmLzeb3ZPpCBmw6SD', 'nulo'),
(147, 'We Didn’t Start the Fire', '03:35:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/39cb4ffd2b94e20533913ea52cff60054ea0f118?cid=eed31a43318f478ba48917070c9c3b37'),
(148, 'Fake as Hell', '02:59:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/6fdbfc7640e4323494981dab9c822740c4e83705?cid=eed31a43318f478ba48917070c9c3b37'),
(149, 'You First', '03:54:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/688f37f806c19cb2e809e69e53519f09e46285d2?cid=eed31a43318f478ba48917070c9c3b37'),
(150, 'Lost', '03:19:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/effd763b0241c4973a3ebad491ac7fd13c93e6c5?cid=eed31a43318f478ba48917070c9c3b37'),
(151, 'The Narcissist', '04:05:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/5adb4e89f3789ad5784350b471037cac95c37be3?cid=eed31a43318f478ba48917070c9c3b37'),
(152, 'Song #3', '04:16:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/71d625b17371519d702f5f787456d742a0ea372e?cid=eed31a43318f478ba48917070c9c3b37'),
(153, 'The Drummer', '03:22:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/35e70075caadb1093866966a4b831c0deb341abc?cid=eed31a43318f478ba48917070c9c3b37'),
(154, 'Summer of Luv', '02:39:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/00adeceb7f64ad4815b99651731406146a036cc3?cid=eed31a43318f478ba48917070c9c3b37'),
(155, 'Nobody', '05:53:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/db9071376d9a19e039a1e46096a73108ef2725f2?cid=eed31a43318f478ba48917070c9c3b37'),
(156, 'Planetary (GO!)', '04:07:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/f1e9037e0912475aca1a150c41c9c7be7ec43788?cid=eed31a43318f478ba48917070c9c3b37'),
(157, 'Kids in America', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/fff7bf89e07bc35e84ef8d1886a1e04baf552ba0?cid=eed31a43318f478ba48917070c9c3b37'),
(158, 'SUPERBLOOM', '03:33:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/b5d32cafab3315c6c741579af3f71e67eb15e01f?cid=eed31a43318f478ba48917070c9c3b37'),
(159, 'Stronger on Your Own', '04:01:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/51b0c07b7f7035bdb33b0e209d517aecde24e953?cid=eed31a43318f478ba48917070c9c3b37'),
(160, 'Oblivion', '02:41:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/2d8d9cc91b0f40c0251892776e08d8f5124a1d61?cid=eed31a43318f478ba48917070c9c3b37'),
(161, 'Psycho in My Head', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/4f4a08530fc0866c65141b260e05c985f9fbb2b8?cid=eed31a43318f478ba48917070c9c3b37'),
(162, 'Terrible Things', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/ea2b0c5a266011890970f0240bec4d38ac130876?cid=eed31a43318f478ba48917070c9c3b37'),
(163, 'A Symptom of Being Human', '04:08:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/a661c59086b43f7f1f330c199eb598cd65f120cc?cid=eed31a43318f478ba48917070c9c3b37'),
(164, 'Amazonia', '05:00:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/9d39429006bb4bba6702a36db9891385156f9baa?cid=eed31a43318f478ba48917070c9c3b37'),
(165, 'A Hunger in Your Haunt', '03:49:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/ad18706d0d766f7ba43368027a5ff940ec3cd3a3?cid=eed31a43318f478ba48917070c9c3b37'),
(166, 'The In-Between', '04:14:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/110d300a2d23d002043d9510763e883032daaaf3?cid=eed31a43318f478ba48917070c9c3b37'),
(167, 'Natural Born Killer', '03:16:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/b484d29c4c210872948c1b632c2367ea17af69c6?cid=eed31a43318f478ba48917070c9c3b37'),
(168, 'Break My Baby', '04:25:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/ffaab0661d992b49fdd8a0a770213038c8b68c56?cid=eed31a43318f478ba48917070c9c3b37'),
(169, 'Local God', '03:00:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/59a73531463493c3755ef6220c81007af3a26e18?cid=eed31a43318f478ba48917070c9c3b37'),
(170, 'Yen', '04:45:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/f1af316bc41df22d40c73d6bdef11b019988978d?cid=eed31a43318f478ba48917070c9c3b37'),
(171, 'Rockstar', '03:43:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/7943dd616d9effef9b0486d640b28f47f7161e01?cid=eed31a43318f478ba48917070c9c3b37'),
(172, 'Everything\'s Electric', '03:36:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/54a486126fbcb3308063d95e68a705b8b7c989f0?cid=eed31a43318f478ba48917070c9c3b37'),
(173, 'Battle Symphony', '03:36:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/3969b6ad81c95638049ba43aa42e2f5971449fc8?cid=eed31a43318f478ba48917070c9c3b37'),
(174, 'An Arrow in the Wall', '04:49:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/8deddcd70798f0b8250c6d981b75178eb0bb08e9?cid=eed31a43318f478ba48917070c9c3b37'),
(175, 'Wild Dogs (Running in a Slow Dream)', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/bb920413e93c72a3bb48f96d125a75aebabebdd9?cid=eed31a43318f478ba48917070c9c3b37'),
(176, 'Slow Song', '04:13:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/22f99f3dcc2269c92ae8a1e5783dd7b82b90f06a?cid=eed31a43318f478ba48917070c9c3b37'),
(177, 'Urantia', '04:30:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/09421f7bb1956a26c72d2361f940c62cb7f8cb08?cid=eed31a43318f478ba48917070c9c3b37'),
(178, 'Tongue Tied', '03:38:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/1e2835d1dda11aaecb1d049efcf41b291797c060?cid=eed31a43318f478ba48917070c9c3b37'),
(179, 'Affluenza', '03:36:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/51356c5dad2a4d79520b0e8ba6f803f279d62b4f?cid=eed31a43318f478ba48917070c9c3b37'),
(180, 'Yeah, I Like You', '04:24:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/ec43a25ca85e0b61594ce20d16f781cc613439e7?cid=eed31a43318f478ba48917070c9c3b37'),
(181, 'Catastrophist', '06:28:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/6a5d36d6160a939abbd707feae4449bef00c7dbe?cid=eed31a43318f478ba48917070c9c3b37'),
(182, 'Supernatural', '02:47:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/9899072abbe8ca26530a50205c526525545b2201?cid=eed31a43318f478ba48917070c9c3b37'),
(183, 'Running Out of Time', '03:12:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/e46a90060e3a8857fb94947f14e9c67bef21e2bf?cid=eed31a43318f478ba48917070c9c3b37'),
(184, 'The Rodeo', '03:04:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/0b350017eca5ee81d4839d1c565c78f014bdd699?cid=eed31a43318f478ba48917070c9c3b37'),
(185, 'Idiosyncrasy', '04:38:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/adfcaff4876981d1d6809ce075524456454cf882?cid=eed31a43318f478ba48917070c9c3b37'),
(186, 'Mercy', '04:26:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/d21211e0d7c4970d3f09950baeb7d8f61bfccf39?cid=eed31a43318f478ba48917070c9c3b37'),
(187, 'The Kids from Yesterday', '05:24:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/b88c5e3c1e7ad006821afda5139be54d0277d36e?cid=eed31a43318f478ba48917070c9c3b37'),
(188, 'KILL YOUR CONSCIENCE', '03:52:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/2c5f36d52e3dae369cf09b32ed36cbfaa24e74b6?cid=eed31a43318f478ba48917070c9c3b37'),
(189, 'Space', '03:55:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/cffd5d92b39c14481edbc3630da0983d8c29df49?cid=eed31a43318f478ba48917070c9c3b37'),
(190, 'Set Me Free', '06:21:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/3a7446aafab97c225b891958916aaa50571b8777?cid=eed31a43318f478ba48917070c9c3b37'),
(191, 'Father of All...', '02:31:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/66069f5f87e6e72f9e30b9890491d38fda998a94?cid=eed31a43318f478ba48917070c9c3b37'),
(192, 'Fabuless', '04:00:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/d71b3b57430c6051f2a6a2bc9110aee12e946dfb?cid=eed31a43318f478ba48917070c9c3b37'),
(193, 'Are You Bored Yet?', '02:58:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/d633e4e4903c6a1a09611a1e2a528eb9e1bbce84?cid=eed31a43318f478ba48917070c9c3b37'),
(194, 'The Dying Song (Time to Sing)', '03:23:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/030a00f5d9dc1e41744c46f65fb541b46b6d088e?cid=eed31a43318f478ba48917070c9c3b37'),
(195, 'See You Later', '02:35:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/4a0c34dcbdf2e0fc1f3fb2f373772507540794d1?cid=eed31a43318f478ba48917070c9c3b37'),
(196, 'Mind over Matter', '03:50:00', '0NB5HROxc8dDBXpkIi1v3d', '0ZfWocuwsQg5Y8B2S5yabj', 'https://p.scdn.co/mp3-preview/6ab8ee8d440d213fe9c8942bb0d07c14905066ca?cid=eed31a43318f478ba48917070c9c3b37'),
(197, 'Nim zajdzie słońce', '02:27:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/064edc2f622dc5233fd1d169e4133fa8a2c9e94d?cid=eed31a43318f478ba48917070c9c3b37'),
(198, 'Rodeo', '02:35:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/6cbab2db323a0b7eb051510fe3a933a9b3a2d527?cid=eed31a43318f478ba48917070c9c3b37'),
(199, 'Italodisco', '03:19:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/823e13dbfcd30f1aeec9759294dee929d37a871e?cid=eed31a43318f478ba48917070c9c3b37'),
(200, 'Sierpień', '02:45:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/82aec4b43942a2dfc95b40bb62118043bedc526a?cid=eed31a43318f478ba48917070c9c3b37'),
(201, 'Strangers', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/f8e667575db490b61ccc4d0948a6be922cfe1c5e?cid=eed31a43318f478ba48917070c9c3b37'),
(202, 'Moment', '02:24:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/0e92890875d5afc816b24eda65c39072a389e1fb?cid=eed31a43318f478ba48917070c9c3b37'),
(203, 'Lipstick', '03:28:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/14caab31e8e89dc1b491aaf76bbbdb437bcec2ca?cid=eed31a43318f478ba48917070c9c3b37'),
(204, 'DISCO PARADISE', '03:18:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/a203ea8ef17bb56479bf5f717d17fa08f3b7cda0?cid=eed31a43318f478ba48917070c9c3b37'),
(205, 'Gimme Love', '02:57:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/57e9bf4aa940cf787d4ee5b4927620efa79b2463?cid=eed31a43318f478ba48917070c9c3b37'),
(206, 'Lose Control', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/51e51cc257e4186893b1923abf42fdaabbeeda37?cid=eed31a43318f478ba48917070c9c3b37'),
(207, 'When Love Sucks', '02:49:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/7e857493dc17d503c16edc7921f78865d99db549?cid=eed31a43318f478ba48917070c9c3b37'),
(208, 'Baby Don’t Hurt Me', '02:20:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/a8f2e176e17e0f6298b42ef8e96118318fdd2b89?cid=eed31a43318f478ba48917070c9c3b37'),
(209, 'Tylko tego chcę', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/85bf6471110316dece7097c218c11f186201dab2?cid=eed31a43318f478ba48917070c9c3b37'),
(210, 'I Remember Everything', '03:47:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/22b240f7ef2eff38bd12fb0c94dfea5e1d70e20a?cid=eed31a43318f478ba48917070c9c3b37'),
(211, 'BANG BANG', '03:31:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/3eacb26cc61c748895661dcafdc25e9a8b8ec023?cid=eed31a43318f478ba48917070c9c3b37'),
(212, 'Dead Man Walking', '02:57:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/193f5b12679a65fe8724d26ef68855ae01e60ea3?cid=eed31a43318f478ba48917070c9c3b37'),
(213, 'Café de Paris', '03:02:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/d93fca8bc4a9609f675c1c119bacf9cb75a73509?cid=eed31a43318f478ba48917070c9c3b37'),
(214, 'Led Me to You (From the Netflix Film \"A Beautiful Life\")', '03:19:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/93291ef1b16e83c4538ce8a64a487d686b3167de?cid=eed31a43318f478ba48917070c9c3b37'),
(215, 'Niepoważny', '03:00:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/df6d8fae46a0c2c33b103e49aa143fe9223ef326?cid=eed31a43318f478ba48917070c9c3b37'),
(216, 'Easy on My Heart', '02:58:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/d9c24fc9b0c4700a96228d34c36b713590fb3550?cid=eed31a43318f478ba48917070c9c3b37'),
(217, 'Essence', '02:48:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/efa71cd38f95afb5e4bb78bc23a8654235b08f80?cid=eed31a43318f478ba48917070c9c3b37'),
(218, 'One in a Million', '02:40:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/61a85a26d23e7cde9c7a6b13a494d542068bdc96?cid=eed31a43318f478ba48917070c9c3b37'),
(219, 'TYLE SŁOŃCA', '02:22:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/4d25cddb0b94fd82c74dd3eaabc040da99c0b848?cid=eed31a43318f478ba48917070c9c3b37'),
(220, 'Dominoes', '02:40:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/e9a0f96763375ab9026defff9c434ec5abadffd0?cid=eed31a43318f478ba48917070c9c3b37'),
(221, 'Drinkin\'', '02:29:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/5d6fc0aa75a186eeb22d894843f10622e4df046d?cid=eed31a43318f478ba48917070c9c3b37'),
(222, 'You First', '03:54:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/688f37f806c19cb2e809e69e53519f09e46285d2?cid=eed31a43318f478ba48917070c9c3b37'),
(223, 'Pójdę z tobą', '02:56:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/a4f7759fdd59495b4fd668dcd0ebc4baf05f899f?cid=eed31a43318f478ba48917070c9c3b37'),
(224, 'We Didn’t Start the Fire', '03:35:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/39cb4ffd2b94e20533913ea52cff60054ea0f118?cid=eed31a43318f478ba48917070c9c3b37'),
(225, 'Wakacje w Polsce', '02:22:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/d88631c83d77da62b7463664ce98f9f6a9f647e4?cid=eed31a43318f478ba48917070c9c3b37'),
(226, 'One with the Wolves', '03:00:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/4bdbeec204451f8dbe65c33dfa80083356315a79?cid=eed31a43318f478ba48917070c9c3b37'),
(227, 'GANESHA', '03:00:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/9bddc5e2f8d5e93beaabea3009649112990b6017?cid=eed31a43318f478ba48917070c9c3b37'),
(228, 'Hands on Me', '03:03:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/b5e253e6b81cac1196f0f9012627db97112e51f5?cid=eed31a43318f478ba48917070c9c3b37'),
(229, 'BOTH', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/e4ee839be1488bee300b8ad912726f6ef2220b01?cid=eed31a43318f478ba48917070c9c3b37'),
(230, 'Ojej', '02:23:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/6552ebec83f9bf051cf605bd40ead80de9e51384?cid=eed31a43318f478ba48917070c9c3b37'),
(231, 'I’m Good (Blue)', '02:55:00', '0NB5HROxc8dDBXpkIi1v3d', '34Mug3cj520ZQRaJ360tg9', 'https://p.scdn.co/mp3-preview/c1de960c1a98f7ab652331e5223c50baba75c460?cid=eed31a43318f478ba48917070c9c3b37'),
(232, 'Sarah\'s Place', '03:34:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/3e274f0e3ea942efd0cfc1bb04ed0c3df0534b82?cid=eed31a43318f478ba48917070c9c3b37'),
(233, 'Strangers', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/f8e667575db490b61ccc4d0948a6be922cfe1c5e?cid=eed31a43318f478ba48917070c9c3b37'),
(234, 'City Boys', '02:33:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/a041f718df34e95a1da152d01203d2d0a0c3f913?cid=eed31a43318f478ba48917070c9c3b37'),
(235, 'adore u', '03:40:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/49ddf22bfe3925899cbb9ecf5d5157525becdcb4?cid=eed31a43318f478ba48917070c9c3b37'),
(236, 'BOTH', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/e4ee839be1488bee300b8ad912726f6ef2220b01?cid=eed31a43318f478ba48917070c9c3b37'),
(237, 'Lose Control', '03:30:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/51e51cc257e4186893b1923abf42fdaabbeeda37?cid=eed31a43318f478ba48917070c9c3b37'),
(238, 'One in a Million', '02:40:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/61a85a26d23e7cde9c7a6b13a494d542068bdc96?cid=eed31a43318f478ba48917070c9c3b37'),
(239, 'Gimme Love', '02:57:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/57e9bf4aa940cf787d4ee5b4927620efa79b2463?cid=eed31a43318f478ba48917070c9c3b37'),
(240, 'Hands on Me', '03:03:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/b5e253e6b81cac1196f0f9012627db97112e51f5?cid=eed31a43318f478ba48917070c9c3b37'),
(241, 'You First', '03:54:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/688f37f806c19cb2e809e69e53519f09e46285d2?cid=eed31a43318f478ba48917070c9c3b37'),
(242, 'Better Things', '03:23:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/54e10e7a50a44013ca75be6d0e27faf95a2b3f0f?cid=eed31a43318f478ba48917070c9c3b37'),
(243, 'There It Goes', '03:45:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/cacd54464883b90125140fad822df1cd2b1c3bd8?cid=eed31a43318f478ba48917070c9c3b37'),
(244, 'Lipstick', '03:28:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/14caab31e8e89dc1b491aaf76bbbdb437bcec2ca?cid=eed31a43318f478ba48917070c9c3b37'),
(245, 'Fake as Hell', '02:59:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/6fdbfc7640e4323494981dab9c822740c4e83705?cid=eed31a43318f478ba48917070c9c3b37'),
(246, 'club heaven', '02:11:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/e18faddcfa779e32741aeee103cc78bd2bf488ce?cid=eed31a43318f478ba48917070c9c3b37'),
(247, 'Live for Me', '03:31:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/547ef328c7576928afca787e3e18cae67a38e07d?cid=eed31a43318f478ba48917070c9c3b37'),
(248, '2 die 4', '02:06:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/8fbb64dea7bfbd0f5dbd7b4fc5e0560e1e973bf9?cid=eed31a43318f478ba48917070c9c3b37'),
(249, 'You\'re Hired', '02:59:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/9be9b7bd3132911163cf7c61824d6f1e9a8cd622?cid=eed31a43318f478ba48917070c9c3b37'),
(250, 'We Didn’t Start the Fire', '03:35:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/39cb4ffd2b94e20533913ea52cff60054ea0f118?cid=eed31a43318f478ba48917070c9c3b37'),
(251, 'Drinkin\'', '02:29:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/5d6fc0aa75a186eeb22d894843f10622e4df046d?cid=eed31a43318f478ba48917070c9c3b37'),
(252, 'It Is What It Is', '02:26:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/a5ffa81a779d5e6e39899ac57599ad427aa938c8?cid=eed31a43318f478ba48917070c9c3b37'),
(253, 'STRINGS', '02:33:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/d4e1d86cf49529c2c5fbbfab2cb3373f74278fbe?cid=eed31a43318f478ba48917070c9c3b37'),
(254, 'Crush', '02:55:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/1f0111772870be5e4c0b1403e267d36856b9a8c9?cid=eed31a43318f478ba48917070c9c3b37'),
(255, 'Essence', '02:48:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/efa71cd38f95afb5e4bb78bc23a8654235b08f80?cid=eed31a43318f478ba48917070c9c3b37'),
(256, 'Bittersweet Goodbye', '02:46:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/3d1d90d2ac20ce9698c0ded4c5b36a202542e55c?cid=eed31a43318f478ba48917070c9c3b37'),
(257, 'Yours', '02:57:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/d17aa8e52a49c999efbc0bcb6913322bb0d0cbc7?cid=eed31a43318f478ba48917070c9c3b37'),
(258, 'Vertigo', '02:59:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/28f56f19466d4fd09f4e791e0f40bd694c5c6cf9?cid=eed31a43318f478ba48917070c9c3b37'),
(259, 'Chrome Hearted', '02:16:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/003a1cb24771ba5affc4153548e206de05b27dcf?cid=eed31a43318f478ba48917070c9c3b37'),
(260, 'Just Love', '03:15:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/f069e4664f894791479e0f80515dd67f44652b55?cid=eed31a43318f478ba48917070c9c3b37'),
(261, 'sick of myself', '02:21:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/16b25d0206db0ce8b271cb0e97d570b5e55ed9fe?cid=eed31a43318f478ba48917070c9c3b37'),
(262, 'Smash My Heart', '02:50:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/fde40793a28495f497ee7b476b6a7f1f9a4f15cd?cid=eed31a43318f478ba48917070c9c3b37'),
(263, 'leave me for dead', '02:56:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/6afdc836ba657cd7941452af2a1f0d5799627f9c?cid=eed31a43318f478ba48917070c9c3b37'),
(264, 'Still as the Night', '03:17:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/6011cd7765ea56499423a4d6bd00165b90fcd813?cid=eed31a43318f478ba48917070c9c3b37'),
(265, 'La La La', '02:14:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/19cb85a795445a0b9b9cd7bf39acce024f335c23?cid=eed31a43318f478ba48917070c9c3b37'),
(266, 'Triple A', '02:38:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/c49911d2f26fdfed5d27fd1b1ba67b758b6c35ee?cid=eed31a43318f478ba48917070c9c3b37'),
(267, 'Not the 1975', '03:18:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/221d26205bf90d32cd16cfe01bf896e31dcfbf26?cid=eed31a43318f478ba48917070c9c3b37'),
(268, 'Mercy', '02:58:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/56b94758ce2ee222accca4189493cefc9cab12ca?cid=eed31a43318f478ba48917070c9c3b37'),
(269, 'Change Your Mind', '02:54:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/1eae9c8ea40d9807b0ddc62b5dcc908b7f08e448?cid=eed31a43318f478ba48917070c9c3b37'),
(270, 'Friends with Your EX', '01:58:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/2aefb5dcf9e5c1a3b79dfb14a9b33fa456b41e1f?cid=eed31a43318f478ba48917070c9c3b37'),
(271, 'Don’t Call Me', '02:48:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/b34610f444085b4c8e869b0d81cb046c31d6d899?cid=eed31a43318f478ba48917070c9c3b37'),
(272, 'Bruises Off the Peach', '03:12:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/36031b581d843016a0d7c4289b262417111b7a06?cid=eed31a43318f478ba48917070c9c3b37'),
(273, 'I Choose You', '03:00:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/9828a3325a0ec1b5f60b93269c26d68b764612ea?cid=eed31a43318f478ba48917070c9c3b37'),
(274, 'Sorry Now', '02:52:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/2c913478003b261f2ca157a065fd584813a0d196?cid=eed31a43318f478ba48917070c9c3b37'),
(275, 'Strange', '03:08:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/85027e97cdb03fd424bccd4ef1caf8b16e6970b5?cid=eed31a43318f478ba48917070c9c3b37'),
(276, 'Caroline', '03:43:00', '0NB5HROxc8dDBXpkIi1v3d', '3ja0lE7IZQD2LnIx7MuPW9', 'https://p.scdn.co/mp3-preview/46512988e2d620b6c1cffd3c589e74094cf4d857?cid=eed31a43318f478ba48917070c9c3b37'),
(277, 'Heaven Is Lucid Dreaming', '01:11:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(278, 'Caution', '02:57:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(279, 'Aura', '03:27:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(280, 'Paraphonic', '03:24:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(281, 'Artificial Intelligence', '04:20:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(282, 'Fin Del Mundo (with Bratty)', '02:54:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(283, 'Time Machine', '03:39:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(284, 'When The Day Comes To An End', '03:40:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(285, 'Sitting In The Corner (feat. Adriel Favela & Kacey Musgraves)', '03:52:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(286, 'Foolish', '03:38:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(287, 'Sweet Dissociation', '03:24:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(288, 'Decir Adios (with DannyLux)', '04:39:00', '2Tglaf8nvDzwSQnpSrjLHP', '7JvjOgEBBcrLs9048x1QcM', 'nulo'),
(289, 'Intro (feat. Foos Gone Wild)', '00:29:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(290, 'Keeping Tabs (feat. Suscat0)', '04:08:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(291, 'Bossa No Sé (feat. Jean Carter)', '03:21:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(292, 'Perihelion - Interlude', '02:32:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(293, 'Feelings', '03:10:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(294, 'Lovetripper', '05:09:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(295, 'Ego Death In Thailand', '03:14:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(296, 'Hydrocodone', '02:32:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(297, 'Far Away From Home', '04:25:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(298, 'Brokey The Pear - Interlude', '01:24:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(299, 'Best Friend', '02:30:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(300, 'Room Tone - Interlude', '01:10:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(301, 'Do Better', '03:31:00', '2Tglaf8nvDzwSQnpSrjLHP', '6e8eJS3DUWZ9SAjHE5AD5m', 'nulo'),
(302, 'One and Only', '03:26:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/c61334a89a9e928c625e72675b2677af8a8dc5d2?cid=eed31a43318f478ba48917070c9c3b37'),
(303, 'Winter\'s Ballad', '04:37:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/546e111e3ef712efa7ef3e527bcbddc68c35d965?cid=eed31a43318f478ba48917070c9c3b37'),
(304, 'We Had to End It', '05:49:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/f1f9aab3c93bad0912ed7267dd13ae5eec27036b?cid=eed31a43318f478ba48917070c9c3b37'),
(305, 'Neon Baby', '03:54:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/348fb47cb2df4a932e05147e36dfce00c2f643f2?cid=eed31a43318f478ba48917070c9c3b37'),
(306, 'Stay for a Bit', '04:05:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/a5b332b5d96eb33fa398539865c165ea00c13d31?cid=eed31a43318f478ba48917070c9c3b37'),
(307, 'Lava Lamp', '05:08:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/d0e7773d354503e01a960abe1cbe67d4923bd8fc?cid=eed31a43318f478ba48917070c9c3b37'),
(308, 'Rest Easy, I\'ll See You Again', '03:58:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/af8b46ef3c54cf9636f85a56e9cd12f32f05e9a7?cid=eed31a43318f478ba48917070c9c3b37'),
(309, 'Lost / Heart', '04:32:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/ef89d22b345fb986088449796faf52620adbfb97?cid=eed31a43318f478ba48917070c9c3b37'),
(310, 'I\'ve Left My Body and I Don\'t Want to Come Back', '01:30:00', '2Tglaf8nvDzwSQnpSrjLHP', '2bLdzrKZaJTEZvoeJPzMxx', 'https://p.scdn.co/mp3-preview/19675b9803807fdfca96f857ad1aec63829a17cc?cid=eed31a43318f478ba48917070c9c3b37'),
(311, 'Lover Is a Day', '07:36:00', '2Tglaf8nvDzwSQnpSrjLHP', '1rQys03txxThcRZLofLlHY', 'https://p.scdn.co/mp3-preview/fbef3cdacb1636624f4a3bbc2050b008414dd1d7?cid=eed31a43318f478ba48917070c9c3b37'),
(312, 'Cupid\'s Quiver', '04:20:00', '2Tglaf8nvDzwSQnpSrjLHP', '1rQys03txxThcRZLofLlHY', 'https://p.scdn.co/mp3-preview/805a7863ae573f3fef3926d8b8528f7f9e219c6a?cid=eed31a43318f478ba48917070c9c3b37'),
(313, 'Amor de Siempre', '05:21:00', '2Tglaf8nvDzwSQnpSrjLHP', '1rQys03txxThcRZLofLlHY', 'https://p.scdn.co/mp3-preview/fb2e8da5aea84179b48265654d226fe372fec183?cid=eed31a43318f478ba48917070c9c3b37'),
(314, 'When We Meet', '04:37:00', '2Tglaf8nvDzwSQnpSrjLHP', '1rQys03txxThcRZLofLlHY', 'https://p.scdn.co/mp3-preview/65dcde0ae00f53308e7facc2ffaee4de737e1851?cid=eed31a43318f478ba48917070c9c3b37'),
(315, 'Mindwinder', '01:56:00', '2Tglaf8nvDzwSQnpSrjLHP', '1rQys03txxThcRZLofLlHY', 'https://p.scdn.co/mp3-preview/39103e2115e050855fdbc38405eb0613108b8b73?cid=eed31a43318f478ba48917070c9c3b37'),
(316, 'Lonelylife', '05:20:00', '2Tglaf8nvDzwSQnpSrjLHP', '1rQys03txxThcRZLofLlHY', 'https://p.scdn.co/mp3-preview/49332b4d42626d2433ce944baca2d25edd598d6a?cid=eed31a43318f478ba48917070c9c3b37');
INSERT INTO `canciones` (`id`, `nombre`, `duracion`, `artista`, `album`, `previewUrl`) VALUES
(317, '1Night', '02:19:00', '2Tglaf8nvDzwSQnpSrjLHP', '1rQys03txxThcRZLofLlHY', 'https://p.scdn.co/mp3-preview/20fbf446f603d6962ca897d96df3678afd186b07?cid=eed31a43318f478ba48917070c9c3b37'),
(318, 'Planet Express', '04:19:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pFOoKAoqMRWTIAdDdqTnF', 'nulo'),
(319, 'Dime (with Conexión Divina)', '03:52:00', '2Tglaf8nvDzwSQnpSrjLHP', '62LsTv9SDFBUihRPwVUsLr', 'nulo'),
(320, 'Coastin\' (with Alemán)', '04:04:00', '2Tglaf8nvDzwSQnpSrjLHP', '1Vxwqwvz1yO72jFTQ7O5aH', 'nulo'),
(321, 'DECIR ADIOS \"OYE NARRADOR\" (with Cuco)', '03:48:00', '2Tglaf8nvDzwSQnpSrjLHP', '0GgsvW4d1yiUjwMeALi6uO', 'https://p.scdn.co/mp3-preview/c3aa239ab3a538e75f0f2ee403ac1213935c593c?cid=eed31a43318f478ba48917070c9c3b37'),
(322, 'el paso', '03:05:00', '2Tglaf8nvDzwSQnpSrjLHP', '5QBjcz2tdsRVsmPtmg8h5Z', 'https://p.scdn.co/mp3-preview/d8d8499e6b4635943bbdb413d992c83f3d84ec3c?cid=eed31a43318f478ba48917070c9c3b37'),
(323, 'miami', '02:22:00', '2Tglaf8nvDzwSQnpSrjLHP', '5QBjcz2tdsRVsmPtmg8h5Z', 'https://p.scdn.co/mp3-preview/91a38d8e4f567768f5db90e3bc9aacebab17ec9f?cid=eed31a43318f478ba48917070c9c3b37'),
(324, 'Heartquake', '03:38:00', '2Tglaf8nvDzwSQnpSrjLHP', '1Ug1cKJWf6t7qlKQEfKs4R', 'https://p.scdn.co/mp3-preview/08dbec55b7779f112e6dbe2bfacded50d974a293?cid=eed31a43318f478ba48917070c9c3b37'),
(325, 'Mi Querido, Mi Viejo, Mi Amigo', '03:18:00', '2Tglaf8nvDzwSQnpSrjLHP', '7vlyywsguQ8jChINFZRf7d', 'nulo'),
(326, 'Miel', '03:37:00', '2Tglaf8nvDzwSQnpSrjLHP', '62w772P9uxu5l8OmVWpj6Q', 'https://p.scdn.co/mp3-preview/e6233af3bde65477dd286d993e6bd9be27354c5d?cid=eed31a43318f478ba48917070c9c3b37'),
(327, 'Tu Labial', '03:47:00', '2Tglaf8nvDzwSQnpSrjLHP', '62w772P9uxu5l8OmVWpj6Q', 'https://p.scdn.co/mp3-preview/b290a06acf96485101a682c29c53152d329f5179?cid=eed31a43318f478ba48917070c9c3b37'),
(328, 'Medusa', '02:58:00', '2Tglaf8nvDzwSQnpSrjLHP', '0wbKY324xkDkzZvSrHQCVW', 'nulo'),
(329, 'Si Me Voy (with The Marías)', '03:23:00', '2Tglaf8nvDzwSQnpSrjLHP', '5TZm9qi0223t20ypmJevEq', 'nulo'),
(330, 'Best Disaster', '02:53:00', '2Tglaf8nvDzwSQnpSrjLHP', '5BMoArQlFykRWUh120Hcdh', 'nulo'),
(331, 'First Of The Year', '02:50:00', '2Tglaf8nvDzwSQnpSrjLHP', '1mgwNlzi9VzFcE1Qd4Xj86', 'nulo'),
(332, 'Pendant', '03:55:00', '2Tglaf8nvDzwSQnpSrjLHP', '5Byl3llMQRhBj88mYrEbGS', 'nulo'),
(333, 'Aura - Spanish Version', '03:28:00', '2Tglaf8nvDzwSQnpSrjLHP', '6LWAOYIqPzIdujffA7ah7W', 'nulo'),
(334, 'Aura', '03:27:00', '2Tglaf8nvDzwSQnpSrjLHP', '1i3MA9Eamgjk3SKYFo0zdn', 'nulo'),
(335, 'Fin Del Mundo (with Bratty)', '02:54:00', '2Tglaf8nvDzwSQnpSrjLHP', '2er3W6mBnmly9PuRHL74aj', 'nulo'),
(336, 'Time Machine', '03:39:00', '2Tglaf8nvDzwSQnpSrjLHP', '4jAN28tuuWdvDsX5HzPXbv', 'nulo'),
(337, 'Caution', '02:57:00', '2Tglaf8nvDzwSQnpSrjLHP', '69809nxVVagxVz0YBOnCIX', 'nulo'),
(338, 'La Novela', '04:51:00', '2Tglaf8nvDzwSQnpSrjLHP', '0Jm9vE88gbVVxYVyXfSgcY', 'https://p.scdn.co/mp3-preview/36da1e9a58268a36530fa3556e86d7fa8be4205c?cid=eed31a43318f478ba48917070c9c3b37'),
(339, 'Under The Sun', '03:37:00', '2Tglaf8nvDzwSQnpSrjLHP', '45ubqbPdQyqmYEj9FFzmQ4', 'nulo'),
(340, 'Forevermore', '02:54:00', '2Tglaf8nvDzwSQnpSrjLHP', '6UppGVPzMsv9LJI2x4e0Qn', 'nulo'),
(341, 'Paradise', '03:43:00', '2Tglaf8nvDzwSQnpSrjLHP', '2zaWUjh9T05lm2r3gKOqsk', 'nulo'),
(342, 'Piel Canela', '01:42:00', '2Tglaf8nvDzwSQnpSrjLHP', '2sNKWMhg0kOHdPDlvl0w6t', 'nulo'),
(343, 'See Me With Her', '02:31:00', '2Tglaf8nvDzwSQnpSrjLHP', '7uPXkiaL11uZ5Qo9hKj5Of', 'https://p.scdn.co/mp3-preview/775058492b51928282b972ec3f03e40e6cf6ee6b?cid=eed31a43318f478ba48917070c9c3b37'),
(344, 'A24', '02:23:00', '2Tglaf8nvDzwSQnpSrjLHP', '2HJwG5X5A3SNhVza2LRr1W', 'nulo'),
(345, 'Feelings', '03:10:00', '2Tglaf8nvDzwSQnpSrjLHP', '7jaaCkiivIJrVnuQDZfcuE', 'nulo'),
(346, 'Hydrocodone', '02:32:00', '2Tglaf8nvDzwSQnpSrjLHP', '0WbpBm4ihG22MeUYB14tig', 'nulo'),
(347, 'SEARCH', '03:26:00', '2Tglaf8nvDzwSQnpSrjLHP', '3xcO7Z4wv27ZWBXINEfUl7', 'https://p.scdn.co/mp3-preview/73e250f33263c79901cfd4ce833c290b54b3b95a?cid=eed31a43318f478ba48917070c9c3b37'),
(348, 'Fix Me', '03:02:00', '2Tglaf8nvDzwSQnpSrjLHP', '1rYSeoTc0x4oJi1fV2QVUQ', 'https://p.scdn.co/mp3-preview/e92735f7df55454656872bed0a636a7897afa989?cid=eed31a43318f478ba48917070c9c3b37'),
(349, 'Amor de Siempre - Mariachi Version', '04:08:00', '2Tglaf8nvDzwSQnpSrjLHP', '5aVMCJLSjbvw5bp3oIGcfl', 'https://p.scdn.co/mp3-preview/5cba3a371a390dce1b6b25d0d3a509f94a946d01?cid=eed31a43318f478ba48917070c9c3b37'),
(350, 'Drown', '03:54:00', '2Tglaf8nvDzwSQnpSrjLHP', '22y4jRBJ3WK5plaTLg0Vn4', 'https://p.scdn.co/mp3-preview/49ae935815d328c2d6e4f0caf46dfacb8c0b3504?cid=eed31a43318f478ba48917070c9c3b37'),
(351, 'Lucy', '04:47:00', '2Tglaf8nvDzwSQnpSrjLHP', '4gjhrTin1WwrEHd8GslZ7O', 'https://p.scdn.co/mp3-preview/723c62e29397b95ed2d0a58df80e2e2fb8e70966?cid=eed31a43318f478ba48917070c9c3b37'),
(352, 'Dontmakemefallinlove', '03:27:00', '2Tglaf8nvDzwSQnpSrjLHP', '4gjhrTin1WwrEHd8GslZ7O', 'https://p.scdn.co/mp3-preview/06683bb53d8c57ff5d58daa3ba61b6ba1a65b9c2?cid=eed31a43318f478ba48917070c9c3b37'),
(353, 'Sunnyside', '04:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '4gjhrTin1WwrEHd8GslZ7O', 'https://p.scdn.co/mp3-preview/63d2029342bf5f245d5a23c3307b97689ef0cc8a?cid=eed31a43318f478ba48917070c9c3b37'),
(354, 'Summer Time High Time', '03:28:00', '2Tglaf8nvDzwSQnpSrjLHP', '4gjhrTin1WwrEHd8GslZ7O', 'https://p.scdn.co/mp3-preview/a367842cf51bedc3702183be42d44727bf16f2fd?cid=eed31a43318f478ba48917070c9c3b37'),
(355, 'Mi Infinita', '04:32:00', '2Tglaf8nvDzwSQnpSrjLHP', '4gjhrTin1WwrEHd8GslZ7O', 'https://p.scdn.co/mp3-preview/2acd0ac2256cfe3061eabfd144f2ddb1d0cdb3ea?cid=eed31a43318f478ba48917070c9c3b37'),
(356, 'CR-V', '02:27:00', '2Tglaf8nvDzwSQnpSrjLHP', '4gjhrTin1WwrEHd8GslZ7O', 'https://p.scdn.co/mp3-preview/19ff3855961a6fbd6a286209367d44020bc807c4?cid=eed31a43318f478ba48917070c9c3b37'),
(357, 'Lucy', '04:47:00', '2Tglaf8nvDzwSQnpSrjLHP', '4kvLQ1DESp2qGMqlP3uwvU', 'https://p.scdn.co/mp3-preview/723c62e29397b95ed2d0a58df80e2e2fb8e70966?cid=eed31a43318f478ba48917070c9c3b37'),
(358, 'CR-V', '02:27:00', '2Tglaf8nvDzwSQnpSrjLHP', '7MJpteZWsI9nU2aS0sbzAX', 'https://p.scdn.co/mp3-preview/19ff3855961a6fbd6a286209367d44020bc807c4?cid=eed31a43318f478ba48917070c9c3b37'),
(359, 'Lo Que Siento - Audiotree Live Version', '04:14:00', '2Tglaf8nvDzwSQnpSrjLHP', '3vPz1h4oIlzugy0imdWvAO', 'https://p.scdn.co/mp3-preview/fa0da7468ae182034ebbb6c4100469f8bf10d079?cid=eed31a43318f478ba48917070c9c3b37'),
(360, 'Lava Lamp - Audiotree Live Version', '04:57:00', '2Tglaf8nvDzwSQnpSrjLHP', '3vPz1h4oIlzugy0imdWvAO', 'https://p.scdn.co/mp3-preview/e3a1d164aff358e183e97a8a8edffaa77f08dc7d?cid=eed31a43318f478ba48917070c9c3b37'),
(361, 'Lover Is a Day - Audiotree Live Version', '07:43:00', '2Tglaf8nvDzwSQnpSrjLHP', '3vPz1h4oIlzugy0imdWvAO', 'https://p.scdn.co/mp3-preview/65a57923ec45069a6c3b9aa58174da8e773418b5?cid=eed31a43318f478ba48917070c9c3b37'),
(362, 'Summertime Hightime - Audiotree Live Version', '02:17:00', '2Tglaf8nvDzwSQnpSrjLHP', '3vPz1h4oIlzugy0imdWvAO', 'https://p.scdn.co/mp3-preview/1fad3c37b715fe9e1c92ac7a392715db1bf98e14?cid=eed31a43318f478ba48917070c9c3b37'),
(363, 'Amore de Siempre - Audiotree Live Version', '05:12:00', '2Tglaf8nvDzwSQnpSrjLHP', '3vPz1h4oIlzugy0imdWvAO', 'https://p.scdn.co/mp3-preview/e440feeb004802026fc29fdbe64afec796cfa2ed?cid=eed31a43318f478ba48917070c9c3b37'),
(364, 'We Had to End It - Audiotree Live Version', '05:05:00', '2Tglaf8nvDzwSQnpSrjLHP', '3vPz1h4oIlzugy0imdWvAO', 'https://p.scdn.co/mp3-preview/9a7b3f0000b038f1d7d0172392893850437ab2a2?cid=eed31a43318f478ba48917070c9c3b37'),
(365, 'Sunnyside', '04:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '5WJtbe5MO9WrcUNELwKdFI', 'https://p.scdn.co/mp3-preview/63d2029342bf5f245d5a23c3307b97689ef0cc8a?cid=eed31a43318f478ba48917070c9c3b37'),
(366, 'Lo Que Siento', '05:12:00', '2Tglaf8nvDzwSQnpSrjLHP', '69FOLmptEcKSeN1f60UFDC', 'https://p.scdn.co/mp3-preview/343537cc1ec779e16654dc89cc13931c174413a7?cid=eed31a43318f478ba48917070c9c3b37'),
(367, 'ATRAPADO', '03:03:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/d53ed9d28c4dc1ecfc27fb262abc5420515c2b6b?cid=eed31a43318f478ba48917070c9c3b37'),
(368, 'DIME QUE HAY QUE HACER (with Gabito Ballesteros)', '02:58:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/a3c598f64bfcf88e4229a7ca792a55e8f8a622bf?cid=eed31a43318f478ba48917070c9c3b37'),
(369, 'AMAR Y PERDER', '05:19:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/07df159ff2761b6ae3f688249a4c88389f9212e1?cid=eed31a43318f478ba48917070c9c3b37'),
(370, 'AMBICIÓN', '03:29:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/d110af285cff99230a7f18a0a12a7fb4c42a6c16?cid=eed31a43318f478ba48917070c9c3b37'),
(371, 'ZAFIRO (feat. Pablo Hurtado)', '03:53:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/eafad1fba45adadea50ce5b7fae793c1b4e93e44?cid=eed31a43318f478ba48917070c9c3b37'),
(372, 'ME CAMBIASTE (with Eslabon Armado)', '03:45:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/6a3fe2a3a80321b465a6ec02c753f19243da6635?cid=eed31a43318f478ba48917070c9c3b37'),
(373, 'FERXXO 100', '03:24:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/8d96c291071b514506263193ad8fdfd4b1fa3405?cid=eed31a43318f478ba48917070c9c3b37'),
(374, 'ALGUIEN MÁS (With Yami Safdie)', '02:21:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/bb69b6149361088f8c32acc8496b426aefaaa3b7?cid=eed31a43318f478ba48917070c9c3b37'),
(375, 'TE FALLÉ', '03:17:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/0a2eaecf0e64cd607201f3dd12a45d806f51797f?cid=eed31a43318f478ba48917070c9c3b37'),
(376, 'LA LLUVIA (with Jordyn Shellhart)', '03:33:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/f70af07f144505c1ef66b777efb1d4bf75865da6?cid=eed31a43318f478ba48917070c9c3b37'),
(377, 'TE EXTRAÑO Y LO SIENTO...', '03:49:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/c41d24f0375400137a04cb089b14dfc75438510e?cid=eed31a43318f478ba48917070c9c3b37'),
(378, '¿CÓMO TE LO EXPLICO?', '03:01:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/f0a842a31950743bce7437bee2409983d55cbd82?cid=eed31a43318f478ba48917070c9c3b37'),
(379, 'CREO Q DIOS (with Melvin War)', '02:58:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/b860d5a3c9688ec89b2fb4d849998e305b207989?cid=eed31a43318f478ba48917070c9c3b37'),
(380, 'DECIR ADIOS \"OYE NARRADOR\" (with Cuco)', '03:48:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/c3aa239ab3a538e75f0f2ee403ac1213935c593c?cid=eed31a43318f478ba48917070c9c3b37'),
(381, 'MI HOGAR (with maye)', '02:55:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/850dfe141b25d0e50e04c3bc09d58fd02329a729?cid=eed31a43318f478ba48917070c9c3b37'),
(382, 'AMIGOS', '03:34:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/f0661d10cf403ffb98243b2d3eb9fc842119afad?cid=eed31a43318f478ba48917070c9c3b37'),
(383, 'HOUSE OF LUX', '02:20:00', '2Tglaf8nvDzwSQnpSrjLHP', '5pAgLx8XeBoItzjT81csbJ', 'https://p.scdn.co/mp3-preview/fcdfbc1c45ba85de82ef96dd744dc126dee12976?cid=eed31a43318f478ba48917070c9c3b37'),
(384, 'Bandsville', '01:53:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/cab8ddbe9677cc40da3b36c5f42df612e8ddc386?cid=eed31a43318f478ba48917070c9c3b37'),
(385, 'Justin Bieber Wrist', '02:43:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/8be8ca28559b68a13b80b061e50a0a68fd01b2d4?cid=eed31a43318f478ba48917070c9c3b37'),
(386, 'Go Bananas', '02:11:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/e8ffa19e8e1b001fd24505e05cfad07bd1fcee3c?cid=eed31a43318f478ba48917070c9c3b37'),
(387, 'Off The Goop', '02:40:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/70db2eca0da0516767045dbc7abde86ef232dc8d?cid=eed31a43318f478ba48917070c9c3b37'),
(388, 'Gasoline, Pt. 2', '03:18:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/8911f556488635a0bd9fbaeaefb1353303883252?cid=eed31a43318f478ba48917070c9c3b37'),
(389, 'Welcome to Chilis', '02:37:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/0e8009c95daa1dcc22f984d4c77dfc130707f2a1?cid=eed31a43318f478ba48917070c9c3b37'),
(390, 'Cadbury Creme', '03:07:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/adc6c221da4c7fe13df706e420dae2003997d0a9?cid=eed31a43318f478ba48917070c9c3b37'),
(391, 'iunno', '02:37:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/656586aca04334b64940712bfaa4161ae432eaff?cid=eed31a43318f478ba48917070c9c3b37'),
(392, 'Myrtle Beach Summer 1974', '02:08:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/25f64dfd2f3e8504b01e0e0256f96d5b93d0b35d?cid=eed31a43318f478ba48917070c9c3b37'),
(393, 'shining on my ex', '02:21:00', '2Tglaf8nvDzwSQnpSrjLHP', '1oxxysQmylUXuxzSdHlqUc', 'https://p.scdn.co/mp3-preview/5ab204fcf9a08415b12fb5458e867a52df8c096e?cid=eed31a43318f478ba48917070c9c3b37'),
(394, 'Issues', '02:20:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(395, 'Baby Momma', '02:43:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(396, 'Toxic', '03:33:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(397, 'Maniac', '02:46:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(398, 'How To Rob A Rapper (feat. Mozzy & D3szn)', '03:32:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(399, 'I Dance (feat. Duki & Cuco)', '04:05:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(400, 'Scared Money (feat. J. Cole & Moneybagg Yo)', '03:24:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(401, 'Go Dumb (feat. H.E.R.)', '04:24:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(402, 'No Love', '03:26:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(403, 'Sober (feat. Roddy Ricch & Post Malone)', '04:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(404, 'Drink To This', '03:38:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(405, 'No Weapon (feat. Nas)', '04:15:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(406, 'Alone', '02:38:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(407, 'Killa Cali', '03:35:00', '2Tglaf8nvDzwSQnpSrjLHP', '4fu0jN1IzoaXgzCfqdjOjJ', 'nulo'),
(408, 'Cruisin\' in The MIA', '02:31:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/897501ba0ba7f6feae972661d7098a1635ba4ddd?cid=eed31a43318f478ba48917070c9c3b37'),
(409, 'I\'m Alive', '03:12:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/553c82fd82520b8ef60966cb1d7aadedbc9c9c95?cid=eed31a43318f478ba48917070c9c3b37'),
(410, 'FIVE SIX', '02:41:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/759208c918a5aa05c956477d6b75ec7839d3b577?cid=eed31a43318f478ba48917070c9c3b37'),
(411, '95', '02:48:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/99764794fcafbeddb901be42c3fe5044c5aab3ee?cid=eed31a43318f478ba48917070c9c3b37'),
(412, 'Superman Is Dead', '03:16:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/d117b7f0d3c9d9719a81d3938a5340a8a557ec29?cid=eed31a43318f478ba48917070c9c3b37'),
(413, 'Mood Swing Misery', '02:34:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/d30c376ebd0bc12d00d7e7e30bc5eb4efc06341e?cid=eed31a43318f478ba48917070c9c3b37'),
(414, 'Settle Down', '04:19:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/389be06bbd7bc22ad5141e00effcdaeffbfc79ac?cid=eed31a43318f478ba48917070c9c3b37'),
(415, 'Florida Thang', '02:45:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/994d9cba08d66ae375c22e1a51e69455893cc34c?cid=eed31a43318f478ba48917070c9c3b37'),
(416, 'Talk to Me Before I Die', '02:30:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/a52553d01a6640a70f59c0dbdab7788511c13653?cid=eed31a43318f478ba48917070c9c3b37'),
(417, 'SUCK MY DICK', '00:38:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/6eae416a146a35d3aefb54f280819c74cc537c11?cid=eed31a43318f478ba48917070c9c3b37'),
(418, 'Run It Down', '03:10:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/e1d66c699b69e02b36982c473454d3f797d48742?cid=eed31a43318f478ba48917070c9c3b37'),
(419, 'BULLETPROOF SHOWER CAP', '01:54:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/2372381c696c5717c96d50469ee837b69bcfb634?cid=eed31a43318f478ba48917070c9c3b37'),
(420, 'Cyanide', '02:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/36da3cc62bdb885950dcb790db6676b83ee9341d?cid=eed31a43318f478ba48917070c9c3b37'),
(421, 'Six Speed', '01:51:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/cdaf7db030314f089832f4921cfd8822016a92a2?cid=eed31a43318f478ba48917070c9c3b37'),
(422, 'When Will I See You?', '02:01:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/97d593a0e3e5d9cb1c182230b75da71c0ab6b204?cid=eed31a43318f478ba48917070c9c3b37'),
(423, 'throw away garbage bullshit', '01:30:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/2e2f58f74232cc43edec841440e7aab483430060?cid=eed31a43318f478ba48917070c9c3b37'),
(424, 'whatever mane', '01:52:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/2153a86efcf538083af3a5a3503972ca405721b6?cid=eed31a43318f478ba48917070c9c3b37'),
(425, '50 Reasons Why', '02:34:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/7fcae514226d197f107fd1ebfc617d613bb1d4d3?cid=eed31a43318f478ba48917070c9c3b37'),
(426, 'life? ... lol', '07:12:00', '2Tglaf8nvDzwSQnpSrjLHP', '0NE2xFN8Kw4mzQiDND5b1F', 'https://p.scdn.co/mp3-preview/32b0d2e1be2fb0c47325d32987d635c97d3f714f?cid=eed31a43318f478ba48917070c9c3b37'),
(427, 'Nasty (feat. Jason Richardson)', '04:40:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/cb98cdfceb7df722b705b8603cda0a764a7017ca?cid=eed31a43318f478ba48917070c9c3b37'),
(428, 'O.D.', '03:22:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/1965bd329ff49b2c30416723f23e1a27ff2fc288?cid=eed31a43318f478ba48917070c9c3b37'),
(429, 'Death Note (feat. Ichika)', '03:40:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/25a76c87525319c96b9d742c676e38e1245a2fb7?cid=eed31a43318f478ba48917070c9c3b37'),
(430, 'Bad', '03:55:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/009da70d5570b2ee65378526125ca9322032e565?cid=eed31a43318f478ba48917070c9c3b37'),
(431, 'Drown (feat. Mateus Asato)', '03:54:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/b04dfce5898a2db828b95355ee9a337c91401a77?cid=eed31a43318f478ba48917070c9c3b37'),
(432, 'Saucy', '03:04:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/e73ebcad314f71058b363b806039d15c6c3093b7?cid=eed31a43318f478ba48917070c9c3b37'),
(433, 'Yas (feat. Mario Camarena and Erick Hansel)', '03:22:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/10d5cdb5183472bcb1ec19867e491d4a09eb5649?cid=eed31a43318f478ba48917070c9c3b37'),
(434, 'So Strange (feat. Cuco)', '04:00:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/f7d9983400b87e57c661018c53fd028341120d64?cid=eed31a43318f478ba48917070c9c3b37'),
(435, 'Rich Kids (feat. Yvette Young)', '03:21:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/b1e3be1b92a3680ba64c1348020ca7d0774d4ffa?cid=eed31a43318f478ba48917070c9c3b37'),
(436, 'G.O.A.T.', '03:35:00', '2Tglaf8nvDzwSQnpSrjLHP', '7GhytR6ZMWetf1jxAzITtG', 'https://p.scdn.co/mp3-preview/822c147e288b4850ce0303f9fd851510a277aa31?cid=eed31a43318f478ba48917070c9c3b37'),
(437, 'Pena', '03:37:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/ac9a7a4234d9d981acfc7856c6e89aeb9d3977cc?cid=eed31a43318f478ba48917070c9c3b37'),
(438, 'Discreción', '04:59:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/0cd4c7fc605928d989536ae919d12301ba239e05?cid=eed31a43318f478ba48917070c9c3b37'),
(439, 'Escarlata', '04:51:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/626fbd44cf17655ef7a968670cccdd988ccdde3a?cid=eed31a43318f478ba48917070c9c3b37'),
(440, 'DameLove (feat. Cuco)', '03:46:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/dda6ea4a8a825ddf1b494fe8040b9bbb69a846c4?cid=eed31a43318f478ba48917070c9c3b37'),
(441, 'Ella Tú y Yo', '03:27:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/4591f45d4be720a4a14f2d3502365a9adb166cd7?cid=eed31a43318f478ba48917070c9c3b37'),
(442, 'fuckhim (feat. Ximena Sariñana)', '03:32:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/f9af5e6ccd6ae71baf28a1f10dae7093fad754c6?cid=eed31a43318f478ba48917070c9c3b37'),
(443, 'Ruleta', '03:00:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/98c0169656c74430cd430699b5db84dfd48e6d32?cid=eed31a43318f478ba48917070c9c3b37'),
(444, 'Morena Mía', '04:20:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/82e78d251577d3126c3288ed1174a22baec7cddb?cid=eed31a43318f478ba48917070c9c3b37'),
(445, 'chachachá (feat. Naji)', '03:55:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/3142093749194cb217a420f012b2633028c59e00?cid=eed31a43318f478ba48917070c9c3b37'),
(446, 'Amor Salvaje', '04:33:00', '2Tglaf8nvDzwSQnpSrjLHP', '1pmuUGKQdl3yIAIMZucjKu', 'https://p.scdn.co/mp3-preview/8d60c197b219ed4c1d87d367c7970c0621ec8023?cid=eed31a43318f478ba48917070c9c3b37'),
(447, 'I Feel Like I\'m Drowning', '03:05:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(448, 'Earned It (Fifty Shades Of Grey) - From \"Fifty Shades Of Grey\" Soundtrack', '04:12:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(449, 'Creepin\'', '03:41:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(450, 'Fall In Love Alone', '03:25:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(451, 'Big Budz No Dust', '03:50:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(452, 'Unholy', '02:36:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(453, 'The One', '02:25:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(454, 'Honest', '03:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(455, 'OT', '03:04:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(456, 'Coming Back For You - From \"Black Panther: Wakanda Forever - Music From and Inspired By\"/Soundtrack Version', '02:56:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(457, 'Firebabe', '03:40:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(458, 'Honey', '02:21:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(459, 'Only You', '03:15:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(460, 'Shut Up and Listen - Sped Up Version', '03:43:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(461, 'Cardboard Box', '02:41:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(462, 'Love It', '02:52:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(463, 'One and Only - AseMix', '04:02:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(464, 'Call Out My Name', '03:48:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(465, 'EX BOYFRIEND', '02:14:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(466, 'Everything You Touch Is Gold (Epekdrezzsan)', '03:18:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(467, 'All Masks', '04:30:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(468, 'Hate to see it', '02:53:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(469, 'VIBE CHECK', '02:40:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(470, 'Handle Me Gently', '03:01:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(471, 'Functional Kind Of Love', '02:55:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(472, 'Cartier', '03:16:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(473, 'Access Denied', '03:45:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(474, 'What\'s Ur Sign?', '02:41:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(475, 'Ridin For My Love', '02:12:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(476, 'Deserve It', '03:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(477, 'Stay The Same', '02:39:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(478, 'Better Believe', '03:26:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(479, 'Baggage', '03:27:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(480, 'Summer', '02:15:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(481, 'Take My Breath - Single Version', '03:40:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(482, 'Show Me Your Soul', '04:00:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(483, 'Ur Best Friend', '03:02:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(484, 'NEON PEACH', '03:12:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(485, '2 seater', '03:04:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(486, 'Unbelievable', '03:49:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(487, 'FRAUD', '03:00:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(488, 'Sober', '04:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(489, 'The Mood', '04:15:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(490, 'Pressure', '02:38:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(491, 'You Got The Body', '02:56:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(492, 'Rabbit Hole', '02:38:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(493, 'Blessed', '03:11:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(494, 'Lost Souls', '03:21:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(495, 'Stuck In The Middle', '02:46:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(496, 'oui', '03:58:00', '2Tglaf8nvDzwSQnpSrjLHP', '6JeKwat4aFIDH1j6sFmKlC', 'nulo'),
(497, 'I Dance (with Duki, feat. Cuco)', '04:05:00', '2Tglaf8nvDzwSQnpSrjLHP', '2lH1BhcT3LoYMSU881XX9W', 'nulo'),
(498, '100pre', '01:52:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/8435a021f873125795917f219915cd64d48f60fa?cid=eed31a43318f478ba48917070c9c3b37'),
(499, 'Hace Mucho Tiempo', '04:16:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/4460bd525aa27857c26eebbcd1d13272f12af159?cid=eed31a43318f478ba48917070c9c3b37'),
(500, 'Miel', '03:37:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/e6233af3bde65477dd286d993e6bd9be27354c5d?cid=eed31a43318f478ba48917070c9c3b37'),
(501, 'Solo Tu', '04:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/01c3b56af88609ee399ecc2adc8416fd5c420897?cid=eed31a43318f478ba48917070c9c3b37'),
(502, 'A Mi', '02:51:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/15a71bb779492f67b14b82a80fdb584bc802be91?cid=eed31a43318f478ba48917070c9c3b37'),
(503, 'Oye Mi Amor', '03:01:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/98907c675ad5b7351119dd137193598e2876a292?cid=eed31a43318f478ba48917070c9c3b37'),
(504, 'Tú Me Llevas a Un Espacio', '03:13:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/ed6555dbb069e5f11890dd0a51be6a0f980309a8?cid=eed31a43318f478ba48917070c9c3b37'),
(505, 'Un Poquito Más', '02:59:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/db086cdc55d2db6f3583147327506d8a91433f5b?cid=eed31a43318f478ba48917070c9c3b37'),
(506, 'Tu Labial', '03:47:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/b290a06acf96485101a682c29c53152d329f5179?cid=eed31a43318f478ba48917070c9c3b37'),
(507, 'Ahora Bailas Con Él', '04:20:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/7c66450d59e2b3e274413ac96a71f20df68ff9de?cid=eed31a43318f478ba48917070c9c3b37'),
(508, 'No Eres Clara', '03:23:00', '2Tglaf8nvDzwSQnpSrjLHP', '0iS5WqBx0TeI4duoxqk57F', 'https://p.scdn.co/mp3-preview/c9ec08a4307727fd1751c21c0c558c6163a8226c?cid=eed31a43318f478ba48917070c9c3b37'),
(509, 'One in a Million', '03:57:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/eb7e1839c6fc80fe018bc41edc080b71d09c3ffd?cid=eed31a43318f478ba48917070c9c3b37'),
(510, 'Rey', '03:24:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/c4a9b206772e7161d3cbc89a94106b3318428d44?cid=eed31a43318f478ba48917070c9c3b37'),
(511, 'Fever', '02:54:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/ddac14c95889aedc256454e9242256c9ac5642d6?cid=eed31a43318f478ba48917070c9c3b37'),
(512, 'Memory(Trees)', '04:16:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/0ad743c78e81aca7309a691199b613aa5132fa0d?cid=eed31a43318f478ba48917070c9c3b37'),
(513, 'June', '02:39:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/4a2a6a4f0585bce0b8309cf00249c8ec3553e999?cid=eed31a43318f478ba48917070c9c3b37'),
(514, 'Reach', '02:26:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/0b4cb999938bb5e442a3f7ae50370a7bb4540a34?cid=eed31a43318f478ba48917070c9c3b37'),
(515, 'Nature', '03:22:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/a1737c3167235f52795a86ebdc37744ce3b97640?cid=eed31a43318f478ba48917070c9c3b37'),
(516, 'Take 3', '03:56:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/43ede8db44e878f0334f87adce644ad828ef2c5f?cid=eed31a43318f478ba48917070c9c3b37'),
(517, 'O', '02:16:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/def6ee9d9f539428217d9f24bfe0710f894d6898?cid=eed31a43318f478ba48917070c9c3b37'),
(518, 'Air', '04:08:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/ec3b72d6274c7f079323a1b582ac7bf673c1e8d6?cid=eed31a43318f478ba48917070c9c3b37'),
(519, 'Mystery', '03:51:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/69f89602f1aab14b612e83af2d76973ab6360662?cid=eed31a43318f478ba48917070c9c3b37'),
(520, 'Bones', '03:17:00', '6AQEfqGPSxZX0nJVonYxi6', '1uDlp3Xk6ZlkIocQNaxcCF', 'https://p.scdn.co/mp3-preview/f1377502dfe7140a4a72cf63974081bbfd3dc8a8?cid=eed31a43318f478ba48917070c9c3b37'),
(521, 'Six Am - Live At The Fonda, Los Angeles, 2019', '02:06:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/4d8b71ac9a31d3c9c7372b6cf933a0f38c0369ea?cid=eed31a43318f478ba48917070c9c3b37'),
(522, '88 - Live At The Fonda, Los Angeles, 2019', '04:08:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/8d5b814c738262091de857950c03e5fd9fe39d91?cid=eed31a43318f478ba48917070c9c3b37'),
(523, 'Jerry - Live At The Fonda, Los Angeles, 2019', '03:32:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/27a49510e84d44496dce93fc14d9b2914fafb975?cid=eed31a43318f478ba48917070c9c3b37'),
(524, '2031 - Live At The Fonda, Los Angeles, 2019', '02:38:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/da46f7626147b6beb5d02081223c57b4c6f01a32?cid=eed31a43318f478ba48917070c9c3b37'),
(525, 'Conversations - Live At The Fonda, Los Angeles, 2019', '06:05:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/ef65a2161a82e8798b94189d649cb650ec8a1d9b?cid=eed31a43318f478ba48917070c9c3b37'),
(526, 'Bower - Live At The Fonda, Los Angeles, 2019', '02:59:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/b35b81d887b941e11ad3d12948469299fed70a73?cid=eed31a43318f478ba48917070c9c3b37'),
(527, 'American Spirits - Live At The Fonda, Los Angeles, 2019', '02:46:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/b16485738b7d037aa41f9afa18b9de67aee20116?cid=eed31a43318f478ba48917070c9c3b37'),
(528, 'Jam - Live At The Fonda, Los Angeles, 2019', '01:09:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/6e5637762514161d8dcf7a4feb7cc5c4c1e9e038?cid=eed31a43318f478ba48917070c9c3b37'),
(529, 'Oof - Live At The Fonda, Los Angeles, 2019', '03:44:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/427dd0d23f8baca7de505e446145de9589beb08d?cid=eed31a43318f478ba48917070c9c3b37'),
(530, 'Diamond Eyes - Live At The Fonda, Los Angeles, 2019', '05:07:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/ef0fd9296760579bfe3550657a64f7b0a8bfd816?cid=eed31a43318f478ba48917070c9c3b37'),
(531, 'Buffalo - Live At The Fonda, Los Angeles, 2019', '04:48:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/4a0cab1aea2d680446f2ecc1adf6add46dfa57a7?cid=eed31a43318f478ba48917070c9c3b37'),
(532, 'Song 3 - Live At The Fonda, Los Angeles, 2019', '03:14:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/e5b8ad4dee2e5104cd7a0398bb3a276249dda8cf?cid=eed31a43318f478ba48917070c9c3b37'),
(533, '1 4 2 - Live At The Fonda, Los Angeles, 2019', '05:30:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/56d66326ae9a72c513959837dc9ccbac10c93b05?cid=eed31a43318f478ba48917070c9c3b37'),
(534, 'Eclipse - Live At The Fonda, Los Angeles, 2019', '05:07:00', '6AQEfqGPSxZX0nJVonYxi6', '3GMRdBDrbJgmEKNui1vlMh', 'https://p.scdn.co/mp3-preview/a4370a21cff2f11747e90907eb069eff6bee1c69?cid=eed31a43318f478ba48917070c9c3b37'),
(535, 'Dream', '01:42:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/a4172f4071a8fd9228f47e276f4a3c21aae6f81c?cid=eed31a43318f478ba48917070c9c3b37'),
(536, 'Eclipse', '03:04:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/9ffa999911384dbac258cc1f1fad33b7d49f0b80?cid=eed31a43318f478ba48917070c9c3b37'),
(537, 'Twnsion', '02:17:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/c7cc4a25aad7187befbfcc3ca45df9686f1228ed?cid=eed31a43318f478ba48917070c9c3b37'),
(538, 'I\'m Aware', '02:15:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/aad13ddcb40919e35a796ce7fda62ea95bf57b98?cid=eed31a43318f478ba48917070c9c3b37'),
(539, 'Jerry', '03:29:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/ca1c830792220876f0b7d7dcb5a7870c6b07f123?cid=eed31a43318f478ba48917070c9c3b37'),
(540, 'Emphasis', '02:04:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/63e9bacf3257c88f10977591d3aa7d6caf7151ec?cid=eed31a43318f478ba48917070c9c3b37'),
(541, 'Discipline', '03:41:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/91de5ae35f70721ad63ed195d3cba68bb67bd65e?cid=eed31a43318f478ba48917070c9c3b37'),
(542, 'Buffalo', '03:43:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/b363397efb3373949b2b349d5bb6a76544164ba4?cid=eed31a43318f478ba48917070c9c3b37'),
(543, 'Forest', '03:52:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/52ce01c413dc2164549af2e5d1f5e277fe3c9f6d?cid=eed31a43318f478ba48917070c9c3b37'),
(544, 'Møøn', '02:28:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/00ef8266972c250afb924d6afdb8606a13b54882?cid=eed31a43318f478ba48917070c9c3b37'),
(545, 'People Free', '03:19:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/463e370142ba192bd6878f9523bae9d941e6a514?cid=eed31a43318f478ba48917070c9c3b37'),
(546, 'Drowning', '01:56:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/6fbd9d115c497351e39d8b2547968be67fff07d4?cid=eed31a43318f478ba48917070c9c3b37'),
(547, 'Buffalo Reprise', '02:03:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/7785135e1c623c011c7f99eac79256b3d86f4f29?cid=eed31a43318f478ba48917070c9c3b37'),
(548, 'Bower', '02:06:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/bcd16b017845b2e851f603494fcf03b6c3334871?cid=eed31a43318f478ba48917070c9c3b37'),
(549, 'Nice One', '03:33:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/049dcfa4fc1b5b66f067945a108448e4b4c21506?cid=eed31a43318f478ba48917070c9c3b37'),
(550, 'Song 3', '03:27:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/0ba2481c69534bc7f88d18a2e74699604a16695b?cid=eed31a43318f478ba48917070c9c3b37'),
(551, 'Conversations', '05:57:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/6f343d0618b25571fbd7a2eb867e466716e7133b?cid=eed31a43318f478ba48917070c9c3b37'),
(552, 'Balto', '03:56:00', '6AQEfqGPSxZX0nJVonYxi6', '7cDxqoU5OdTX9xWrBrWOpq', 'https://p.scdn.co/mp3-preview/af9033b2abeede1e1b55a7d537b1a87de4b4e3c5?cid=eed31a43318f478ba48917070c9c3b37'),
(553, 'Intro', '00:18:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/9dc5f6796faa64e8b7d7d9a531f8130b4e91b4b3?cid=eed31a43318f478ba48917070c9c3b37'),
(554, 'Womack', '01:55:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/9e47bf0f8ffb6f4e953812ee5f2aa84602100773?cid=eed31a43318f478ba48917070c9c3b37'),
(555, '88', '03:53:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/bb8a9bfd410543e048afbeabc443750887e979e9?cid=eed31a43318f478ba48917070c9c3b37'),
(556, 'Rosary', '03:24:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/c2c1cc3b5fe6d35211f3a2165344f2a73b5f6ec2?cid=eed31a43318f478ba48917070c9c3b37'),
(557, 'I Almost Lost This', '02:41:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/da713ecde97f6b2182c78c51f5c7895e762acbc8?cid=eed31a43318f478ba48917070c9c3b37'),
(558, 'Diamond Eyes', '05:16:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/58542c5b80e94235a4d11633dc5968ad7c3ab684?cid=eed31a43318f478ba48917070c9c3b37'),
(559, 'Lethologica', '00:22:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/9d9e7cf6b5b24d8bb3af77c3b5fd8d2fd6f7ccb4?cid=eed31a43318f478ba48917070c9c3b37'),
(560, 'Wild', '03:42:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/d011f0e9b9e3046e3fee2ba0a16e403332f047d7?cid=eed31a43318f478ba48917070c9c3b37'),
(561, 'Interlude', '00:35:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/55a49a04a803add82a2678e533010a41a55e8557?cid=eed31a43318f478ba48917070c9c3b37'),
(562, 'Interstellar Me', '03:13:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/89dd3a952a936f5d8a62e9f3ac338becf2213a13?cid=eed31a43318f478ba48917070c9c3b37'),
(563, 'Ccbw', '03:46:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/08da7c674fd2e56d040c3abd87dc6ef15ac31e8b?cid=eed31a43318f478ba48917070c9c3b37'),
(564, '1 4 2', '05:05:00', '6AQEfqGPSxZX0nJVonYxi6', '5J9YmwdAHSk1NG0scmQ19b', 'https://p.scdn.co/mp3-preview/ab51e35e98c3c408a8be7df731c0ef895a1e8ad3?cid=eed31a43318f478ba48917070c9c3b37'),
(565, 'Change Your Mind', '02:10:00', '6AQEfqGPSxZX0nJVonYxi6', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://p.scdn.co/mp3-preview/de37f7881379700ebbab1c09ff94aeb72bfb8d21?cid=eed31a43318f478ba48917070c9c3b37'),
(566, 'American Spirits', '02:50:00', '6AQEfqGPSxZX0nJVonYxi6', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://p.scdn.co/mp3-preview/b826afa1050c787c52b60d8fafb1e277dba8e6a7?cid=eed31a43318f478ba48917070c9c3b37'),
(567, 'Happy 21', '05:21:00', '6AQEfqGPSxZX0nJVonYxi6', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://p.scdn.co/mp3-preview/bac12c02c7249951378ef0afcc4fc213f463fdb9?cid=eed31a43318f478ba48917070c9c3b37'),
(568, 'Feel Better', '04:12:00', '6AQEfqGPSxZX0nJVonYxi6', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://p.scdn.co/mp3-preview/2c2f8cb69d3c2f71baa506d59d314ca99e40948e?cid=eed31a43318f478ba48917070c9c3b37'),
(569, 'King\'s Cup', '04:27:00', '6AQEfqGPSxZX0nJVonYxi6', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://p.scdn.co/mp3-preview/4f7c8de761386bef24222867d1028d35d4501bdc?cid=eed31a43318f478ba48917070c9c3b37'),
(570, 'R.Dkrd', '05:24:00', '6AQEfqGPSxZX0nJVonYxi6', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://p.scdn.co/mp3-preview/c5785d183fdb518e1a581704c83f15400bb4b104?cid=eed31a43318f478ba48917070c9c3b37'),
(571, 'Solar', '04:20:00', '6AQEfqGPSxZX0nJVonYxi6', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://p.scdn.co/mp3-preview/68c3157c685eba885cf77b0404bcf67684c7607e?cid=eed31a43318f478ba48917070c9c3b37'),
(572, 'Pseudo', '06:23:00', '6AQEfqGPSxZX0nJVonYxi6', '5Y8n0zLN7AaqK1hxxlgT1u', 'https://p.scdn.co/mp3-preview/cbf02599102a2025f02becbc85aaaa696d5521e2?cid=eed31a43318f478ba48917070c9c3b37'),
(573, 'NOS SOLTAMOS chiliado', '03:42:00', '6AQEfqGPSxZX0nJVonYxi6', '3Mmkzg9JwpsW5tMFXdR9TU', 'https://p.scdn.co/mp3-preview/8b5f8f16544c7d0ebc31829d31fcbfb5dc314835?cid=eed31a43318f478ba48917070c9c3b37'),
(574, 'Nos Soltamos', '03:34:00', '6AQEfqGPSxZX0nJVonYxi6', '3Mmkzg9JwpsW5tMFXdR9TU', 'https://p.scdn.co/mp3-preview/f66454342acdbd70c7afee23d3ee6c3c9c0a0868?cid=eed31a43318f478ba48917070c9c3b37'),
(575, 'Jerry - Audiotree Live Version', '03:30:00', '6AQEfqGPSxZX0nJVonYxi6', '5MbWXGwrwGn8rQWKlIn98B', 'https://p.scdn.co/mp3-preview/ad0bd1745167f4f523314e3eb2ea4913941cfdeb?cid=eed31a43318f478ba48917070c9c3b37'),
(576, 'Take 3 - Audiotree Live Version', '04:08:00', '6AQEfqGPSxZX0nJVonYxi6', '5MbWXGwrwGn8rQWKlIn98B', 'https://p.scdn.co/mp3-preview/5a94654dc29e8a900efdc520f467d72fd62c24c2?cid=eed31a43318f478ba48917070c9c3b37'),
(577, 'One in a Million - Audiotree Live Version', '03:50:00', '6AQEfqGPSxZX0nJVonYxi6', '5MbWXGwrwGn8rQWKlIn98B', 'https://p.scdn.co/mp3-preview/086686db87868bae2d04c59233f7742bbf9c4de0?cid=eed31a43318f478ba48917070c9c3b37'),
(578, 'Rose - Audiotree Live Version', '03:42:00', '6AQEfqGPSxZX0nJVonYxi6', '5MbWXGwrwGn8rQWKlIn98B', 'https://p.scdn.co/mp3-preview/ac7069f56f9b9bb78bc39a33b8f65362714b2cd1?cid=eed31a43318f478ba48917070c9c3b37'),
(579, 'Diamond Eyes - Audiotree Live Version', '05:15:00', '6AQEfqGPSxZX0nJVonYxi6', '5MbWXGwrwGn8rQWKlIn98B', 'https://p.scdn.co/mp3-preview/138afcf6473a2392c61a6410acff1823498f67f8?cid=eed31a43318f478ba48917070c9c3b37'),
(580, 'Baby', '03:40:00', '6AQEfqGPSxZX0nJVonYxi6', '1bSMgGLERBaeOJgsgt3ldN', 'https://p.scdn.co/mp3-preview/d5a80e2bbbe159de41fda67dfaaf5323c59ead43?cid=eed31a43318f478ba48917070c9c3b37'),
(581, 'Mystery', '03:51:00', '6AQEfqGPSxZX0nJVonYxi6', '24z3YrkF0VQclLJeYx43m3', 'https://p.scdn.co/mp3-preview/69f89602f1aab14b612e83af2d76973ab6360662?cid=eed31a43318f478ba48917070c9c3b37'),
(582, 'June', '02:39:00', '6AQEfqGPSxZX0nJVonYxi6', '16XEmvxPCeTF6T0d6eIUuo', 'https://p.scdn.co/mp3-preview/4a2a6a4f0585bce0b8309cf00249c8ec3553e999?cid=eed31a43318f478ba48917070c9c3b37'),
(583, 'Take 3', '03:56:00', '6AQEfqGPSxZX0nJVonYxi6', '2Mm5SuB6IsFPYE0O9fVrV4', 'https://p.scdn.co/mp3-preview/43ede8db44e878f0334f87adce644ad828ef2c5f?cid=eed31a43318f478ba48917070c9c3b37'),
(584, 'Estrella', '03:07:00', '6AQEfqGPSxZX0nJVonYxi6', '4nCo8vzlqvAYocAUktBIA1', 'https://p.scdn.co/mp3-preview/58fbfd0450b3d3b616640035df514f6b5e4f6d1e?cid=eed31a43318f478ba48917070c9c3b37'),
(585, 'Schemin', '02:08:00', '6AQEfqGPSxZX0nJVonYxi6', '4nCo8vzlqvAYocAUktBIA1', 'https://p.scdn.co/mp3-preview/b5c227fa1a9df4bf3e32cb35bc14244fadaadbc9?cid=eed31a43318f478ba48917070c9c3b37'),
(586, 'Poligamia', '03:17:00', '6AQEfqGPSxZX0nJVonYxi6', '4nCo8vzlqvAYocAUktBIA1', 'https://p.scdn.co/mp3-preview/a4c24817ab27f3eb425b5232d3a798534a8121e7?cid=eed31a43318f478ba48917070c9c3b37'),
(587, 'Cold Feet', '03:29:00', '6AQEfqGPSxZX0nJVonYxi6', '4nCo8vzlqvAYocAUktBIA1', 'https://p.scdn.co/mp3-preview/469c5d3708b607606aed4feadb2a2a6cab1ae3e2?cid=eed31a43318f478ba48917070c9c3b37'),
(588, '50', '03:50:00', '6AQEfqGPSxZX0nJVonYxi6', '4nCo8vzlqvAYocAUktBIA1', 'https://p.scdn.co/mp3-preview/844ab3a26d6f2e05216b288abddb8d3ab3d6cde3?cid=eed31a43318f478ba48917070c9c3b37'),
(589, 'The Beginning', '04:16:00', '6AQEfqGPSxZX0nJVonYxi6', '4nCo8vzlqvAYocAUktBIA1', 'https://p.scdn.co/mp3-preview/c699e4ea206090099cef6ad5d01ea2b178fe275c?cid=eed31a43318f478ba48917070c9c3b37'),
(590, 'Schemin', '02:08:00', '6AQEfqGPSxZX0nJVonYxi6', '0AzM46kZh1F709eDXYbaKr', 'https://p.scdn.co/mp3-preview/758b91e925079bf6dcb7604a78ef98a043274c24?cid=eed31a43318f478ba48917070c9c3b37'),
(591, 'Rose', '03:46:00', '6AQEfqGPSxZX0nJVonYxi6', '5I8dVSyx2Wqwa2qVwNVbxr', 'https://p.scdn.co/mp3-preview/6b1fb7ddc7cfb5a8994f3f9bc903e22fe014d668?cid=eed31a43318f478ba48917070c9c3b37'),
(592, 'Why\'d You Have To Act Like That Though', '01:51:00', '6AQEfqGPSxZX0nJVonYxi6', '4XcsUPOvcTDNWRVUSN31W8', 'https://p.scdn.co/mp3-preview/57939cd75794f14c05aee12ba3883e8f3147486a?cid=eed31a43318f478ba48917070c9c3b37'),
(593, 'Oof', '03:57:00', '6AQEfqGPSxZX0nJVonYxi6', '4XcsUPOvcTDNWRVUSN31W8', 'https://p.scdn.co/mp3-preview/f4999fa8851f8f6db3d7b358a5eb7bdef0a212fc?cid=eed31a43318f478ba48917070c9c3b37'),
(594, 'Six AM', '02:05:00', '6AQEfqGPSxZX0nJVonYxi6', '4XcsUPOvcTDNWRVUSN31W8', 'https://p.scdn.co/mp3-preview/e711cc8294b65cedcca3a7c50cd1eb17b3c9f661?cid=eed31a43318f478ba48917070c9c3b37'),
(595, 'Mushroom', '02:46:00', '6AQEfqGPSxZX0nJVonYxi6', '4XcsUPOvcTDNWRVUSN31W8', 'https://p.scdn.co/mp3-preview/9ba4e52cc4ee73303c39c11308125c9541d6ef2c?cid=eed31a43318f478ba48917070c9c3b37'),
(596, 'Mate', '02:00:00', '6AQEfqGPSxZX0nJVonYxi6', '4XcsUPOvcTDNWRVUSN31W8', 'https://p.scdn.co/mp3-preview/6e3431f243e5819a149cbeb70de881aaf435eb55?cid=eed31a43318f478ba48917070c9c3b37'),
(597, 'Mushroom', '02:46:00', '6AQEfqGPSxZX0nJVonYxi6', '3yyvB8WRZObDPj2bPqpLNV', 'https://p.scdn.co/mp3-preview/9ba4e52cc4ee73303c39c11308125c9541d6ef2c?cid=eed31a43318f478ba48917070c9c3b37'),
(598, 'Why\'d You Have To Act Like That Though', '01:51:00', '6AQEfqGPSxZX0nJVonYxi6', '0a2N9tB7ppqpPPmomBlwW0', 'https://p.scdn.co/mp3-preview/57939cd75794f14c05aee12ba3883e8f3147486a?cid=eed31a43318f478ba48917070c9c3b37'),
(599, 'Lullaby', '04:35:00', '6AQEfqGPSxZX0nJVonYxi6', '4ELFxK0xE6HlhqnYvA7h2A', 'https://p.scdn.co/mp3-preview/c45dfe828bebfcd1578c10b7c942718820b83bc5?cid=eed31a43318f478ba48917070c9c3b37'),
(600, 'Autophobia', '01:36:00', '6AQEfqGPSxZX0nJVonYxi6', '4J6RztGqh368GSdkI3U5Vk', 'https://p.scdn.co/mp3-preview/3e80637dee543d3b638316ad846279a9fa6d9d91?cid=eed31a43318f478ba48917070c9c3b37'),
(601, '2031', '02:39:00', '6AQEfqGPSxZX0nJVonYxi6', '4J6RztGqh368GSdkI3U5Vk', 'https://p.scdn.co/mp3-preview/0fb66442c243fcbc40e882a9a93474f9d9e84a4d?cid=eed31a43318f478ba48917070c9c3b37'),
(602, 'Babbadook', '03:44:00', '6AQEfqGPSxZX0nJVonYxi6', '4J6RztGqh368GSdkI3U5Vk', 'https://p.scdn.co/mp3-preview/828abce4bc5c6a629fe4ad07ea8fdf4bcb5a0a0f?cid=eed31a43318f478ba48917070c9c3b37'),
(603, 'Fine', '02:56:00', '6AQEfqGPSxZX0nJVonYxi6', '4J6RztGqh368GSdkI3U5Vk', 'https://p.scdn.co/mp3-preview/d7a79c65ccdc1ab6b9b5619d71b568c40244f708?cid=eed31a43318f478ba48917070c9c3b37'),
(604, 'Untitled Two', '01:51:00', '6AQEfqGPSxZX0nJVonYxi6', '4J6RztGqh368GSdkI3U5Vk', 'https://p.scdn.co/mp3-preview/03b59e9922e1f54c90cd71c963846b3b7da69a4a?cid=eed31a43318f478ba48917070c9c3b37'),
(605, 'Second Best', '03:18:00', '6AQEfqGPSxZX0nJVonYxi6', '4J6RztGqh368GSdkI3U5Vk', 'https://p.scdn.co/mp3-preview/d313448881806a187f7bc92f4d52d64764505fed?cid=eed31a43318f478ba48917070c9c3b37'),
(606, 'Fine', '02:56:00', '6AQEfqGPSxZX0nJVonYxi6', '16nr19mQ4JKdxFZHSl1wn2', 'https://p.scdn.co/mp3-preview/d7a79c65ccdc1ab6b9b5619d71b568c40244f708?cid=eed31a43318f478ba48917070c9c3b37'),
(607, 'Eclipse', '03:04:00', '6AQEfqGPSxZX0nJVonYxi6', '5xWMIeyKYa6C76Da0NLacd', 'https://p.scdn.co/mp3-preview/9ffa999911384dbac258cc1f1fad33b7d49f0b80?cid=eed31a43318f478ba48917070c9c3b37'),
(608, 'Buffalo', '03:43:00', '6AQEfqGPSxZX0nJVonYxi6', '46B4tJKVhXA6YkWSC7EQzu', 'https://p.scdn.co/mp3-preview/b363397efb3373949b2b349d5bb6a76544164ba4?cid=eed31a43318f478ba48917070c9c3b37'),
(609, 'Bower', '02:06:00', '6AQEfqGPSxZX0nJVonYxi6', '1CRBRXbunImfdKOwd4x9k2', 'https://p.scdn.co/mp3-preview/bcd16b017845b2e851f603494fcf03b6c3334871?cid=eed31a43318f478ba48917070c9c3b37'),
(610, 'Song 3', '03:27:00', '6AQEfqGPSxZX0nJVonYxi6', '1RrmXP3wUKzUOh3Sbj1pet', 'https://p.scdn.co/mp3-preview/0ba2481c69534bc7f88d18a2e74699604a16695b?cid=eed31a43318f478ba48917070c9c3b37');
INSERT INTO `canciones` (`id`, `nombre`, `duracion`, `artista`, `album`, `previewUrl`) VALUES
(611, 'Blacklight', '05:27:00', '6AQEfqGPSxZX0nJVonYxi6', '59KY7AC0zez738mT9upShg', 'https://p.scdn.co/mp3-preview/d9ab1c912cabdfbec83e1620ea44ffb65929c0c1?cid=eed31a43318f478ba48917070c9c3b37'),
(612, 'Signals', '04:38:00', '6AQEfqGPSxZX0nJVonYxi6', '59KY7AC0zez738mT9upShg', 'https://p.scdn.co/mp3-preview/0b47abdcda50aa54cc8ca356983cffb5e1d6d814?cid=eed31a43318f478ba48917070c9c3b37'),
(613, 'Supra', '04:14:00', '6AQEfqGPSxZX0nJVonYxi6', '59KY7AC0zez738mT9upShg', 'https://p.scdn.co/mp3-preview/2f4c6338d8c725abed8757d1348caa6d7e9932ce?cid=eed31a43318f478ba48917070c9c3b37'),
(614, 'XO clubeteado', '02:34:00', '6AQEfqGPSxZX0nJVonYxi6', '4L9dCnZASsPEIhhBwItsho', 'https://p.scdn.co/mp3-preview/feabd616577b8566a8a054a8cbe22eb7f4bd5952?cid=eed31a43318f478ba48917070c9c3b37'),
(615, 'NOS SOLTAMOS chiliado', '03:42:00', '6AQEfqGPSxZX0nJVonYxi6', '4L9dCnZASsPEIhhBwItsho', 'https://p.scdn.co/mp3-preview/3ff026dd9bab225ca3a6d051a3199bd714ff6e5a?cid=eed31a43318f478ba48917070c9c3b37');

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
(1, 'Triste'),
(2, 'Feliz');

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
(1, 1, 1, 1),
(2, 1, 25, 3),
(3, 1, 4, 2);

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
(1, 'ninguno'),
(2, 'indie pop'),
(3, 'modern alternative pop'),
(4, 'indie pop'),
(5, 'modern alternative pop'),
(6, 'bedroom pop'),
(7, 'dream pop'),
(8, 'trap argentino'),
(9, 'argentine alternative rock'),
(10, 'argentine indie'),
(11, 'electronica argentina'),
(12, 'pop argentino'),
(13, 'indie pop'),
(14, 'modern alternative pop'),
(15, 'hip hop'),
(16, 'pittsburgh rap'),
(17, 'pop rap'),
(18, 'rap'),
(19, 'bedroom pop'),
(20, 'dream pop'),
(21, 'aesthetic rap'),
(22, 'indie garage rock'),
(23, 'canadian folk'),
(24, 'gauze pop'),
(25, 'indietronica'),
(26, 'modern rock'),
(27, 'pov: indie'),
(28, 'shiver pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `tipo` text NOT NULL,
  `usuarioId` int(11) NOT NULL,
  `horario` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `nombre`, `tipo`, `usuarioId`, `horario`) VALUES
(1, 'Remi Wolf', 'Artista', 1, '09:21:59'),
(2, 'Remi Wolf', 'Artista', 1, '09:37:22'),
(3, 'Cuco', 'Artista', 1, '09:37:31'),
(4, 'Cuco', 'Artista', 1, '09:39:30'),
(5, 'Remi Wolf', 'Artista', 1, '09:40:15'),
(6, 'Cuco', 'Artista', 1, '09:40:39'),
(7, 'Cuco', 'Artista', 1, '09:41:40'),
(8, 'Cuco', 'Artista', 1, '09:44:38'),
(9, 'Cuco', 'Artista', 1, '09:53:12'),
(10, 'Cuco', 'Artista', 1, '09:55:22'),
(11, 'Cuco', 'Artista', 1, '09:57:19'),
(12, 'Cuco', 'Artista', 1, '10:00:31'),
(13, 'Cuco', 'Artista', 1, '10:02:07'),
(14, 'Cuco', 'Artista', 1, '10:02:52'),
(15, 'Cuco', 'Artista', 1, '10:03:45'),
(16, 'Cuco', 'Artista', 1, '10:04:59'),
(17, 'Cuco', 'Artista', 1, '10:06:39'),
(18, 'Cuco', 'Artista', 1, '10:07:09'),
(19, 'Cuco', 'Artista', 1, '10:08:19'),
(20, 'Cuco', 'Artista', 1, '10:10:40'),
(21, 'Cuco', 'Artista', 1, '10:11:48'),
(22, 'Cuco', 'Artista', 1, '10:12:49'),
(23, 'Cuco', 'Artista', 1, '10:13:06'),
(24, 'Cuco', 'Artista', 1, '10:15:10'),
(25, 'Cuco', 'Artista', 1, '10:36:25'),
(26, 'Cuco', 'Artista', 1, '10:36:24'),
(27, 'Cuco', 'Artista', 1, '10:37:23'),
(28, 'Summer Time High Time', 'Cancion', 1, '10:38:22'),
(29, 'undefined', 'Cancion:Summer Time High Time', 1, '10:42:05'),
(30, 'Cuco', 'Artista', 1, '10:44:44'),
(31, 'Cuco', 'Artista', 1, '10:46:15'),
(32, 'Songs4u', 'Album', 1, '10:46:56'),
(33, 'Cuco', 'Artista', 1, '10:48:02'),
(34, 'Cuco', 'Artista', 1, '10:48:03'),
(35, 'wannabewithu', 'Album', 1, '10:48:28'),
(36, 'wannabewithu', 'Album', 1, '10:48:28'),
(37, 'Cuco', 'Artista', 1, '10:48:36'),
(38, 'Songs4u', 'Album', 1, '10:48:48'),
(39, 'Fix Me', 'Cancion', 1, '10:55:51'),
(40, 'undefined', 'Cancion:Fix Me', 1, '10:58:26'),
(41, 'undefined', 'Cancion:Fix Me', 1, '11:01:27'),
(42, 'Summer Time High Time', 'Cancion', 1, '14:37:18'),
(43, 'undefined', 'Cancion:Summer Time High Time', 1, '14:40:49'),
(44, 'Cuco', 'Artista', 1, '15:45:02'),
(45, 'Remi Wolf', 'Artista', 1, '15:45:02'),
(46, 'Cuco', 'Artista', 1, '15:45:03'),
(47, 'Remi Wolf', 'Artista', 1, '15:45:03'),
(48, 'Cuco', 'Artista', 1, '15:45:03'),
(49, 'Remi Wolf', 'Artista', 1, '15:45:03'),
(50, 'Cuco', 'Artista', 1, '15:45:03'),
(51, 'Cuco', 'Artista', 1, '15:46:40'),
(52, 'Cuco', 'Artista', 1, '15:54:04'),
(53, 'Remi Wolf', 'Artista', 1, '15:55:26'),
(54, 'Cuco', 'Artista', 1, '15:56:46'),
(55, 'Summer Time High Time', 'Cancion', 1, '15:57:01'),
(56, 'Summer Time High Time', 'Cancion', 1, '15:58:23'),
(57, 'Fix Me', 'Cancion', 1, '16:10:41'),
(58, 'Remi Wolf', 'Artista', 1, '16:30:19'),
(59, 'Remi Wolf', 'Artista', 1, '16:38:05'),
(60, 'Cuco', 'Artista', 1, '16:38:12'),
(61, 'Remi Wolf', 'Artista', 1, '16:38:25'),
(62, 'Remi Wolf', 'Artista', 1, '16:39:57'),
(63, 'Remi Wolf', 'Artista', 1, '16:40:25'),
(64, 'Remi Wolf', 'Artista', 1, '16:40:52'),
(65, 'Remi Wolf', 'Artista', 1, '16:42:52'),
(66, 'Remi Wolf', 'Artista', 1, '16:46:01'),
(67, 'Remi Wolf', 'Artista', 1, '17:02:07'),
(68, 'Remi Wolf', 'Artista', 1, '17:10:55'),
(69, 'Cuco', 'Artista', 1, '17:10:58'),
(70, 'Remi Wolf', 'Artista', 1, '17:11:29'),
(71, 'Cuco', 'Artista', 1, '17:11:32'),
(72, 'Fix Me', 'Cancion', 1, '17:15:10'),
(73, 'Fix Me', 'Cancion', 1, '17:15:10'),
(74, 'Fix Me', 'Cancion', 1, '17:15:34'),
(75, 'Fix Me', 'Cancion', 1, '17:15:43'),
(76, 'Summer Time High Time', 'Cancion', 1, '17:17:39'),
(77, 'Summer Time High Time', 'Cancion', 1, '17:17:39'),
(78, 'Fix Me', 'Cancion', 1, '17:25:53'),
(79, 'Fix Me', 'Cancion', 1, '17:29:34'),
(80, 'Fix Me', 'Cancion', 1, '17:29:35'),
(81, 'Fix Me', 'Cancion', 1, '17:29:36'),
(82, 'Fix Me', 'Cancion', 1, '17:29:37'),
(83, 'Remi Wolf', 'Artista', 1, '17:29:49'),
(84, 'Cuco', 'Artista', 1, '17:29:57'),
(85, 'Cuco', 'Artista', 1, '17:30:45'),
(86, 'Cuco', 'Artista', 1, '17:32:04'),
(87, 'Fix Me', 'Cancion', 1, '17:32:12'),
(88, 'Fix Me', 'Cancion', 1, '17:34:00'),
(89, 'Cuco', 'Artista', 1, '17:35:33'),
(90, 'Cuco', 'Artista', 1, '17:36:39'),
(91, 'Summer Time High Time', 'Cancion', 1, '17:37:08'),
(92, 'Fix Me', 'Cancion', 1, '17:40:37'),
(93, 'Fix Me', 'Cancion', 1, '17:40:42'),
(94, 'Fix Me', 'Cancion', 1, '17:40:44'),
(95, 'Cuco', 'Artista', 1, '17:40:58'),
(96, 'Para Mi', 'Album', 1, '17:44:22'),
(97, 'Inner Wave', 'Artista', 1, '17:44:51'),
(98, 'Bossa No Sé (feat. Jean Carter)', 'Cancion', 1, '17:45:00'),
(99, 'Inner Wave', 'Artista', 1, '17:48:44'),
(100, 'Inner Wave', 'Artista', 1, '17:49:26'),
(101, 'Cuco', 'Artista', 1, '18:01:03'),
(102, 'Inner Wave', 'Artista', 1, '18:23:59'),
(103, 'Inner Wave', 'Artista', 1, '18:25:06'),
(104, 'Inner Wave', 'Artista', 1, '18:28:00'),
(105, 'Inner Wave', 'Artista', 1, '18:28:36'),
(106, 'Inner Wave', 'Artista', 1, '18:29:56'),
(107, 'Inner Wave', 'Artista', 1, '18:42:55'),
(108, 'Remi Wolf', 'Artista', 1, '18:43:00'),
(109, 'Cuco', 'Artista', 1, '18:43:03'),
(110, 'Inner Wave', 'Artista', 1, '18:43:06'),
(111, 'Cuco', 'Artista', 1, '20:10:27'),
(112, 'Inner Wave', 'Artista', 1, '20:12:11'),
(113, 'Fix Me', 'Cancion', 1, '13:58:43'),
(114, 'undefined', 'Cancion:Fix Me', 1, '14:02:00'),
(115, 'undefined', 'Cancion:Fix Me', 1, '14:02:52'),
(116, 'Inner Wave', 'Artista', 1, '14:04:01'),
(117, 'Inner Wave on Audiotree Live', 'Album', 1, '14:05:06'),
(118, 'Michael', 'Cancion', 1, '14:07:45'),
(119, 'Michael', 'Cancion', 1, '14:10:44'),
(120, 'Summer Time High Time', 'Cancion', 1, '14:10:54'),
(121, 'Summer Time High Time', 'Cancion', 1, '14:12:18'),
(122, 'Summer Time High Time', 'Cancion', 1, '14:12:19'),
(123, 'Summer Time High Time', 'Cancion', 1, '14:14:46'),
(124, 'Fix Me', 'Cancion', 1, '14:14:52'),
(125, 'Remi Wolf', 'Artista', 1, '14:16:26'),
(126, 'Summer Time High Time', 'Cancion', 1, '14:17:52'),
(127, 'Remi Wolf', 'Artista', 1, '14:18:42'),
(128, 'Remi Wolf', 'Artista', 1, '14:20:20'),
(129, 'Remi Wolf', 'Artista', 1, '14:21:18'),
(130, 'Drown', 'Cancion', 1, '14:25:18'),
(131, 'Amor de Siempre', 'Cancion', 1, '14:27:20'),
(132, 'Remi Wolf', 'Artista', 1, '15:19:42'),
(133, 'Inner Wave', 'Artista', 1, '21:36:24'),
(134, 'Amor de Siempre', 'Cancion', 1, '21:37:30'),
(135, 'Amor de Siempre', 'Cancion', 1, '21:42:46'),
(136, 'Amor de Siempre', 'Cancion', 1, '21:48:00'),
(137, 'Amor de Siempre', 'Cancion', 1, '21:53:15'),
(138, 'Amor de Siempre', 'Cancion', 1, '21:58:30'),
(139, 'Amor de Siempre', 'Cancion', 1, '22:03:51'),
(140, 'Amor de Siempre', 'Cancion', 1, '22:09:10'),
(141, 'Amor de Siempre', 'Cancion', 1, '22:14:32'),
(142, 'Amor de Siempre', 'Cancion', 1, '22:20:03'),
(143, 'Amor de Siempre', 'Cancion', 1, '22:25:17'),
(144, 'Dontmakemefallinlove', 'Cancion', 1, '14:07:02'),
(145, 'Lover Is a Day', 'Cancion', 1, '13:18:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `orden`, `canciones_id`, `nombre`, `descripcion`, `imagen`, `usuarios_id`) VALUES
(0, 0, 3, 'playlistEjemplo', 'una playlist para saber como verga funciona esto', '', 1),
(1, 1, 2, 'Ejemplo', 'ejemplo del ejemplo', '', 1);

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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_u` int(50) NOT NULL,
  `Nbr_u` varchar(30) NOT NULL,
  `Img_u` varchar(100) NOT NULL,
  `Pass_u` varchar(120) NOT NULL,
  `Email_u` varchar(50) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_u`, `Nbr_u`, `Img_u`, `Pass_u`, `Email_u`, `token`) VALUES
(1, 'Agustin', 'imagenesUsers/1696473217img001.jpg', '$2y$10$GiaFNHAze2u79BxCHyt2kOY3j2PRtIGZ0drxcrQd1OHKJEpDyCb5S', 'fernandez.agustin02@tecnica7.edu.ar', 'ok');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `albumes_artistas`
--
ALTER TABLE `albumes_artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_generos`
--
ALTER TABLE `artistas_generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
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
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `albumes_artistas`
--
ALTER TABLE `albumes_artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `artistas_generos`
--
ALTER TABLE `artistas_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT de la tabla `emociones`
--
ALTER TABLE `emociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_u` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
