-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2023 a las 12:00:43
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
-- Base de datos: `pokedex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `height` float NOT NULL,
  `number` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `weight` float NOT NULL,
  `url` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemons`
--

INSERT INTO `pokemons` (`id`, `name`, `height`, `number`, `health`, `weight`, `url`, `createdAt`, `updatedAt`) VALUES
(1, 'bulbasaur', 7, 1, 100, 69, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png', '2023-09-07 09:54:55', '2023-09-07 09:54:55'),
(2, 'ivysaur', 10, 2, 100, 130, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png', '2023-09-07 09:54:55', '2023-09-07 09:54:55'),
(3, 'venusaur', 20, 3, 100, 1000, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png', '2023-09-07 09:54:55', '2023-09-07 09:54:55'),
(4, 'charmander', 6, 5, 100, 85, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png', '2023-09-07 09:54:55', '2023-09-07 09:54:55'),
(5, 'charmeleon', 11, 6, 100, 190, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png', '2023-09-07 09:54:55', '2023-09-07 09:54:55'),
(6, 'charizard', 17, 7, 100, 905, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(7, 'squirtle', 5, 10, 100, 90, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(8, 'wartortle', 10, 11, 100, 225, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(9, 'blastoise', 16, 12, 100, 855, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(10, 'caterpie', 3, 14, 100, 29, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(11, 'metapod', 7, 15, 100, 99, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(12, 'butterfree', 11, 16, 100, 320, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(13, 'weedle', 3, 17, 100, 32, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(14, 'kakuna', 6, 18, 100, 100, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(15, 'beedrill', 10, 19, 100, 295, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(16, 'pidgey', 3, 21, 100, 18, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(17, 'pidgeotto', 11, 22, 100, 300, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(18, 'pidgeot', 15, 23, 100, 395, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.png', '2023-09-07 09:54:56', '2023-09-07 09:54:56'),
(19, 'rattata', 3, 25, 100, 35, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(20, 'raticate', 7, 27, 100, 185, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/20.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(21, 'spearow', 3, 30, 100, 20, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/21.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(22, 'fearow', 12, 31, 100, 380, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/22.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(23, 'ekans', 20, 32, 100, 69, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/23.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(24, 'arbok', 35, 33, 100, 650, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/24.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(25, 'pikachu', 4, 35, 100, 60, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(26, 'raichu', 8, 51, 100, 300, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/26.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(27, 'sandshrew', 6, 53, 100, 120, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/27.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(28, 'sandslash', 10, 55, 100, 295, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/28.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(29, 'nidoran-f', 4, 57, 100, 70, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/29.png', '2023-09-07 09:54:57', '2023-09-07 09:54:57'),
(30, 'nidorina', 8, 58, 100, 200, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/30.png', '2023-09-07 09:54:58', '2023-09-07 09:54:58'),
(31, 'nidoqueen', 13, 59, 100, 600, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/31.png', '2023-09-07 09:54:58', '2023-09-07 09:54:58'),
(32, 'nidoran-m', 5, 60, 100, 90, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/32.png', '2023-09-07 09:54:58', '2023-09-07 09:54:58'),
(33, 'nidorino', 9, 61, 100, 195, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/33.png', '2023-09-07 09:54:58', '2023-09-07 09:54:58'),
(34, 'nidoking', 14, 62, 100, 620, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/34.png', '2023-09-07 09:54:58', '2023-09-07 09:54:58'),
(35, 'clefairy', 6, 64, 100, 75, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/35.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(36, 'clefable', 13, 65, 100, 400, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/36.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(37, 'vulpix', 6, 66, 100, 99, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/37.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(38, 'ninetales', 11, 68, 100, 199, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/38.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(39, 'jigglypuff', 5, 71, 100, 55, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/39.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(40, 'wigglytuff', 10, 72, 100, 120, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/40.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(41, 'zubat', 8, 73, 100, 75, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/41.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(42, 'golbat', 16, 74, 100, 550, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/42.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(43, 'oddish', 5, 76, 100, 54, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/43.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(44, 'gloom', 8, 77, 100, 86, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/44.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(45, 'vileplume', 12, 78, 100, 186, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/45.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(46, 'paras', 3, 80, 100, 54, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/46.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(47, 'parasect', 10, 81, 100, 295, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/47.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(48, 'venonat', 10, 82, 100, 300, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/48.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(49, 'venomoth', 15, 83, 100, 125, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/49.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(50, 'diglett', 2, 84, 100, 8, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/50.png', '2023-09-07 09:54:59', '2023-09-07 09:54:59'),
(51, 'dugtrio', 7, 86, 100, 333, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/51.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(52, 'meowth', 4, 88, 100, 42, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/52.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(53, 'persian', 10, 91, 100, 320, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/53.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(54, 'psyduck', 8, 93, 100, 196, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/54.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(55, 'golduck', 17, 94, 100, 766, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/55.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(56, 'mankey', 5, 95, 100, 280, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/56.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(57, 'primeape', 10, 96, 100, 320, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/57.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(58, 'growlithe', 7, 97, 100, 190, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/58.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(59, 'arcanine', 19, 98, 100, 1550, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/59.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(60, 'poliwag', 6, 99, 100, 124, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/60.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(61, 'poliwhirl', 10, 100, 100, 200, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/61.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(62, 'poliwrath', 13, 101, 100, 540, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/62.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(63, 'abra', 9, 103, 100, 195, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/63.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(64, 'kadabra', 13, 104, 100, 565, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/64.png', '2023-09-07 09:55:00', '2023-09-07 09:55:00'),
(65, 'alakazam', 15, 105, 100, 480, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/65.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(66, 'machop', 8, 107, 100, 195, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/66.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(67, 'machoke', 15, 108, 100, 705, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/67.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(68, 'machamp', 16, 109, 100, 1300, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/68.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(69, 'bellsprout', 7, 110, 100, 40, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/69.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(70, 'weepinbell', 10, 111, 100, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/70.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(71, 'victreebel', 17, 112, 100, 155, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/71.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(72, 'tentacool', 9, 113, 100, 455, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/72.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(73, 'tentacruel', 16, 114, 100, 550, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/73.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(74, 'geodude', 4, 115, 100, 200, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/74.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(75, 'graveler', 10, 117, 100, 1050, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/75.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(76, 'golem', 14, 119, 100, 3000, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/76.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(77, 'ponyta', 10, 121, 100, 300, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/77.png', '2023-09-07 09:55:01', '2023-09-07 09:55:01'),
(78, 'rapidash', 17, 123, 100, 950, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/78.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(79, 'slowpoke', 12, 125, 100, 360, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/79.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(80, 'slowbro', 16, 127, 100, 785, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/80.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(81, 'magnemite', 3, 132, 100, 60, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/81.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(82, 'magneton', 10, 133, 100, 600, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/82.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(83, 'farfetchd', 8, 135, 100, 150, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/83.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(84, 'doduo', 14, 137, 100, 392, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/84.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(85, 'dodrio', 18, 138, 100, 852, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/85.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(86, 'seel', 11, 139, 100, 900, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/86.png', '2023-09-07 09:55:02', '2023-09-07 09:55:02'),
(87, 'dewgong', 17, 140, 100, 1200, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/87.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(88, 'grimer', 9, 141, 100, 300, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/88.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(89, 'muk', 12, 143, 100, 300, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/89.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(90, 'shellder', 3, 145, 100, 40, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/90.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(91, 'cloyster', 15, 146, 100, 1325, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/91.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(92, 'gastly', 13, 147, 100, 1, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/92.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(93, 'haunter', 16, 148, 100, 1, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/93.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(94, 'gengar', 15, 149, 100, 405, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(95, 'onix', 88, 151, 100, 2100, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/95.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(96, 'drowzee', 10, 154, 100, 324, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/96.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(97, 'hypno', 16, 155, 100, 756, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/97.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(98, 'krabby', 4, 156, 100, 65, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/98.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(99, 'kingler', 13, 157, 100, 600, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/99.png', '2023-09-07 09:55:03', '2023-09-07 09:55:03'),
(100, 'voltorb', 5, 158, 100, 104, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/100.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(101, 'electrode', 12, 159, 100, 666, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/101.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(102, 'exeggcute', 4, 160, 100, 25, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/102.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(103, 'exeggutor', 20, 161, 100, 1200, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/103.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(104, 'cubone', 4, 163, 100, 65, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/104.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(105, 'marowak', 10, 164, 100, 450, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/105.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(106, 'hitmonlee', 15, 168, 100, 498, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/106.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(107, 'hitmonchan', 14, 169, 100, 502, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/107.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(108, 'lickitung', 12, 171, 100, 655, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/108.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(109, 'koffing', 6, 173, 100, 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/109.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(110, 'weezing', 12, 174, 100, 95, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/110.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(111, 'rhyhorn', 10, 176, 100, 1150, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/111.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(112, 'rhydon', 19, 177, 100, 1200, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/112.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(113, 'chansey', 11, 180, 100, 346, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/113.png', '2023-09-07 09:55:04', '2023-09-07 09:55:04'),
(114, 'tangela', 10, 182, 100, 350, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/114.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(115, 'kangaskhan', 22, 184, 100, 800, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/115.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(116, 'horsea', 4, 186, 100, 80, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/116.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(117, 'seadra', 12, 187, 100, 250, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/117.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(118, 'goldeen', 6, 189, 100, 150, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/118.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(119, 'seaking', 13, 190, 100, 390, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/119.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(120, 'staryu', 8, 191, 100, 345, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/120.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(121, 'starmie', 11, 192, 100, 800, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/121.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(122, 'mr-mime', 13, 194, 100, 545, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/122.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(123, 'scyther', 15, 196, 100, 560, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/123.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(124, 'jynx', 14, 200, 100, 406, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/124.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(125, 'electabuzz', 11, 202, 100, 300, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/125.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(126, 'magmar', 13, 205, 100, 445, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/126.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(127, 'pinsir', 15, 207, 100, 550, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/127.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(128, 'tauros', 14, 209, 100, 884, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/128.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(129, 'magikarp', 9, 210, 100, 100, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/129.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(130, 'gyarados', 65, 211, 100, 2350, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/130.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(131, 'lapras', 25, 213, 100, 2200, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/131.png', '2023-09-07 09:55:05', '2023-09-07 09:55:05'),
(132, 'ditto', 3, 214, 100, 40, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(133, 'eevee', 3, 215, 100, 65, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(134, 'vaporeon', 10, 217, 100, 290, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/134.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(135, 'jolteon', 8, 218, 100, 245, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/135.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(136, 'flareon', 9, 219, 100, 250, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/136.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(137, 'porygon', 8, 225, 100, 365, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/137.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(138, 'omanyte', 4, 228, 100, 75, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/138.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(139, 'omastar', 10, 229, 100, 350, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/139.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(140, 'kabuto', 5, 230, 100, 115, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/140.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(141, 'kabutops', 13, 231, 100, 405, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/141.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(142, 'aerodactyl', 18, 232, 100, 590, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/142.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(143, 'snorlax', 21, 235, 100, 4600, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/143.png', '2023-09-07 09:55:06', '2023-09-07 09:55:06'),
(144, 'articuno', 17, 236, 100, 554, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/144.png', '2023-09-07 09:55:07', '2023-09-07 09:55:07'),
(145, 'zapdos', 16, 238, 100, 526, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/145.png', '2023-09-07 09:55:07', '2023-09-07 09:55:07'),
(146, 'moltres', 20, 240, 100, 600, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/146.png', '2023-09-07 09:55:07', '2023-09-07 09:55:07'),
(147, 'dratini', 18, 242, 100, 33, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/147.png', '2023-09-07 09:55:07', '2023-09-07 09:55:07'),
(148, 'dragonair', 40, 243, 100, 165, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/148.png', '2023-09-07 09:55:07', '2023-09-07 09:55:07'),
(149, 'dragonite', 22, 244, 100, 2100, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.png', '2023-09-07 09:55:07', '2023-09-07 09:55:07'),
(150, 'mewtwo', 20, 245, 100, 1220, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/150.png', '2023-09-07 09:55:07', '2023-09-07 09:55:07'),
(151, 'mew', 4, 248, 100, 40, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png', '2023-09-07 09:55:07', '2023-09-07 09:55:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
