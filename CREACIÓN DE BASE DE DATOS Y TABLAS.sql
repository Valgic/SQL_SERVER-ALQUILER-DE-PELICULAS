create table CLIENTE (
   ID_CLIENTE            int                  not null,
   ID_MEMBRESIA     int                 null,
   NOMBRES_CLIENTE       varchar(50)          null,
   APELLIDOS_CLIENTE     varchar(50)          null,
   IDENTIFICACION_CLIENTE varchar(20)          null,
   GENERO               varchar(20)          null,
   TELEFONO_CONVENCIONAL varchar(50)          null,
   TELEFONO_MOVIL        varchar(50)          null,
   EMAIL_CLIENTE         varchar(30)          null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
)
go
create table MEMBRESIA (
   ID_MEMBRESIA             int                  not null,
   FECHA_EXPEDICION     datetime        null,
   FECHA_EXPIRACION     datetime        null,
   constraint PK_MEMBRESIA primary key (ID_MEMBRESIA)
)
go
create table PELICULA (
   ID_PELICULA          int                  not null,
   TITULO_PELICULA         varchar(50)          null,
   PAIS_PELICULA              varchar(30)          null,
A�O_PELICULA              int          null,
GENERO_PELICULA              varchar(20)          null,
IDIOMA_PELICULA              varchar(20)          null,
   PRECIO_PELICULA   numeric(5,2)         null,
   FECHA_ULTIMOALQUILER   datetime             null,
   constraint PK_PELICULA primary key (ID_PELICULA)
)
go
create table ALQUILER_PELICULA (
   ID_PELICULA          int                  not null,
   ID_CLIENTE            int                  not null,
   ID_ALQUILER_PELICULA           int                  not null,
   FECHAENTREGA_PELICULA  datetime     null,
   FECHASALIDA_PELICULA  datetime      null,
   constraint PK_ALQUILER_PELICULA primary key (ID_PELICULA, ID_CLIENTE,
 ID_ALQUILER_PELICULA)
)
go



