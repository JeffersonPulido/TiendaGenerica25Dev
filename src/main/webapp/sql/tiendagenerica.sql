-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2021 a las 18:18:09
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendagenerica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cedula_cliente` bigint(20) NOT NULL,
  `direccion_cliente` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email_cliente` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre_cliente` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono_cliente` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cedula_cliente`, `direccion_cliente`, `email_cliente`, `nombre_cliente`, `telefono_cliente`) VALUES
(1, 'Calle 2 e # 4 - 24', 'jspulido@misena.com', 'Agroinsumos JP', '8430218'),
(2, 'La Campiña', 'manriqueluisa646@gmail.com', 'Luisa Manrique', '3153459848');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `codigo_detalle_venta` bigint(20) NOT NULL,
  `codigo_producto` bigint(20) NOT NULL,
  `codigo_venta` bigint(20) NOT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `valor_venta` double DEFAULT NULL,
  `valoriva` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`codigo_detalle_venta`, `codigo_producto`, `codigo_venta`, `cantidad_producto`, `valor_total`, `valor_venta`, `valoriva`) VALUES
(1, 1, 1, 1, 36108, 30351, 5757),
(2, 1, 1, 1, 36108, 30351, 5757),
(3, 1, 1, 1, 36108, 30351, 5757),
(4, 2, 2, 2, 51268, 43098, 8170),
(5, 2, 2, 2, 51268, 43098, 8170),
(6, 2, 2, 2, 51268, 43098, 8170);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo_producto` bigint(20) NOT NULL,
  `nombre_producto` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nitproveedor` bigint(20) NOT NULL,
  `precio_compra` double DEFAULT NULL,
  `ivacompra` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo_producto`, `nombre_producto`, `nitproveedor`, `precio_compra`, `ivacompra`, `precio_venta`) VALUES
(1, 'Melocotones', 1, 25505, 19, 30351),
(2, 'Manzanas', 3, 18108, 19, 21549),
(3, 'Platanos', 4, 29681, 19, 35320),
(4, 'Lechuga', 3, 29788, 19, 35448),
(5, 'Tomates', 1, 12739, 19, 15159),
(6, 'Calabaza', 1, 21315, 19, 25365),
(7, 'Apio', 2, 19249, 19, 22906),
(8, 'Pepino', 2, 10958, 19, 13040),
(9, 'Champinones', 2, 11046, 19, 13145),
(10, 'Leche', 5, 21150, 19, 25169),
(11, 'Queso', 5, 26571, 19, 31619),
(12, 'Huevos', 2, 12445, 19, 14810),
(13, 'Requeson', 1, 14329, 19, 17052),
(14, 'Crema agria', 1, 14856, 19, 17679),
(15, 'Yogurt', 5, 14941, 19, 17780),
(16, 'Ternera', 5, 29335, 19, 34909),
(17, 'Salmon salvaje', 5, 11878, 19, 14135),
(18, 'Patas de cangrejo', 1, 29951, 19, 35642);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `nitproveedor` bigint(20) NOT NULL,
  `ciudad_proveedor` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion_proveedor` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre_proveedor` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono_proveedor` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`nitproveedor`, `ciudad_proveedor`, `direccion_proveedor`, `nombre_proveedor`, `telefono_proveedor`) VALUES
(1, 'Facatativa', 'Barrio Centro', 'MarketFruits SAS', '84254810'),
(2, 'Mosquera', 'Base Aerea', 'Fuerza Aerea', '8452032'),
(3, 'Madrid', 'Charquito', 'Mara Fuentes', '325141802'),
(4, 'Bojaca', 'Parque Principal', 'Calibri Flowers SAS', '98765421'),
(5, 'Facatativa', 'Carrera 1 # 4 - 19', 'Agroinsumos San Miguel SAS', '3125481032');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `cedula_usuario` bigint(20) NOT NULL,
  `email_usuario` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre_usuario` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `usuario` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`cedula_usuario`, `email_usuario`, `nombre_usuario`, `password`, `usuario`) VALUES
(123456789, 'admin@supermarket.com', 'Administrador', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `codigo_venta` bigint(20) NOT NULL,
  `cedula_usuario` bigint(20) NOT NULL,
  `cedula_cliente` bigint(20) NOT NULL,
  `ivaventa` double DEFAULT NULL,
  `total_venta` double DEFAULT NULL,
  `valor_venta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`codigo_venta`, `cedula_usuario`, `cedula_cliente`, `ivaventa`, `total_venta`, `valor_venta`) VALUES
(1, 123456789, 1, 17271, 108324, 91053),
(2, 123456789, 2, 24510, 153804, 129294);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cedula_cliente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`codigo_detalle_venta`),
  ADD KEY `codigo_venta` (`codigo_venta`),
  ADD KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo_producto`),
  ADD KEY `nitproveedor` (`nitproveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`nitproveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cedula_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`codigo_venta`),
  ADD KEY `cedula_cliente` (`cedula_cliente`),
  ADD KEY `cedula_usuario` (`cedula_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cedula_cliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000518892;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `codigo_detalle_venta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo_producto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `nitproveedor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12313;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cedula_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456790;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `codigo_venta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`codigo_venta`) REFERENCES `ventas` (`codigo_venta`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo_producto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`nitproveedor`) REFERENCES `proveedores` (`nitproveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cedula_cliente`) REFERENCES `clientes` (`cedula_cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`cedula_usuario`) REFERENCES `usuarios` (`cedula_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
