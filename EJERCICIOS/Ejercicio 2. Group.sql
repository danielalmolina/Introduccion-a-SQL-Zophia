
/* ORDENAR */
select * from empleados order by salario;

select * from empleados order by nombre, apellido;

select * from empleados order by salario desc ;

select * from empleados order by nombre desc, apellido;

/*MIN, MAX, COUNT, AVG, SUM*/

SELECT MIN(salario) FROM empleados; 

SELECT MIN(salario) AS min_salario FROM empleados;

SELECT MAX(salario) AS max_salario FROM empleados;

SELECT COUNT(*) AS num_empleados FROM empleados;

SELECT COUNT(1) AS num_empleados FROM empleados;

SELECT COUNT(*) AS num_empleados FROM empleados WHERE salario>20000;

SELECT COUNT(*) AS num_empleados, MAX(salario) AS max_salario, MIN(salario) AS min_salario FROM empleados WHERE salario>20000;


SELECT 
COUNT(*) AS num_empleados,
 MAX(salario) AS max_salario,
  MIN(salario) AS min_salario
   FROM empleados
    WHERE salario> 20000;

SELECT 
	COUNT(*) AS num_empleados,
 	MAX(salario) AS max_salario,
  	MIN(salario) AS min_salario
FROM empleados
WHERE salario > 20000;

SELECT SUM(salario) as suma_salario FROM empleados;
SELECT AVG(salario) as avg_salario FROM empleados;


SELECT COUNT(*) AS num_empleados, departamento FROM empleados GROUP BY departamento;

SELECT COUNT(*) AS num_empleados FROM empleados GROUP BY departamento;

SELECT COUNT(*) AS num_empleados, departamento FROM empleados GROUP BY departamento ORDER BY num_empleados;

SELECT MAX(salario) AS max_salario, MIN(salario) AS min_salario, departamento, pais FROM empleados GROUP BY departamento, pais;


/*FILTRANDO CON WHERE VS HAVING*/
SELECT COUNT(*) AS num_empleados, departamento  FROM empleados GROUP BY departamento HAVING COUNT(*)> 3;

SELECT COUNT(*) AS num_empleados FROM empleados WHERE num_empleados >3 GROUP BY departamento ; /* esto no se hace*/

SELECT 
	COUNT(*) AS num_empleados, departamento  
FROM empleados 
WHERE salario>20000
GROUP BY departamento  
HAVING count(*)>2;

SELECT 
	COUNT(*) AS num_empleados,
	departamento 
FROM empleados
WHERE salario > 20000 
GROUP BY departamento
HAVING COUNT(*)> 1
ORDER BY departamento DESC;