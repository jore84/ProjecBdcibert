CREATE DATABASE 
BD_CIBERCOMPUPARTESEIRL
GO

USE
BD_CIBERCOMPUPARTESEIRL
GO

SET DATEFORMAT
DMY
GO


CREATE TABLE PROVEEDOR (
COD_PROVEEDOR INT PRIMARY KEY,
RUC_PROVEEDOR CHAR(15),
RAZONSOCIAL_PROVEEDOR VARCHAR(50),
DIR_PROVEEDOR VARCHAR(100),
TELEFONO VARCHAR(20) NOT NULL,
EMAIL VARCHAR(100) NOT NULL
);
GO

INSERT INTO PROVEEDOR VALUES(001,'20514782474','CIBER-COMPUPARTES EIRL.','AV. Garcilaso de la Vega 1348, Lima -Lima','014578956','CIBER_COMPUPARTES@GMAIL.COM');
INSERT INTO PROVEEDOR VALUES(002,'20212331377','DELTRON PERU','Ca. Raúl Rebagliati 170, La Victoria 15034','015878891','VENTAS@DELTRON.COM');
INSERT INTO PROVEEDOR VALUES(003,'20254507874','INCOMETX.','C. Los Negocios 448, Surquillo 15047','013876897','VICTORIA@INCOMETX.COM');
INSERT INTO PROVEEDOR VALUES(004,'20506717044','MEMORYKINGS.','AV. GARCILAZO DE LA VEGA 1261 INT 226 LIMA - LIMA - LIMA','012846891','GERENCIA@MEMORYKINGS.COM');
INSERT INTO PROVEEDOR VALUES(005,'20506717044','SEGO','Jr. Paruro, 1369, Lima - LIMA','012579412','CRISTINA@SEGO.COM');
INSERT INTO PROVEEDOR VALUES(006,'20127745910','MAXIMA INTERNACIONAL','Av. República de Panamá Nº 3852 Surquillo - Lima - Perú','012632291','VENTAS@MAXIMA.COM');

SELECT * FROM PROVEEDOR

CREATE TABLE SUPERVISORES
(ID_SUPERVISOR VARCHAR(10) PRIMARY KEY,
NOMBRE VARCHAR(50) NOT NULL,
APELLIDO VARCHAR(50) NOT NULL,
EMAIL VARCHAR(100) NOT NULL,
TELEFONO VARCHAR(20) NOT NULL
);
GO

INSERT INTO SUPERVISORES VALUES(44369841,'ROSA','LEON SANCHEZ','ROSALEON@CIBER.COM',921535012);
INSERT INTO SUPERVISORES VALUES(10254789,'JAVIER','PEREZ PAREDES','JAVIERPEREZ@CIBER.COM',921552011);
INSERT INTO SUPERVISORES VALUES(44369741,'LUHANA','CORNEJO TORRES','LUHANACORNEJO@CIBER.COM',921534911);
INSERT INTO SUPERVISORES VALUES(43478510,'ANDRE','ESPIRITU BALDEON','ANDREESPIRITU@CIBER.COM',921535010);
INSERT INTO SUPERVISORES VALUES(44398741,'LUIS','SOLIS SOLIS','LUISSOLIS@CIBER.COM',921535009);

SELECT * FROM SUPERVISORES

CREATE TABLE PERSONAL
(COD_PER INT PRIMARY KEY,
DNI_PER CHAR(8),
NOM_PER VARCHAR(50) NOT NULL,
TELF_PER VARCHAR(24) NOT NULL,
CORREO_PER VARCHAR(100) NOT NULL,
ID_SUPERVISOR VARCHAR(10) NOT NULL,
SUELDO DECIMAL(10,2) NOT NULL,
FOREIGN KEY(ID_SUPERVISOR) REFERENCES SUPERVISORES (ID_SUPERVISOR)
);
GO

INSERT INTO PERSONAL VALUES(001,44369855,'ANGEL SUTIZAL',921755012,'ANGEL_SUTIZAL@CIBER.COM',44369841,1500.00);
INSERT INTO PERSONAL VALUES(002,40254414,'CRISTINA QUISPE',918752014,'CRISTINA_QUISPE@CIBER.COM',10254789,1500.00);
INSERT INTO PERSONAL VALUES(003,43758486,'INES CORTEZ',921751422,'INES_CORTEZ@CIBER.COM',44369741,1800.00);
INSERT INTO PERSONAL VALUES(004,44369855,'GINGER TEVEZ',921757811,'GINGER_TEVEZ@CIBER.COM',10254789,1800.00);
INSERT INTO PERSONAL VALUES(005,44369855,'DOMINIC SANCHEZ',914785212,'NICO_SANCHEZ@CIBER.COM',44369741,1500.00);
INSERT INTO PERSONAL VALUES(006,44369855,'PAUL TORRES',901458012,'PAUL_TORRES@CIBER.COM',44369841,1800.00);
INSERT INTO PERSONAL VALUES(007,43758486,'ANIBAL CAMPOS',921751887,'ANIBAL_CAMPOS@CIBER.COM',44369741,1500.00);
INSERT INTO PERSONAL VALUES(008,44369855,'ANDRES PONCE',921757845,'ANDRES_PONCE@CIBER.COM',44369741,1500.00);
INSERT INTO PERSONAL VALUES(009,44369855,'VICTOR CORNEJO',914785444,'VIC_CORNEJO@CIBER.COM',43478510,1500.00);
INSERT INTO PERSONAL VALUES(010,44369855,'CARLOS PORRAS',982418012,'PAUL_TORRES@CIBER.COM',44369841,1500.00);

SELECT*FROM PERSONAL

CREATE TABLE CLIENTE
(COD_CLI INT PRIMARY KEY,
RUC_CLI CHAR(15),
RAZONSOCIAL_CLI VARCHAR(50) NOT NULL,
DIR_CLI VARCHAR(100),
TELEF_CLI VARCHAR(15),
CORREO_CLI VARCHAR(50),
COD_PER INT NOT NULL
FOREIGN KEY(COD_PER) REFERENCES PERSONAL(COD_PER)
);
GO

INSERT INTO CLIENTE VALUES(1,'20550227470','DOCORP-PERU','AV CONQUISTADORES 256 DPT 801','012554798','DOCORP-PERU142@GMAIL.COM',001);
INSERT INTO CLIENTE VALUES(2,'20550224060','DATACENTER SAC','JR CAMINO REAL 504','012554798','DATACENTER34@GMAIL.COM',002);
INSERT INTO CLIENTE VALUES(3,'20550222458','PEDRO SANCHEZ EIRL','AV ANGAMOS 245 SAN ISIDRO','013548547','PEDRO_SANCHEZ@GMAIL.COM',003);
INSERT INTO CLIENTE VALUES(4,'20550185180','RECOVERYDATAPROJECT SAC','AV CAMANA 2400 DPTO 210','987506897','RECOVERYDATAPROJECT@GMAIL.COM',001);
INSERT INTO CLIENTE VALUES(5,'20502547850','DOCTORPC EIRL','AV GARCILAZO DE LA VEGA 420','013345789','JCSYSTEMAS@GMAIL.COM',004);
INSERT INTO CLIENTE VALUES(6,'20750244470','DLP SERVICIOS','AV CONQUISTADORES 256 DPT 401','012446798','SOPORTE@DLPSERVICIOS.COM',005);
INSERT INTO CLIENTE VALUES(7,'20441274060','AMPER SERVICIOS SAC','CALLE LOS NEGIOCIOS 304','012174798','AMPER-SERVICIOS@GMAIL.COM',006);
INSERT INTO CLIENTE VALUES(8,'10443698554','CARLOS LEON PERALTA','AV PEZET 245 SAN ISIDRO','014548541','CARLOSLEONPERALTA@OUTLOOK.COM',008);
INSERT INTO CLIENTE VALUES(9,'20550185180','SERVEROPERADORES.SAC','AV SAENZ PEÑA 210','913406897','SERVEROPERADORES@GMAIL.COM',007);
INSERT INTO CLIENTE VALUES(10,'20254587850','INCOTMEX SAC','AV LOS NOGALES MZ A LTE 10','943345775','SERVICIOSINFORMATICOS@INCOTMEX.COM',00);

SELECT * FROM CLIENTE

CREATE TABLE TIPO_FACTURAS(

COD_TIPO_FACTURA TINYINT PRIMARY KEY,
TIPO_FACTURA VARCHAR(15) NOT NULL
);

INSERT INTO TIPO_FACTURAS VALUES(1,'CONTADO');
INSERT INTO TIPO_FACTURAS VALUES(2,'TARJETA');

SELECT * FROM TIPO_FACTURAS

CREATE TABLE FACTURA(
NUM_FACT CHAR(10) PRIMARY KEY,
FECHA_FACT DATE NOT NULL,
COD_PER INT REFERENCES PERSONAL,
COD_CLIENTE INT REFERENCES CLIENTE,
COD_TIPO_FACTURA TINYINT REFERENCES TIPO_FACTURAS
);
GO

INSERT INTO FACTURA VALUES(001,'22/08/2024',1,1,2)
INSERT INTO FACTURA VALUES(002,'28/07/2024',1,1,1);
INSERT INTO FACTURA VALUES(003,'14/07/2024',1,2,2);
INSERT INTO FACTURA VALUES(004,'30/07/2024',2,3,2);
INSERT INTO FACTURA VALUES(005,'27/07/2024',8,1,1);
INSERT INTO FACTURA VALUES(006,'26/07/2024',5,4,1);
INSERT INTO FACTURA VALUES(007,'06/08/2024',6,9,2);
INSERT INTO FACTURA VALUES(008,'11/08/2024',5,5,1);
INSERT INTO FACTURA VALUES(009,'15/08/2024',3,7,2);
INSERT INTO FACTURA VALUES(010,'13/08/2024',2,8,1);

SELECT * FROM FACTURA

CREATE TABLE MARCAS
(COD_MARCA INT PRIMARY KEY,
NOM_MARCA VARCHAR(50));
GO

INSERT INTO MARCAS VALUES(1,'INTEL');
INSERT INTO MARCAS VALUES(2,'SAMSUNG');
INSERT INTO MARCAS VALUES(3,'LOGITECH');
INSERT INTO MARCAS VALUES(4,'ASUS');
INSERT INTO MARCAS VALUES(5,'3 NSTAR');
INSERT INTO MARCAS VALUES(6,'KINGSTONE');
INSERT INTO MARCAS VALUES(7,'FORZA');
INSERT INTO MARCAS VALUES(8,'EPSON');
INSERT INTO MARCAS VALUES(9,'NVIDIA');
INSERT INTO MARCAS VALUES(10,'DELL');

SELECT * FROM MARCAS

CREATE TABLE PRODUCTO
(COD_PROD INT PRIMARY KEY,
NOM_MARCA VARCHAR(50),
DESCRIPCION_PROD VARCHAR(50) NOT NULL,
PRECIO_PROD DECIMAL(8,2) NOT NULL,
STOCK_PROD INT NOT NULL,
COD_PROVEEDOR INT NOT NULL,
FOREIGN KEY(COD_PROVEEDOR) REFERENCES PROVEEDOR(COD_PROVEEDOR)
);
GO

INSERT INTO PRODUCTO VALUES(01,'LOGITECH','MOUSE', 15.00, 50,2);
INSERT INTO PRODUCTO VALUES(02,'LOGITECH','TECLADO', 28.00, 65,3);
INSERT INTO PRODUCTO VALUES(03,'LOGITECH','WEB CAM', 30.00, 25,1);
INSERT INTO PRODUCTO VALUES(04,'INTEL','PROCESADOR INTEL I5', 95.00, 30,2);
INSERT INTO PRODUCTO VALUES(05,'KINGSTONE','MEMORIAS', 65.00, 40,1);
INSERT INTO PRODUCTO VALUES(06,'KINGSTONE','DISCOS DUROS SOLIDOS', 180.00, 50,3);
INSERT INTO PRODUCTO VALUES(07,'EPSON','PROYECTORES', 250.00, 15,4);
INSERT INTO PRODUCTO VALUES(08,'DELL','MOCHILAS', 90.00, 30,5);
INSERT INTO PRODUCTO VALUES(09,'FORZA','UPS', 550.00, 20,2);
INSERT INTO PRODUCTO VALUES(010,'NVIDIA','TARJETAS GRAFICAS', 120.00, 20,5);

SELECT * FROM PRODUCTO


CREATE TABLE FACTURA_PRODUCTO(
NUM_FACT CHAR(10) ,
COD_PROD CHAR(15) NOT NULL,
CANT_PROD TINYINT NOT NULL,
DESCRIPCION_PROD VARCHAR(50) NOT NULL,
PRECIOUNIT_PROD DECIMAL(8,2) NOT NULL,
PRECIOTOTAL_PROD DECIMAL(8,2) NOT NULL,
PRIMARY KEY (NUM_FACT, COD_PROD)
);

GO

INSERT INTO FACTURA_PRODUCTO VALUES(001,1,1,'MOUSE',20.00,20.00);
INSERT INTO FACTURA_PRODUCTO VALUES(002,2,2,'PROYECTORES',250.00,250.00);
INSERT INTO FACTURA_PRODUCTO VALUES(003,3,2,'WEB CAM',30.00,30.00);
INSERT INTO FACTURA_PRODUCTO VALUES(004,4,1,'UPS',550.00,550.00);
INSERT INTO FACTURA_PRODUCTO VALUES(005,5,3,'MEMORIAS SD',65.00,65.00);
INSERT INTO FACTURA_PRODUCTO VALUES(006,6,4,'TARJETA GRAFICA',120.00,120.00);
INSERT INTO FACTURA_PRODUCTO VALUES(007,7,6,'DISCOS DUROS',180.00,180.00);
INSERT INTO FACTURA_PRODUCTO VALUES(008,8,2,'MOCHILAS',35.00,35.00);
INSERT INTO FACTURA_PRODUCTO VALUES(009,9,4,'TECLADO',20.00,20.00);
INSERT INTO FACTURA_PRODUCTO VALUES(0010,1,5,'PROCESADORES',95.00,95.00);

SELECT * FROM FACTURA_PRODUCTO

---------CESAR------------

create database proyecto01
go
use proyecto01
go

set dateformat
DMY
GO

-- Tabla Proveedores 01
CREATE TABLE Proveedores (
id_proveedor VARCHAR(7) PRIMARY KEY, 
nombre VARCHAR(50), 
direccion VARCHAR(100), 
telefono VARCHAR(15),
email VARCHAR(50), 
RUC VARCHAR(10) 
);
go


-- Tabla Supervisores 02
CREATE TABLE Supervisores (
id_supervisor VARCHAR(7) PRIMARY KEY, 
nombre VARCHAR(50), 
apellido VARCHAR(50), 
email VARCHAR(50), 
telefono VARCHAR(15), 
DNI VARCHAR(8) 
);
go

-- Tabla Productos 03
CREATE TABLE Productos (
id_producto VARCHAR(7) PRIMARY KEY,
nombre VARCHAR(50),
descripcion VARCHAR(100),
precio DECIMAL(10,2),
marca VARCHAR(50),
stock_disponible INTEGER,
id_proveedor_fk VARCHAR(7),
FOREIGN KEY (id_proveedor_fk) REFERENCES Proveedores(id_proveedor)
);
go


--Tabla Beneficios 04
CREATE TABLE Beneficios (
id_beneficio VARCHAR(7) PRIMARY KEY,
descripcion VARCHAR(100), 
monto_minimo_compra DECIMAL(10,2), 
porcentaje_descuento DECIMAL(5,2), 
cantidad_productos_regalo INT, 
fecha_inicio DATE, 
fecha_fin DATE 
);
go

-- Tabla Inventario 05
CREATE TABLE Inventario (
id_inventario VARCHAR(7) PRIMARY KEY,
cantidad_stock INT,
fecha_ultimo_movimiento DATE,
id_producto_fk VARCHAR(7),
FOREIGN KEY (id_producto_fk) REFERENCES Productos(id_producto)
);
go

--Tabla Vendedores 06
CREATE TABLE Vendedores (
id_vendedor VARCHAR(7) PRIMARY KEY, 
nombre VARCHAR(50), 
apellido VARCHAR(50), 
email VARCHAR(50), 
telefono VARCHAR(15), 
id_supervisor VARCHAR(7), 
DNI VARCHAR(8), 
FOREIGN KEY (id_supervisor) REFERENCES Supervisores(id_supervisor)
);
go

--Tabla Clientes 07
CREATE TABLE Clientes (
id_cliente VARCHAR(7) PRIMARY KEY, 
nombre VARCHAR(50), 
apellido VARCHAR(50), 
email VARCHAR(50), 
telefono VARCHAR(15),
direccion VARCHAR(100), 
DNI VARCHAR(8)
);
go

--Tabla Pedidos 08
CREATE TABLE Pedidos (
id_pedido VARCHAR(7) PRIMARY KEY, 
id_cliente VARCHAR(7), 
fecha_pedido DATE, 
total DECIMAL(10,2), 
estado VARCHAR(20), 
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
go

--Tabla Ventas 09
CREATE TABLE Ventas (
id_venta VARCHAR(7) PRIMARY KEY, 
id_cliente VARCHAR(7), 
id_vendedor VARCHAR(7), 
fecha_venta DATE, 
total DECIMAL(10,2),
metodo_pago VARCHAR(20), 
comision DECIMAL(10,2), 
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor)
);
go

--Tabla Envios 10
CREATE TABLE Envios (
id_envio VARCHAR(7) PRIMARY KEY, 
id_pedido VARCHAR(7), 
fecha_envio DATE, 
estado VARCHAR(20), 
direccion_envio VARCHAR(100), 
FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
)
go

--Tabla Detalles_Pedidos 11
CREATE TABLE Detalles_Pedidos (
id_detalle VARCHAR(7) PRIMARY KEY, 
id_pedido VARCHAR(7), 
id_producto VARCHAR(7), 
cantidad INT, 
precio_unitario DECIMAL(10,2), 
FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
go

--Tabla Detalles_Ventas 12
CREATE TABLE Detalles_Ventas (
id_detalle VARCHAR(7) PRIMARY KEY, 
id_venta VARCHAR(7), 
id_producto VARCHAR(7), 
cantidad INT, 
precio_unitario DECIMAL(10,2),
FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
go

--Tabla Comprobantes 13
CREATE TABLE Comprobantes (
id_comprobante VARCHAR(7) PRIMARY KEY, 
id_venta VARCHAR(7), 
id_vendedor VARCHAR(7), 
fecha_comprobante DATE, 
total_comprobante DECIMAL(10,2), 
tipo_comprobante VARCHAR(20), 
FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor)
);
go

--Tabla Comprobantes_Sin_Cliente 14
CREATE TABLE Comprobantes_Sin_Cliente (
id_comprobante VARCHAR(7), 
fecha_comprobante DATE, 
total_comprobante DECIMAL(10,2), 
detalles_comprobante VARCHAR(100), 
FOREIGN KEY (id_comprobante) REFERENCES Comprobantes(id_comprobante)
);
go
 
--Tabla Devoluciones 15
CREATE TABLE Devoluciones (
id_devolucion VARCHAR(7) PRIMARY KEY, 
id_venta VARCHAR(7), 
id_producto VARCHAR(7), 
cantidad_devuelta INT, 
fecha_devolucion DATE,
monto_devolucion DECIMAL(10,2), 
FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
go

--Tabla Clientes_Beneficios 16
CREATE TABLE Clientes_Beneficios (
id_cliente VARCHAR(7), 
id_beneficio VARCHAR(7), 
fecha_obtencion DATE, 
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_beneficio) REFERENCES Beneficios(id_beneficio)
);
go

--INSERTAR DATOS DE PROVEEDOR
INSERT INTO Proveedores (id_proveedor, nombre, direccion, telefono, email, RUC) VALUES 
('P001', 'Jorge Luis Condori Robledo', 'Av Miraflores 333', '923456789', 'luis_jorgeeE@email.com', '123456789'),
('P002', 'Marco Aurelio Espinoza', 'Av. Toesaca 555', '987654321', 'espin_marco@email.com', '9876543210'),
('P003', 'Erik Jefferson Ordoñez Mita', 'Av. Siempre Viva 123', '952277534', 'lorenzo_enzz@email.com', '9999999990'),
('P004', 'Romeo Antoni Quispe Orellana', 'Avenida Los Carrera 2483', '(2)6359477', 'quisp_ant@email.com', '9999234990'),
('P005', 'Lucia Shirley Anchapuri Mendoza', 'Calle Cuevas 969', '952277534', 'l_ccc_shrley@email.com', '0099999990'),
('P006', 'Roman Joel Riquelme Gonzales', 'Calle Las Pimpinelas 840', '(32) 2857257', 'rqlme_10@email.com', '2299999990'),
('P007', 'Juan Alberto Farías Ugarte ', 'Calle Las Magnolias', '(52) 221354', 'far_juan@email.com', '9994499990'),
('P008', 'Cristian Alfonso Marín García', 'Av. Iquique 4674', '(32) 2879524', 'amrin_garcia99@email.com', '9554999990'),
('P009', 'Llivaro Francisco Fuentes Moreno', 'Calle Benjamín Vicuña Mackenna 1211', ' 55- 283326', 'moreno_fll3@email.com', '9999001990'),
('P010', 'Carlos Ramón Mariángel Candia', 'Avenida Los Carrera 2483', '(42) 414433', 'mariangel_car_candia@email.com', '9900239990');
go

--INSERTAR DATOS DE PRODUCTOS
INSERT INTO Productos (id_producto, nombre, descripcion, precio, marca, stock_disponible, id_proveedor_fk) VALUES 
('PD001', 'Computadora PC Core I5', 'Computadora', 1699, 'Halion', 10, 'P001'),
('PD002', 'Computadora PC Core I5, Ram 8gb', 'Computadora', 1799, 'Intel', 20, 'P002'),
('PD003', 'Laptop ROG Zephyrus Ryzen 9, Ram 16 gb', 'Laptop', 8000, 'Asus', 50, 'P003'),
('PD004', 'Laptop Matebook D15, Ram 8 gb', 'Laptop', 1699, 'HP', 4, 'P004'),
('PD005', 'Teclado Semi Mecanico Gamer Shiva K12', 'Teclado', 199, 'RedDragon', 2, 'P005'),
('PD006', 'Teclado gamer Xtreme GK100', 'Teclado', 299, 'Halion', 60, 'P006'),
('PD007', 'Monitor Mon Gamer de 32165HZ', 'Monitor', 889, 'Moni', 29, 'P007'),
('PD008', 'Monitor Gamer G27 165HZ', 'Monitor', 459, 'Gigabyte', 19, 'P008'),
('PD009', 'Microfono Quadcast Streaming PC,PS4, PS5', 'Microfono', 299, 'Halion', 13, 'P009'),
('PD010', 'Microfono Podcast PC', 'Microfono', 199, 'HTrust', 8, 'P010');
go

--INSERTAR DATOS DE INVENTARIO

INSERT INTO Inventario (id_inventario, cantidad_stock, fecha_ultimo_movimiento, id_producto_fk) VALUES 
('I001', 10, '2024-08-25', 'PD001'),
('I002', 20, '2024-08-24', 'PD002'),
('I003', 55, '2024-08-23', 'PD003'),
('I004', 25, '2024-08-23', 'PD004'),
('I005', 30, '2024-08-23', 'PD005'),
('I006', 12, '2024-08-23', 'PD006'),
('I007', 6, '2024-08-23', 'PD007'),
('I008', 55, '2024-08-23', 'PD008'),
('I009', 11, '2024-08-23', 'PD009'),
('I010', 56, '2024-08-23', 'PD010');
go

--INSERTAR DATOS EN CLIENTES

INSERT INTO Clientes (id_cliente, nombre, direccion, telefono, email) VALUES 
('C001', 'Juan Diego Pérez Odria', 'Calle Falsa 123', '444-5678', 'juanperez@email.com'),
('C002', 'María Luisa Rodríguez Villafuerte', 'Av. Siempre Viva 456', '666-7890', 'mrodriguez@email.com'),
('C003', 'Omar Enrique Maturana Salinas', 'Camino La Línea 111', '(2) 8310814', 'jerabraukehe-5478@yopmail.com'),
('C004', 'María Ercira Contreras Mella', 'Calle Alcalde Pablo Valdovinos Jara 1342', '(43) 322376', 'minauceceireu-3800@yopmail.com'),
('C005', 'José Armando Villacura Muñoz', 'Calle Radal 1532', '(2) 7865699', 'woucuttoneujo-9139@yopmail.com'),
('C006', 'Yazmín Carolina Filún López', 'Los Manzanos 2569', '8520380', 'guzigadeuwe-1174@yopmail.com'),
('C007', 'Facundo Navarro González', 'Pasaje Zapahuira, 2 - Yaganes 812', '(9) 77283056', 'lelubrilake-9597@yopmail.com'),
('C008', 'Lucca Darío Navarro González', 'Camino Melipilla 17800 sector Santa Ana De Chena,  parcela 9 Lote D', '(5) 537241090', 'fisohuquepu-9282@yopmail.com'),
('C009', 'José Eliseo Bernier García', 'Vicente Reyes 1290', '61 225198', 'keuvubrattoidde-6844@yopmail.com'),
('C010', 'Pedro Juan Lima González', 'Calle Urmeneta 390', '(65) 253140', 'refreyabreimma-8946@yopmail.com');
go

--INSERTAR DATOS EN TABLA PEDIDOS
INSERT INTO Pedidos (id_pedido, id_cliente, fecha_pedido, total, estado)
VALUES 
('PED001', 'C001', '2024-01-01', 100.00, 'Cancelado'),
('PED002', 'C002', '2024-01-02', 120.00, 'Cancelado'),
('PED003', 'C003', '2024-01-03', 30.00, 'Enviado'),
('PED004', 'C004', '2024-05-01', 400.00, 'Devuelto'),
('PED005', 'C005', '2024-05-01', 500.00, 'Rechazado'),
('PED006', 'C006', '2024-02-03', 500.00, 'Enviado'),
('PED007', 'C007', '2024-03-12', 500.00, 'Enviado'),
('PED008', 'C008', '2024-01-21', 100.00, 'Cancelado'),
('PED009', 'C009', '2024-06-16', 200.00, 'Cancelado'),
('PED010', 'C010', '2024-08-25', 300.00, 'Pendiente');
go

--INSERTAR DATOS EN DETALLE_PEDIDOS

INSERT INTO Detalles_Pedidos (id_detalle, id_pedido, id_producto, cantidad, precio_unitario)
VALUES 
('D00001', 'PED001', 'PD001', 1, 20.00),
('D00002', 'PED002', 'PD002', 5, 22.00),
('D00003', 'PED003', 'PD003', 5, 12.00),
('D00004', 'PED004', 'PD004', 8, 7.00),
('D00005', 'PED005', 'PD005', 20, 12.00),
('D00006', 'PED006', 'PD006', 54, 2.00),
('D00007', 'PED007', 'PD007', 23, 4.00),
('D00008', 'PED008', 'PD008', 11, 41.00),
('D00009', 'PED009', 'PD009', 8, 100.00),
('D00010', 'PED010', 'PD010', 15, 35.00);
go

--INSERTAR DATOS DE SUPERVISORES
INSERT INTO Supervisores (id_supervisor, nombre, apellido, email, telefono, DNI)
VALUES 
('S0001', 'Luigui Damian', 'Martínez Negrete', 'luis.martinez@email.com', '544555555', '74321098'),
('S0002', 'Marco Eduardo', 'Rivas Castillo', 'potefiguma-9952@yopmail.com', '944555555', '73321098'),
('S0003', 'Maily Ann', 'Chamorro Chiang', 'tacrauttotrojeu-6528@yopmail.com', '844555555', '72321098'),
('S0004', 'Pablo Andrés', 'Olmos Martínez', 'graveuhalliddo-7749@yopmail.com', '744555555', '71321098'),
('S0005', 'Victor Gregorio', 'Jara Bravo', 'teicouxoukadoi-2170@yopmail.com', '564555555', '75321098'),
('S0006', 'Jair Anthony', 'Flores Encinas', 'crifiwoxuna-3193@yopmail.com', '545555555', '74321098'),
('S0007', 'Narris Alexander', 'Angulo Abadia', 'preprappeunnite-3625@yopmail.com', '444555555', '76321098'),
('S0008', 'Fernando De La Cruz', 'Opazo Opazo', 'meimmunnehetti-3550@yopmail.com', '344555555', '77321098'),
('S0009', 'Mauricio Edwin', 'Macalusso Drake', 'heyetoucrocro-2052@yopmail.com', '244555555', '78321098'),
('S0010', 'José Martín', 'Jaramillo Atero', 'dehuffoprellu-6454@yopmail.com', '544155555', '79321098');
go

--INSERTAR DATOS DE VENDEDORES

INSERT INTO Vendedores (id_vendedor, nombre, apellido, email, telefono, id_supervisor, DNI)
VALUES 
('V00001', 'María Jose', 'González Prada', 'maria.jsgonzalez@email.com', '987654321', 'S0001', '87654321'),
('V00002', 'Krisna Valentina', 'González Urrutia', 'krisna.urrutia@email.com', '977654321', 'S0002', '88654321'),
('V00003', 'Norma Verónica', 'Muñoz Santander', 'gosibrennodau-8467@yopmail.com', '987654321', 'S0003', '85554321'),
('V00004', 'Álvaro Igor', 'Monares Prado', 'wuneicattucoi-6030@yopmail.com', '987644321', 'S0004', '80054321'),
('V00005', 'Joaquín Alejandro', 'Aedo Sánchez', 'voihidaveyu-4563@yopmail.com', '967654321', 'S0005', '87611321'),
('V00006', 'Henry Steven', 'Vásquez López', 'geipruloiveppo-5070@yopmail.com', '955654321', 'S0006', '80654321'),
('V00007', 'Javier Mauricio', 'Saéz Sobino', 'xamoucredottou-8002@yopmail.com', '944404321', 'S0007', '81654321'),
('V00008', 'Bryan Alfredo', 'Palma Molina', 'simmeummajeli-4434@yopmail.com', '987333321', 'S0008', '82654321'),
('V00009', 'Mario Ernesto', 'Rojas Cárcamo', 'goddibouweuja-6642@yopmail.com', '987111321', 'S0009', '83654321'),
('V00010', 'Heidi Pamela', 'Espejo Ticona', 'bonaufreuddopau-2615@yopmail.com', '922254321', 'S0010', '84654321');
go


--INSERTAR DATOS EN VENTAS

INSERT INTO Ventas (id_venta, id_cliente, id_vendedor, fecha_venta, total, metodo_pago, comision)
VALUES 
('VT0001', 'C001', 'V00001', '2024-01-01', 100.00, 'Efectivo', 10.00),
('VT0002', 'C002', 'V00002', '2024-02-01', 200.00, 'Efectivo', 20.00),
('VT0003', 'C003', 'V00003', '2024-02-01', 150.00, 'Transferencia', 15.00),
('VT0004', 'C004', 'V00004', '2024-03-06', 10.00, 'Efectivo', 1.00),
('VT0005', 'C005', 'V00005', '2024-03-08', 20.00, 'Efectivo', 2.00),
('VT0006', 'C006', 'V00006', '2024-04-15', 300.00, 'Efectivo', 30.00),
('VT0007', 'C007', 'V00007', '2024-05-03', 400.00, 'Transferencia', 40.00),
('VT0008', 'C008', 'V00008', '2024-05-12', 200.00, 'Efectivo', 20.00),
('VT0009', 'C009', 'V00009', '2024-08-25', 600.00, 'Transferencia', 60.00),
('VT0010', 'C010', 'V00010', '2024-08-25', 800.00, 'Transferencia', 80.00);
go

--INSERTAR DATOS EN BENEFICIO

INSERT INTO Beneficios (id_beneficio, descripcion, monto_minimo_compra, porcentaje_descuento, cantidad_productos_regalo, fecha_inicio, fecha_fin)
VALUES 
('B00001', 'Descuento por compra mayor a S/.200', 200.00, 5.00, 2, '2024-01-01', '2024-12-31'),
('B00002', 'Descuento por compra mayor a S/.100', 100.00, 5.00, 1, '2024-01-01', '2024-12-31'),
('B00003', 'Descuento por compra mayor a S/.50', 50.00, 5.00, 1, '2024-01-01', '2024-12-31'),
('B00004', 'Descuento por compra mayor a S/.500', 500.00, 20.00, 2, '2024-01-01', '2024-12-31'),
('B00005', 'Descuento por compra mayor a S/.1000', 1000.00, 30.00, 2, '2024-01-01', '2024-12-31'),
('B00006', 'Descuento por compra mayor a S/.1500', 1500.00, 17.00, 1, '2024-01-01', '2024-12-31'),
('B00007', 'Descuento por compra mayor a S/.5000', 5000.00, 50.00, 1, '2024-01-01', '2024-12-31'),
('B00008', 'Descuento por compra mayor a S/.700', 700.00, 25.00, 1, '2024-01-01', '2024-12-31'),
('B00009', 'Descuento por compra mayor a S/.2000', 2000.00, 35.00, 1, '2024-01-01', '2024-12-31'),
('B00010', 'Descuento por compra mayor a S/.3000', 3000.00, 40.00, 2, '2024-01-01', '2024-12-31');
go

--INSERTAR DATOS EN ENVIOS
INSERT INTO Envios (id_envio, id_pedido, fecha_envio, estado, direccion_envio)
VALUES 
('E00001', 'PED001', '2024-01-15', 'Entregado', 'Calle Juan Antonio Alvarado, 1941'),
('E00002', 'PED002', '2024-02-05', 'Entregado', 'Calle Maximiliano Casas 477'),
('E00003', 'PED003', '2024-02-10', 'Entregado', 'Calle Azapa 1839'),
('E00004', 'PED004', '2024-03-12', 'Entregado', 'Avenida Luis Thayer Ojeda 166'),
('E00005', 'PED005', '2024-03-13', 'Entregado', 'Calle Carrion 1365'),
('E00006', 'PED006', '2024-04-25', 'Entregado', 'Avenida Costanera Del Estrecho 99'),
('E00007', 'PED007', '2024-04-13', 'Entregado', 'Calle Cinco Oriente 110'),
('E00008', 'PED008', '2024-05-01', 'Entregado', 'Avenida Gabriela Oriente 1096'),
('E00009', 'PED009', '2024-05-28', 'Entregado', 'Calle Nueva York 80'),
('E00010', 'PED010', '2024-08-15', 'Entregado', 'Calle Merced 832');
go


--INSERTAR DATOS EN DETALLES VENTAS
INSERT INTO Detalles_Ventas (id_detalle, id_venta, id_producto, cantidad, precio_unitario)
VALUES 
('DV0001', 'VT0001', 'PD001', 2, 100.00),
('DV0002', 'VT0002', 'PD002', 3, 200.00),
('DV0003', 'VT0003', 'PD003', 4, 300.00),
('DV0004', 'VT0004', 'PD004', 5, 400.00),
('DV0005', 'VT0005', 'PD005', 6, 800.00),
('DV0006', 'VT0006', 'PD006', 7, 900.00),
('DV0007', 'VT0007', 'PD007', 7, 1500.00),
('DV0008', 'VT0008', 'PD008', 5, 200.00),
('DV0009', 'VT0009', 'PD009', 5, 300.00),
('DV0010', 'VT0010', 'PD010', 5, 300.00);
go

--INSERTAR DATOS EN COMPROBANTES
INSERT INTO Comprobantes (id_comprobante, id_venta, id_vendedor, fecha_comprobante, total_comprobante, tipo_comprobante)
VALUES 
('C00001', 'VT0001', 'V00001', '2024-01-11', 200.00, 'Factura'),
('C00002', 'VT0002', 'V00004', '2024-01-16', 400.00, 'Factura'),
('C00003', 'VT0003', 'V00005', '2024-02-20', 600.00, 'Boleta'),
('C00004', 'VT0004', 'V00005', '2024-03-15', 800.00, 'Factura'),
('C00005', 'VT0005', 'V00003', '2024-03-17', 700.00, 'Factura'),
('C00006', 'VT0006', 'V00002', '2024-05-22', 1000.00, 'Factura'),
('C00007', 'VT0007', 'V00002', '2024-05-18', 2000.00, 'Boleta'),
('C00008', 'VT0008', 'V00002', '2024-06-06', 250.00, 'Factura'),
('C00009', 'VT0009', 'V00002', '2024-07-02', 400.00, 'Factura'),
('C00010', 'VT0010', 'V00001', '2024-08-25', 500.00, 'Factura');
go

--INSERTAR DATOS EN TABLA DE COMPROBANTE SIN CLIENTE

INSERT INTO Comprobantes_Sin_Cliente (id_comprobante, fecha_comprobante, total_comprobante, detalles_comprobante)
VALUES 
('C00001', '2024-01-15', 150.00, 'Venta sin cliente'),
('C00002', '2024-03-19', 150.00, 'Venta sin cliente'),
('C00003', '2024-01-10', 150.00, 'Venta sin cliente'),
('C00004', '2024-05-21', 150.00, 'Venta sin cliente'),
('C00005', '2024-06-08', 150.00, 'Venta sin cliente'),
('C00006', '2024-02-01', 150.00, 'Venta sin cliente'),
('C00007', '2024-02-18', 150.00, 'Venta sin cliente'),
('C00008', '2024-07-11', 150.00, 'Venta sin cliente'),
('C00009', '2024-08-05', 150.00, 'Venta sin cliente'),
('C00010', '2024-08-25', 150.00, 'Venta sin cliente');
go

--INSERTAR DATOS EN DEVOLUCIONES
INSERT INTO Devoluciones (id_devolucion, id_venta, id_producto, cantidad_devuelta, fecha_devolucion, monto_devolucion)
VALUES 
('DV00001', 'VT0001', 'PD001', 2, '2024-01-20', 50.00),
('DV00002', 'VT0002', 'PD002', 1, '2024-01-21', 55.00),
('DV00003', 'VT0003', 'PD003', 1, '2024-02-02', 500.00),
('DV00004', 'VT0004', 'PD004', 1, '2024-02-07', 200.00),
('DV00005', 'VT0005', 'PD005', 1, '2024-03-10', 45.00),
('DV00006', 'VT0006', 'PD006', 1, '2024-03-14', 35.00),
('DV00007', 'VT0007', 'PD007', 3, '2024-05-20', 125.00),
('DV00008', 'VT0008', 'PD008', 1, '2024-05-25', 155.00),
('DV00009', 'VT0009', 'PD009', 5, '2024-06-15', 255.00),
('DV00010', 'VT0010', 'PD010', 2, '2024-06-18', 85.00);
go

-- INSERTAR DATOS EN CLIENTES_BENEFICIOS
INSERT INTO Clientes_Beneficios (id_cliente, id_beneficio, fecha_obtencion)
VALUES 
('C001', 'B00001', '2024-01-01'),
('C002', 'B00002', '2024-01-02'),
('C003', 'B00003', '2024-02-10'),
('C004', 'B00004', '2024-02-15'),
('C005', 'B00005', '2024-03-11'),
('C006', 'B00006', '2024-03-17'),
('C007', 'B00007', '2024-04-20'),
('C008', 'B00008', '2024-04-22'),
('C009', 'B00009', '2024-06-01'),
('C010', 'B00010', '2024-07-18');
go

--(1)Vista para ver los detalles de las ventas:

CREATE VIEW Ventas_Detalles AS
SELECT v.id_venta, v.id_cliente, v.fecha_venta, dv.id_producto, dv.cantidad, dv.precio_unitario
FROM Ventas v
JOIN Detalles_Ventas dv ON v.id_venta = dv.id_venta;
go

--(2)Vista para ver los comprobantes de las ventas:

CREATE VIEW Comprobantes_Ventas AS
SELECT c.id_comprobante, c.id_venta, c.id_vendedor, c.fecha_comprobante, c.total_comprobante, c.tipo_comprobante
FROM Comprobantes c
JOIN Ventas v ON c.id_venta = v.id_venta;
go

--(3)Vista para ver las devoluciones de las ventas:

CREATE VIEW Devoluciones_Ventas AS
SELECT d.id_devolucion, d.id_venta, d.id_producto, d.cantidad_devuelta, d.fecha_devolucion, d.monto_devolucion
FROM Devoluciones d
JOIN Ventas v ON d.id_venta = v.id_venta;
go

--(4)Vista para ver los beneficios de los clientes:

CREATE VIEW Clientes_Beneficios_Vista AS
SELECT cb.id_cliente, cb.id_beneficio, b.descripcion, cb.fecha_obtencion
FROM Clientes_Beneficios cb
JOIN Beneficios b ON cb.id_beneficio = b.id_beneficio;
go

--(5)Vista para ver las ventas totales por vendedor:

CREATE VIEW Ventas_Totales_Vendedor AS
SELECT v.id_vendedor, SUM(v.total) AS Ventas_Totales
FROM Ventas v
GROUP BY v.id_vendedor;
go

--(1)Procedimiento para agregar un nuevo cliente y sus beneficios:

CREATE PROCEDURE AgregarClienteBeneficio
@id_cliente VARCHAR(7),
@id_beneficio VARCHAR(7),
@fecha_obtencion DATE
AS
BEGIN
INSERT INTO Clientes (id_cliente, nombre, apellido, email, telefono, DNI)
VALUES (@id_cliente, 'Nombre', 'Apellido', 'email', 'telefono', 'DNI');

INSERT INTO Clientes_Beneficios (id_cliente, id_beneficio, fecha_obtencion)
VALUES (@id_cliente, @id_beneficio, @fecha_obtencion);

END
go

--(2)Procedimiento para actualizar el estado de un envío:

CREATE PROCEDURE ActualizarEstadoEnvio
@id_envio VARCHAR(7),
@estado VARCHAR(20)
AS
BEGIN
UPDATE Envios
SET estado = @estado
WHERE id_envio = @id_envio;
END
go

--(3)Procedimiento para eliminar un producto de una venta:

CREATE PROCEDURE EliminarProductoVenta
@id_venta VARCHAR(7),
@id_producto VARCHAR(7)
AS
BEGIN
DELETE FROM Detalles_Ventas
WHERE id_venta = @id_venta AND id_producto = @id_producto;
END
go

--(4) Procedimiento para agregar un nuevo comprobante sin cliente:

CREATE PROCEDURE AgregarComprobanteSinCliente
@id_comprobante VARCHAR(7),
@fecha_comprobante DATE,
@total_comprobante DECIMAL(10,2),
@detalles_comprobante VARCHAR(100)
AS
BEGIN
INSERT INTO Comprobantes_Sin_Cliente (id_comprobante, fecha_comprobante, total_comprobante, detalles_comprobante)
VALUES (@id_comprobante, @fecha_comprobante, @total_comprobante, @detalles_comprobante);
END
go

--(5)Procedimiento para actualizar el precio unitario de un producto en una venta:

CREATE PROCEDURE ActualizarPrecioUnitario
@id_venta VARCHAR(7),
@id_producto VARCHAR(7),
@precio_unitario DECIMAL(10,2)
AS
BEGIN
	UPDATE Detalles_Ventas
	SET precio_unitario = @precio_unitario
	WHERE id_venta = @id_venta AND id_producto = @id_producto;
END
go

-- (6)Procedimiento para agregar un nuevo vendedor:

CREATE PROCEDURE AgregarVendedor
@id_vendedor VARCHAR(7),
@nombre VARCHAR(50),
@apellido VARCHAR(50),
@email VARCHAR(100),
@telefono VARCHAR(20)
AS
BEGIN
INSERT INTO Vendedores (id_vendedor, nombre, apellido, email, telefono)
VALUES (@id_vendedor, @nombre, @apellido, @email, @telefono);
END

--(7)Procedimiento para eliminar un beneficio de un cliente:

CREATE PROCEDURE EliminarBeneficioCliente
@id_cliente VARCHAR(7),
@id_beneficio VARCHAR(7)
AS
BEGIN
DELETE FROM Clientes_Beneficios
WHERE id_cliente = @id_cliente AND id_beneficio = @id_beneficio;
END
go

--(8) Procedimiento para actualizar la dirección de envío de una venta:

CREATE PROCEDURE ActualizarDireccionEnvio
@id_venta VARCHAR(7),
@direccion_envio VARCHAR(100)
AS
BEGIN
UPDATE Envios
SET direccion_envio = @direccion_envio
WHERE id_venta = @id_venta;
END

--(9) Procedimiento para agregar un nuevo producto:

CREATE PROCEDURE AgregarProducto
@id_producto VARCHAR(7),
@nombre VARCHAR(50),
@descripcion VARCHAR(100),
@precio DECIMAL(10,2)
AS
BEGIN
INSERT INTO Productos (id_producto, nombre, descripcion, precio)
VALUES (@id_producto, @nombre, @descripcion, @precio);
END
go

--(10) Procedimiento para eliminar una venta:

CREATE PROCEDURE EliminarVenta
@id_venta VARCHAR(7)
AS
BEGIN
DELETE FROM Ventas
WHERE id_venta = @id_venta;
END
go


