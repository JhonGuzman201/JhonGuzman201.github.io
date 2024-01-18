create table enfermedad(
	idenfermedad int primary key,
	descripcion varchar(250)
);

create table atencion_detalle(
	idatencion int,
	idenfermedad int,
	tratamiento_posible varchar(250)
);

create table atencion(
	idatencion int primary key,
	idanimal int,
	idpersona int,
	fecha date,
	total int
);

create table persona(
	idpersona int primary key,
	cedula varchar(10),
	apellido1 varchar(50),
	apellido2 varchar(50),
	nombre varchar(50),
	fecha_nacimiento date,
	idtipo_genero int,
	idtipo_estado_civil int,
	idtipo_pais_residencia int,
	idtipo_provincia_residencia int,
	idtipo_canton_residencia int
);

create table ubicacion_geografica(
	idubicacion_geografica int primary key,
	idubicacion_geografica_padre int,
	nombre varchar(100),
	habilitado boolean,
	bloqueado boolean,
	codigo_parroquia_dpa int
);

insert into ubicacion_geografica (idubicacion_geografica, idubicacion_geografica_padre, nombre, habilitado, bloqueado, codigo_parroquia_dpa) Values (1, null,  'Ecuador', 'true', null, 1);
insert into ubicacion_geografica (idubicacion_geografica, idubicacion_geografica_padre, nombre, habilitado, bloqueado, codigo_parroquia_dpa) Values (2, 1,  'Manabi', 'true', null, 2);
insert into ubicacion_geografica (idubicacion_geografica, idubicacion_geografica_padre, nombre, habilitado, bloqueado, codigo_parroquia_dpa) Values (3, 2,  'Guayas', 'true', null, 3);
insert into ubicacion_geografica (idubicacion_geografica, idubicacion_geografica_padre, nombre, habilitado, bloqueado, codigo_parroquia_dpa) Values (5, 3,  'Manta', 'true', null, 4);




create view vista2 as 
select ubi1.nombre as provincia, ubi2.nombre as pais from ubicacion_geografica as ubi1
inner join ubicacion_geografica as ubi2 on ubi2.idubicacion_geografica_padre = ubi1.idubicacion_geografica 
where ubi1.nombre = 'Manabi';

select * from vista2






select * from 

create table tipo(
	idtipo int,
	idcategoria_tipo int,
	nombre varchar(100),
	habilitado boolean,
	bloqueado boolean,
	idtipo_padre_1 int,
	idtipo_giies varchar(50),
	idtipo_siit varchar(50),
	idtipo_padre_2 varchar(50)
);


alter table nombretabla add constraint nombrerestriccion foreign key (llaveforanea) references nombredelatabla2 (campollaveprimary)

alter table atencion_detalle add constraint constraint1 foreign key (idenfermedad) references enfermedad (idenfermedad);
alter table atencion_detalle add constraint constraint2 foreign key (idatencion) references atencion (idatencion);

alter table atencion add constraint constraint1 foreign key (idpersona) references persona (idpersona);

alter table persona add constraint constraint1 foreign key (idtipo_pais_residencia) references ubicacion_geografica (idubicacion_geografica);
alter table persona add constraint constraint2 foreign key (idtipo_provincia_residencia) references ubicacion_geografica (idubicacion_geografica);
alter table persona add constraint constraint3 foreign key (idtipo_canton_residencia) references ubicacion_geografica (idubicacion_geografica);



alter table ubicacion_geografica add constraint constraint41 foreign key (idubicacion_geografica_padre) references ubicacion_geografica (idubicacion_geografica)



