--Crear DB
CREATE DATABASE Facturacion;
USE Facturacion

--Tabla clientes
create table Cliente(
       IdCliente integer primary key identity,	   	   
       Nombre varchar(100) not null, 	   
	   Fecha_nacimiento datetime not null,
       Direccion varchar(70) null,
       Telefono varchar(20) null,
       Email varchar(50) null,
	   Estado bit default(1)
);

--Tabla productos
create table Producto(
       Idproducto integer primary key identity, 
       Nombre varchar(100) not null unique,
       Precio_venta decimal(18,0) not null,
       Stock integer not null,
       Descripcion varchar(256) null,
       Estado bit default(1)	   
);

--Tabla venta
create table Venta(
       Idventa integer primary key identity,	   
       Idcliente integer not null,           
       Fecha_hora datetime not null,
       Iva decimal(18,0) not null,
       Total decimal(18,0) not null,
	   Estado bit default(1)
       FOREIGN KEY (Idcliente) REFERENCES Cliente (Idcliente)
);

--Tabla detalle_venta
create table Detalle_venta(
       Iddetalle_venta integer primary key identity,
       Idventa integer not null,
       Idarticulo integer not null,
       Cantidad integer not null,
       Precio_unitario decimal(18,0) not null,
	   Descuento decimal(18,0) not null,
	   Precio_total decimal(18,0) not null,       
       FOREIGN KEY (Idventa) REFERENCES Venta (Idventa) ON DELETE CASCADE,
       FOREIGN KEY (Idarticulo) REFERENCES Producto (Idproducto)
);