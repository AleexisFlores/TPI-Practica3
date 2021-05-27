-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-05-2021 a las 21:17:51
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precioVenta` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `descripcion`, `precioVenta`) VALUES
(1, '1', 'Galletas chokis', '15.00'),
(2, '2', 'Mermelada de fresa', '80.00'),
(3, '3', 'Aceite', '20.00'),
(4, '4', 'Palomitas de maíz', '15.00'),
(6, '6', 'yygvty', '1.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_vendidos`
--

DROP TABLE IF EXISTS `productos_vendidos`;
CREATE TABLE IF NOT EXISTS `productos_vendidos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` bigint(20) UNSIGNED NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_producto` (`id_producto`),
  KEY `id_venta` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_vendidos`
--

INSERT INTO `productos_vendidos` (`id`, `id_producto`, `cantidad`, `precio`, `id_venta`) VALUES
(1, 1, 1, '15.00', 1),
(2, 2, 3, '80.00', 1),
(3, 1, 1, '15.00', 2),
(4, 1, 1, '15.00', 3),
(5, 2, 1, '80.00', 3),
(6, 3, 1, '20.00', 3),
(7, 2, 1, '80.00', 5),
(8, 6, 1, '1.00', 5),
(9, 3, 2, '20.00', 6),
(10, 4, 2, '15.00', 6),
(11, 1, 2, '15.00', 6),
(12, 2, 2, '80.00', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `signup`
--

INSERT INTO `signup` (`id`, `username`, `password`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`) VALUES
(1, '2021-05-15 12:21:09'),
(2, '2021-05-15 12:50:28'),
(3, '2021-05-15 12:56:24'),
(4, '2021-05-15 12:57:31'),
(5, '2021-05-26 13:00:05'),
(6, '2021-05-26 13:19:30');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  ADD CONSTRAINT `productos_vendidos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_vendidos_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
