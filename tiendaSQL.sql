create table tipo_personal(
	idtipo_personal int primary key,
	tipo_personal char(50)
);

create table personal_tipo_personal(
	idpersonal int,
	idtipo_personal int,
	estado boolean,
	foreign key (idtipo_personal) references tipo_personal(idtipo_personal),
	foreign key (idpersonal) references personal(idpersonal)
);

create table personal(
	idpersonal int primary key,
	cedularuc int,
	apellido1 varchar(50),
	apellido2 varchar(50),
	nombre varchar(50),
	direccioncli varchar(50),
	fax varchar(50),
	email varchar(50),
	celular varchar(10),
	fijo varchar(50),
	fechanacimiento date
);

create table ordenes(
	idorden int primary key,
	idempleado int,
	idcliente int,
	fechaorden date,
	foreign key (idempleado) references personal(idpersonal),
	foreign key (idcliente) references personal(idpersonal)
);

create table detalle_ordenes(
	idorden int,
	idproducto int,
	cantidad int,
	foreign key (idproducto) references productos(idproducto),
	foreign key (idorden) references ordenes(idorden)
);

create table productos(
	idproducto int primary key,
	idproveedor int,
	idcategoria int,
	descripcion varchar(100),
	preciounit int,
	existencia int,
	foreign key (idcategoria) references categorias(idcategoria)
);

create table categorias(
idcategoria int primary key,
categoria varchar(50)
);