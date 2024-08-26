
create database proyectogrupo5

use  proyectogrupo5

CREATE TABLE PROVEEDOR (
(COD_PROVEEDOR INT PRIMARY KEY,
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
 
 --Supervisores

CREATE TABLE SUPERVISORES (
ID_SUPERVISOR VARCHAR(10) PRIMARY KEY,
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

   --PERSONAL DE VENTA

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

INSERT INTO PERSONAL VALUES(001,44369855,'ANGEL SUTIZAL',921755012,'ANGEL_SUTIZAL@CIBER.COM',1500.00);
INSERT INTO PERSONAL VALUES(002,40254414,'CRISTINA QUISPE',918752014,'CRISTINA_QUISPE@CIBER.COM',1500.00);
INSERT INTO PERSONAL VALUES(003,43758486,'INES CORTEZ',921751422,'INES_CORTEZ@CIBER.COM',1800.00);
INSERT INTO PERSONAL VALUES(004,44369855,'GINGER TEVEZ',921757811,'GINGER_TEVEZ@CIBER.COM',1800.00);
INSERT INTO PERSONAL VALUES(005,44369855,'DOMINIC SANCHEZ',914785212,'NICO_SANCHEZ@CIBER.COM',1500.00);
INSERT INTO PERSONAL VALUES(006,44369855,'PAUL TORRES',901458012,'PAUL_TORRES@CIBER.COM',1800.00);
INSERT INTO PERSONAL VALUES(007,43758486,'ANIBAL CAMPOS',921751887,'ANIBAL_CAMPOS@CIBER.COM',1500.00);
INSERT INTO PERSONAL VALUES(008,44369855,'ANDRES PONCE',921757845,'ANDRES_PONCE@CIBER.COM',1500.00);
INSERT INTO PERSONAL VALUES(009,44369855,'VICTOR CORNEJO',914785444,'VIC_CORNEJO@CIBER.COM',1500.00);
INSERT INTO PERSONAL VALUES(010,44369855,'CARLOS PORRAS',982418012,'PAUL_TORRES@CIBER.COM',1500.00);

SELECT*FROM PERSONAL
 
 --Clientes

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

INSERT INTO CLIENTE VALUES(1,'20550227470','DOCORP-PERU','AV CONQUISTADORES 256 DPT 801','012554798','DOCORP-PERU142@GMAIL.COM');
INSERT INTO CLIENTE VALUES(2,'20550224060','DATACENTER SAC','JR CAMINO REAL 504','012554798','DATACENTER34@GMAIL.COM');
INSERT INTO CLIENTE VALUES(3,'20550222458','PEDRO SANCHEZ EIRL','AV ANGAMOS 245 SAN ISIDRO','013548547','PEDRO_SANCHEZ@GMAIL.COM');
INSERT INTO CLIENTE VALUES(4,'20550185180','RECOVERYDATAPROJECT SAC','AV CAMANA 2400 DPTO 210','987506897','RECOVERYDATAPROJECT@GMAIL.COM');
INSERT INTO CLIENTE VALUES(5,'20502547850','DOCTORPC EIRL','AV GARCILAZO DE LA VEGA 420','013345789','JCSYSTEMAS@GMAIL.COM');
INSERT INTO CLIENTE VALUES(6,'20750244470','DLP SERVICIOS','AV CONQUISTADORES 256 DPT 401','012446798','SOPORTE@DLPSERVICIOS.COM');
INSERT INTO CLIENTE VALUES(7,'20441274060','AMPER SERVICIOS SAC','CALLE LOS NEGIOCIOS 304','012174798','AMPER-SERVICIOS@GMAIL.COM');
INSERT INTO CLIENTE VALUES(8,'10443698554','CARLOS LEON PERALTA','AV PEZET 245 SAN ISIDRO','014548541','CARLOSLEONPERALTA@OUTLOOK.COM');
INSERT INTO CLIENTE VALUES(9,'20550185180','SERVEROPERADORES.SAC','AV SAENZ PEÑA 210','913406897','SERVEROPERADORES@GMAIL.COM');
INSERT INTO CLIENTE VALUES(10,'20254587850','INCOTMEX SAC','AV LOS NOGALES MZ A LTE 10','943345775','SERVICIOSINFORMATICOS@INCOTMEX.COM');

SELECT * FROM CLIENTE

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
