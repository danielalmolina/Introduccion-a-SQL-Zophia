/*Operaciones*/
SELECT salario * incremento + salario  AS nuevo_salario FROM empleados;
SELECT (salario * incremento) AS aumento FROM empleados;
SELECT salario/incremento AS decremento FROM empleados;
SELECT salario + 500 AS salario FROM empleados;

/*--Strings*/
SELECT CONCAT(nombre,' ', apellido) AS nombre_completo FROM empleados;
SELECT CONCAT(SUBSTR(nombre,1,1), SUBSTR(apellido,1,1)) AS iniciales FROM empleados;
SELECT * FROM empleados WHERE LENGTH(nombre)>6;
SELECT REPLACE(email,'@','') AS correo FROM empleados;
SELECT UPPER(nombre) AS nombre, LOWER(apellido) as apellido FROM empleados;

/*--Numéricas*/
SELECT ROUND(incremento,1) AS incremento FROM empleados;
SELECT trunc(incremento) AS incremento FROM empleados;
SELECT FLOOR(incremento) AS incremento FROM empleados;
SELECT CEIL(incremento) AS incremento FROM empleados;
SELECT ABS(-5) AS absoluto;

/*--Fechas*/
SELECT current_date() AS fecha_actual;
SELECT cast(extract('year', antiguedad) as int) AS anio_contratacion FROM empleados;
SELECT extract('hour', ultimo_ingreso) AS hora_llegada FROM empleados;
SELECT to_char(antiguedad) as char_antiguedad FROM empleados;
SELECT age(now(), cast(antiguedad as timestamptz)) FROM empleados;
SELECT antiguedad, current_date-antiguedad as diff_day FROM empleados;
SELECT year(antiguedad) FROM empleados; /*mysql*/