
--Obtener precios de productos
Select Idproducto, Nombre, Precio_venta as Precio from Producto 

--Obtener lista de productos cuya existencia en el inventario haya llegado a mínimo de 5
Select Idproducto, Nombre, Stock as Inventario from Producto where Stock <= 5

--Obtener una lista de clientes no mayores de 35 años que hayan realizado compras entre el 1 de febrero de 2000 y el 25 de mayo de 2000
Select IdVenta, Fecha_Hora as Fecha, Iva, Total, Nombre as 'Nombre cliente', DATEDIFF(YEAR,Fecha_nacimiento,GETDATE()) as Edad, Fecha_nacimiento as 'Fecha Nacimiento'  from Venta
join Cliente on Venta.IdCliente = Cliente.IdCliente
where Fecha_hora between '20000201' and '20000525' and DATEDIFF(YEAR,Fecha_nacimiento,GETDATE()) <= 35

--Obtener el valor total vendido por cada producto en el año 2000
Select Producto.Nombre, SUM(Precio_total) 'Valor total vendido' from Venta
join Detalle_venta on Venta.Idventa = Detalle_venta.Idventa
join Producto on Detalle_venta.Idarticulo = Producto.Idproducto
where YEAR(Fecha_hora) = 2000
group by Producto.Idproducto, Producto.Nombre


