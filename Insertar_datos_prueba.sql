--Insertar clientes
Insert into Cliente values
('Juan Martinez', '19851221', '', '', '', 1),
('Felipe García', '19920201', 'Cra 15 # 20 - 50', '+573300300300', 'felipeg@gmail.com', 1),
('Camilo Álvarez', '19500420', 'Cra 25 # 80 - 32', '+5712080808', 'camiloa@hotmail.com', 1)

--Insertar productos
Insert into Producto values
('Nesquik vainilla', 4500, 25, 'bolsa x 200 g', 1),
('Harina de maíz blanco', 3100, 8, 'bolsa x 1000 g', 1),
('Gaseosa COCA COLA', 1000, 3, 'Sabor Original 3000ml 2 Unidades', 1),
('Arroz Vitamor Diana', 10000, 15, 'bolsa x 3000g', 1),
('Pasta Clásica Spaghetti', 3050, 50, 'bolsa x 1000 g', 1),
('Avena en hojuelas original', 8100, 30, 'bolsa x 960 g', 1),
('Salsa de tomate FRUCO', 12100, 20, 'bolsa x 1000 g', 1),
('GALLETAS X 6 TACOS DUCALES', 8700, 40, 'bolsa x 728 g', 1),
('Cafe Molido', 6400, 20, 'bolsa x 400 g', 1),
('Azucar Morena', 2700, 40, 'bolsa x 1000 gr', 1)


USE [Facturacion]
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 
GO
INSERT [dbo].[Venta] ([Idventa], [Idcliente], [Fecha_hora], [Iva], [Total], [Estado]) VALUES (1, 2, CAST(N'2000-02-05T00:00:00.000' AS DateTime), CAST(1150 AS Decimal(18, 0)), CAST(7200 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[Venta] ([Idventa], [Idcliente], [Fecha_hora], [Iva], [Total], [Estado]) VALUES (2, 3, CAST(N'2000-02-06T00:00:00.000' AS DateTime), CAST(1437 AS Decimal(18, 0)), CAST(9000 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[Venta] ([Idventa], [Idcliente], [Fecha_hora], [Iva], [Total], [Estado]) VALUES (3, 1, CAST(N'2000-02-06T00:00:00.000' AS DateTime), CAST(718 AS Decimal(18, 0)), CAST(4500 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[Venta] ([Idventa], [Idcliente], [Fecha_hora], [Iva], [Total], [Estado]) VALUES (4, 1, CAST(N'2000-02-06T00:00:00.000' AS DateTime), CAST(1293 AS Decimal(18, 0)), CAST(8100 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[Venta] ([Idventa], [Idcliente], [Fecha_hora], [Iva], [Total], [Estado]) VALUES (5, 2, CAST(N'2000-02-06T00:00:00.000' AS DateTime), CAST(1932 AS Decimal(18, 0)), CAST(12100 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[Venta] ([Idventa], [Idcliente], [Fecha_hora], [Iva], [Total], [Estado]) VALUES (6, 3, CAST(N'2000-02-07T00:00:00.000' AS DateTime), CAST(19319 AS Decimal(18, 0)), CAST(121000 AS Decimal(18, 0)), 1)
GO
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
SET IDENTITY_INSERT [dbo].[Detalle_venta] ON 
GO
INSERT [dbo].[Detalle_venta] ([Iddetalle_venta], [Idventa], [Idarticulo], [Cantidad], [Precio_unitario], [Descuento], [Precio_total]) VALUES (1, 1, 2, 2, CAST(3100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(7200 AS Decimal(18, 0)))
GO
INSERT [dbo].[Detalle_venta] ([Iddetalle_venta], [Idventa], [Idarticulo], [Cantidad], [Precio_unitario], [Descuento], [Precio_total]) VALUES (2, 2, 1, 2, CAST(4500 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(9000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Detalle_venta] ([Iddetalle_venta], [Idventa], [Idarticulo], [Cantidad], [Precio_unitario], [Descuento], [Precio_total]) VALUES (3, 3, 1, 1, CAST(4500 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(4500 AS Decimal(18, 0)))
GO
INSERT [dbo].[Detalle_venta] ([Iddetalle_venta], [Idventa], [Idarticulo], [Cantidad], [Precio_unitario], [Descuento], [Precio_total]) VALUES (4, 4, 6, 1, CAST(8100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(8100 AS Decimal(18, 0)))
GO
INSERT [dbo].[Detalle_venta] ([Iddetalle_venta], [Idventa], [Idarticulo], [Cantidad], [Precio_unitario], [Descuento], [Precio_total]) VALUES (5, 5, 7, 1, CAST(12100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(12100 AS Decimal(18, 0)))
GO
INSERT [dbo].[Detalle_venta] ([Iddetalle_venta], [Idventa], [Idarticulo], [Cantidad], [Precio_unitario], [Descuento], [Precio_total]) VALUES (6, 6, 7, 10, CAST(121000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(121000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Detalle_venta] OFF
GO












