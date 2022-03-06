/* Ejercicios de clase
 * Tarea 1. Clase 1 Parte 1
 * Alumna: Daniela Lizeth Molina Barrera
 * Github: @danielalmolina
---------------------------------------- */

/*  1. Crea una tabla que se llame cursos con las siguientes columnas.
 * Determina el mejor tipo de dato tomando en cuenta el ejemplo mostrado: */

create table cursos2 (
	id_instructor int,
	id_curso int,
	nombre_curso varchar(255),
	duracion int,
	campo varchar(255),
	fecha_inicio date,
	fecha_fin date,
	costo int
);


/* 2. Inserta los siguientes valores a la tabla: */

insert into cursos2 values 
	(1, 1, 'Tableu', 120, 'Data Analytics', date '2022/06/01', date '2022/09/30', 4900),
	(1, 2, 'Power BI', 120, 'Data Analytics', date '2022/10/01', date '2022/12/31', 4850),
	(2, 3, 'Google Data Studio', 60, 'Data Analytics', date '2022/06/01', date '2022/09/30', 2500),
	(3, 4, 'SQL Avanzado', 40, 'Data Analytics', date '2022/10/01', date '2022/12/31', 2500),
	(4, 5, 'Apache Spark', 60, 'Data Engineer', date '2022/06/01', date '2022/09/30', 4900),
	(4, 6, 'Apache Kafka', 60, 'Data Engineer', date '2022/10/01', date '2022/12/31', 4850),
	(4, 7, 'Big Query', 60, 'Data Engineer', date '2022/06/01', date '2022/09/30', 4500),
	(3, 8, 'SQL Avanzado', 40, 'Data Engineer', date '2022/10/01', date '2022/12/31', 2500)
	;
	
/* 3. Realiza los siguientes queries en la tabla cursos creada : */
	
	/* a. Selecciona la fecha_inicio y fecha_fin de cada curso */
	select nombre_curso, fecha_inicio, fecha_fin
	from cursos2;
	
	/* b. Selecciona los cursos que no son de Data Analytics */ 
	select *
	from cursos2
	where campo != 'Data Analytics';

	/* c. Selecciona los cursos con una duración mayor a 60 horas */
	select *
	from cursos2
	where duracion > 60;

	/* d. Selecciona los cursos que se van a impartir entre Julio y Agosto de 2022 
	 * (No importa que no sea la duración completa) */ 
	select *
	from cursos2
	where fecha_inicio < date '2022/07/01' and  fecha_inicio < date '2022/08/30';


	/* e. Haz un query que ayude a determinar los id únicos de los instructores */
	select id_instructor, nombre_curso 
	from cursos2
	
	
	
	