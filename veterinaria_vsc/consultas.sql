-- 1. Crear tabla con historial de visitas
CREATE TABLE historial_visitas AS
SELECT v.id_visita, m.nombre AS mascota, s.nombre AS servicio, v.fecha
FROM Visita v
JOIN Mascota m ON v.id_mascota = m.id_mascota
JOIN Servicio s ON v.id_servicio = s.id_servicio;

-- 2. Mascotas con nombre en mayúsculas
SELECT UPPER(nombre) AS nombre_mayus FROM Mascota;

-- 3. Servicios y precio redondeado
SELECT nombre, ROUND(precio_base, 0) AS precio_redondeado FROM Servicio;

-- 4. Dueños y longitud del nombre
SELECT nombre_completo, LENGTH(nombre_completo) AS caracteres FROM Dueño;

-- 5. Total de mascotas registradas
SELECT COUNT(*) AS total_mascotas FROM Mascota;

-- 6. Promedio de edad de las mascotas
SELECT AVG(edad) AS edad_promedio FROM Mascota;

-- 7. Mascotas vacunadas
SELECT nombre FROM Mascota WHERE vacunada = TRUE;

-- 8. Visitas con nombre del dueño y mascota
SELECT d.nombre_completo, m.nombre, v.fecha
FROM Visita v
JOIN Mascota m ON v.id_mascota = m.id_mascota
JOIN Dueño d ON m.cedula_dueño = d.cedula;

-- 9. Servicios con alias
SELECT nombre AS tipo_servicio, descripcion FROM Servicio;

-- 10. Subconsulta con alias para obtener los dueños con más de 1 mascota
SELECT nombre_completo FROM (
    SELECT d.nombre_completo, COUNT(m.id_mascota) AS total
    FROM Dueño d
    JOIN Mascota m ON d.cedula = m.cedula_dueño
    GROUP BY d.cedula
) AS subconsulta
WHERE total > 1;

-- 11. Concatenar nombre de mascota y especie
SELECT CONCAT(nombre, ' - ', especie) AS identificador FROM Mascota;

-- 12. Cortar nombres largos de tratamientos
SELECT nombre, SUBSTRING(nombre, 1, 5) AS abreviado FROM Tratamiento;

-- 13. Servicios ordenados por precio descendente
SELECT nombre, precio_base FROM Servicio ORDER BY precio_base DESC;

-- 14. IF: mostrar "Sí" o "No" según si está vacunada
SELECT nombre, IF(vacunada, 'Sí', 'No') AS esta_vacunada FROM Mascota;

-- 15. Agrupar visitas por servicio
SELECT s.nombre AS servicio, COUNT(v.id_visita) AS total_visitas
FROM Visita v
JOIN Servicio s ON v.id_servicio = s.id_servicio
GROUP BY s.nombre;