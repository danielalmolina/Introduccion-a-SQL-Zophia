/* Ejercicios de clase 
Alumna: Daniela Lizeth Molina Barrera
Github: @danielalmolina
---------------------------------------- */

/* 
* 1. Realiza los siguientes queries con la tabla de empleados:
*/

/* a. Obtén los empleados cuya antigüedad sea anterior al año 2022.*/
select *
from empleados 
where antiguedad < DATE '2022/01/01';

/* b. Ordena los empleados por antigüedad y filtra a aquellos que no trabajan en
Finanzas.*/
select *
from empleados 
where departamento != 'Finanzas'
order by antiguedad ;

/* c. Ordena los empleados por antigüedad de acuerdo a su departamento y pon
el salario promedio por departamento. (no me sale) */
select avg(salario) as avg_salario, departamento
from empleados
group by departamento;

/* d. Obtén el salario máximo por país a excepción de los empleados de Argentina
(AR). */
select max(salario) as max_salario, pais
from empleados 
where pais != 'AR'
group by pais;

/* e. Obtén la lista de países que tengan más de un empleado, con su respectiva
cantidad de empleados. */
select count(*) as num_empleados, pais 
from empleados 
group by pais
having count(*) > 1;


/*
 * 2. Realiza los siguientes queries con la tabla de empleados:
 */

/* a. Obtén en una sola columna las iniciales de cada empleado. Ejemplo: GM */
select concat(substring(nombre,1,1), substring(apellido ,1,1))  as iniciales
from empleados;

/* b. Reemplaza el año 2022 por 2019 en la columna de antiguedad. (no me sale)*/
select replace (antiguedad, date '2022','2019') as nueva_antiguedad
from empleados


/* c. Calcula la potencia al cuadrado de los salarios de los empleados. */
select power (salario,2) as salario_cuadrado, id_empleado
from empleados;


/* d. Haz que el email de todos los empleados tenga ahora este formato:
ana.sosa@zophia.com.mx, de acuerdo a los datos de cada empleado. */
select replace(email,'.io','.com.mx') as correo 
from empleados;







