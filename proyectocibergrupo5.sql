
create database proyectogrupo5

use  proyectogrupo5

CREATE TABLE proveedores (
id_proveedor VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
direccion VARCHAR(200) NOT NULL,
telefono VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL
);

 --Supervisores

CREATE TABLE supervisores (
id_supervisor VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
telefono VARCHAR(20) NOT NULL
);

   --Vendedores

CREATE TABLE vendedores (
id_vendedor VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
telefono VARCHAR(20) NOT NULL,
id_supervisor VARCHAR(10) NOT NULL,
sueldo DECIMAL(10, 2) NOT NULL,
comisión DECIMAL(5, 2) NOT NULL,
FOREIGN KEY (id_supervisor) REFERENCES supervisores(id_supervisor)
);

 --Clientes

CREATE TABLE clientes (
id_cliente VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
telefono VARCHAR(20) NOT NULL,
direccion VARCHAR(200) NOT NULL,
id_vendedor VARCHAR(10) NOT NULL,
FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

  --Pedidos

  --CREATE TABLE pedidos (
id_pedido VARCHAR(10) PRIMARY KEY,
id_cliente VARCHAR(10) NOT NULL,
id_vendedor VARCHAR(10) NOT NULL,
fecha_pedido DATE NOT NULL,
total DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

  --Facturas

CREATE TABLE facturas (
id_factura VARCHAR(10) PRIMARY KEY,
id_pedido VARCHAR(10) NOT NULL,
id_vendedor VARCHAR(10) NOT NULL,
fecha_factura DATE NOT NULL,
total DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

  --Productos

CREATE TABLE productos (
id_producto VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
descripcion VARCHAR(200) NOT NULL,
precio DECIMAL(10, 2) NOT NULL,
id_proveedor VARCHAR(10) NOT NULL,
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

--Detalles Pedidos

CREATE TABLE detalles_pedidos (
id_detalle VARCHAR(10) PRIMARY KEY,
id_pedido VARCHAR(10) NOT NULL,
id_producto VARCHAR(10) NOT NULL,
cantidad INT NOT NULL,
precio_unitario DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

--Detalles Facturas

CREATE TABLE detalles_facturas (
id_detalle VARCHAR(10) PRIMARY KEY,
id_factura VARCHAR(10) NOT NULL,
id_producto VARCHAR(10) NOT NULL,
cantidad INT NOT NULL,
precio_unitario DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (id_factura) REFERENCES facturas(id_factura),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
)
CREATE TABLE facturas (
id_factura VARCHAR(10) PRIMARY KEY,
id_pedido VARCHAR(10) NOT NULL,
id_vendedor VARCHAR(10) NOT NULL,
fecha_factura DATE NOT NULL,
fecha_registro DATE NOT NULL DEFAULT CURRENT_DATE,
hora_registro TIME NOT NULL DEFAULT CURRENT_TIME,
total DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);