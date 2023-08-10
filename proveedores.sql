CREATE TABLE Proveedores (
	codigoProveedor SERIAL PRIMARY KEY,
	nombre VARCHAR (120),
	direccion VARCHAR (120),
	ciudad VARCHAR (120),
	providencia VARCHAR (150)
	
);

CREATE TABLE Categorias (
	
	codigoCategorias SERIAL PRIMARY KEY ,
	nombreCategoria VARCHAR (150)


);


CREATE TABLE Piezas (
	
	codigoPiezas SERIAL PRIMARY KEY,
	nombre VARCHAR (150),
	color VARCHAR (150),
	precio NUMERIC (10),
	codigoCategorias INT REFERENCES categorias(codigoCategorias)
	
);

CREATE TABLE Suministros (
	codigoSuministros SERIAL PRIMARY KEY,
	codigoProveedor INT REFERENCES Proveedores(codigoProveedor),
	codigoPiezas INT REFERENCES piezas (codigoPiezas),
	cantidad INT,
	fecha DATE 
	
);