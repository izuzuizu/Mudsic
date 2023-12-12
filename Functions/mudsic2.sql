-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2023 a las 02:57:54
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
-- Base de datos: `mudsic2`
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
  `canciones` int(11) NOT NULL,
  `estreno` varchar(5) NOT NULL,
  `fecha_estreno` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes_artistas`
--

CREATE TABLE `albumes_artistas` (
  `id` int(11) NOT NULL,
  `albumes_id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_generos`
--

CREATE TABLE `artistas_generos` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `generos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `nombre` text NOT NULL,
  `repeticion` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `idSpotify` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `duracion` time NOT NULL,
  `artista` varchar(40) NOT NULL,
  `album` text NOT NULL,
  `previewUrl` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idSpotify` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emociones`
--

CREATE TABLE `emociones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `emoji` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `emociones`
--

INSERT INTO `emociones` (`id`, `nombre`, `emoji`) VALUES
(1, NULL, '👍'),
(2, NULL, '😍'),
(3, NULL, '😈'),
(4, NULL, '🤣'),
(5, NULL, '😄'),
(6, NULL, '🥳'),
(7, NULL, '😴'),
(8, NULL, '👹'),
(9, NULL, '🚀'),
(10, NULL, '👎'),
(11, NULL, '🤮'),
(12, NULL, '💔'),
(13, NULL, '😭'),
(14, NULL, '😡'),
(15, NULL, '😭');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `tipo` text NOT NULL,
  `usuarioId` int(11) NOT NULL,
  `horario` time NOT NULL,
  `idSpotify` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `playlists`
--

INSERT INTO `playlists` (`id`, `nombre`, `descripcion`, `imagen`, `usuarios_id`) VALUES
(1, 'playlistEjemplo', 'una playlist para saber como verga funciona esto', '', 1),
(96, 'vamo loco', 'ya termine', '', 1),
(97, 'ola mina', 'xd', '', 1),
(98, 'Otro usuario', '', '', 2),
(99, 'a', 'nonanda', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL,
  `id_playlist` int(11) NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`id`, `id_cancion`, `id_playlist`, `orden`) VALUES
(1, 5, 1, 1),
(2, 21, 1, 2),
(3, 4, 1, 3);

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
  `PassM_u` text NOT NULL,
  `Email_u` varchar(50) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_u`, `Nbr_u`, `Img_u`, `Pass_u`, `PassM_u`, `Email_u`, `token`) VALUES
(1, 'pepe', 'imagenes/default.png', '$2y$10$MBhmWfMHVSqTjfJzShT7peuzPtgSBb50MgHSMXTwR97sY/23ov.Oy', '', 'fernandez.agustin02@tecnica7.edu.ar', 'ok'),
(2, 'pepe', 'imagenes/default.png', '$2y$10$HYrfoWZ6yaq0MH32nNCWluzy.MI.h3oM3FfwIFP9YoatsKTunITyy', '', 'fernandezagustinag@gmail.com', 'ok'),
(5, 'Agustín ', '', '', 'af92c9d33c5118eb5ff1d2f5d3e8d60d19adcb699316d73b2ec7da50f49e1e4f', 'fernandezagustinag@gmail.com', ''),
(6, 'Agustín ', '', '45302569', '', 'fernandezagustinag@outlook.com', '');

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
-- Indices de la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `albumes_artistas`
--
ALTER TABLE `albumes_artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artistas_generos`
--
ALTER TABLE `artistas_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `emociones`
--
ALTER TABLE `emociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `emociones_artistas`
--
ALTER TABLE `emociones_artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `emociones_usuarios`
--
ALTER TABLE `emociones_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_u` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
