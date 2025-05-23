-- 1. 📄 Crear tabla a partir de consulta (JOIN)
CREATE TABLE historial_visitas AS
SELECT v.id_visita, m.nombre AS mascota, s.nombre AS servicio, v.fecha
FROM Visita v
JOIN Mascota m ON v.id_mascota = m.id_mascota
JOIN Servicio s ON v.id_servicio = s.id_servicio;

-- 2. 🔠 Función UPPER
SELECT UPPER(nombre) AS nombre_mayus FROM Mascota;

-- 3. 🔢 Función ROUND
SELECT nombre, ROUND(precio_base, 0) AS precio_redondeado FROM Servicio;

-- 4. 🔡 Función LENGTH
SELECT nombre_completo, LENGTH(nombre_completo) AS caracteres FROM Dueño;

-- 5. 🔢 Función COUNT
SELECT COUNT(*) AS total_mascotas FROM Mascota;

-- 6. 🔢 Función AVG
SELECT AVG(edad) AS edad_promedio FROM Mascota;

-- 7. ✅ Consulta básica con WHERE
SELECT nombre FROM Mascota WHERE vacunada = TRUE;

-- 8. 🤝 JOIN: visitas con dueño y mascota
SELECT d.nombre_completo, m.nombre, v.fecha
FROM Visita v
JOIN Mascota m ON v.id_mascota = m.id_mascota
JOIN Dueño d ON m.cedula_dueño = d.cedula;

-- 9. 🏷️ Alias en campos
SELECT nombre AS tipo_servicio, descripcion FROM Servicio;

-- 10. 📊 Subconsulta con alias y GROUP BY (JOIN incluido)
SELECT nombre_completo FROM (
    SELECT d.nombre_completo, COUNT(m.id_mascota) AS total
    FROM Dueño d
    JOIN Mascota m ON d.cedula = m.cedula_dueño
    GROUP BY d.cedula
) AS subconsulta
WHERE total > 1;

-- 11. 🔗 CONCAT
SELECT CONCAT(nombre, ' - ', especie) AS identificador FROM Mascota;

-- 12. ✂️ SUBSTRING
SELECT nombre, SUBSTRING(nombre, 1, 5) AS abreviado FROM Tratamiento;

-- 13. 🧾 ORDER BY
SELECT nombre, precio_base FROM Servicio ORDER BY precio_base DESC;

-- 14. 🟩 IF en campos
SELECT nombre, IF(vacunada, 'Sí', 'No') AS esta_vacunada FROM Mascota;

-- 15. 📊 GROUP BY + JOIN
SELECT s.nombre AS servicio, COUNT(v.id_visita) AS total_visitas
FROM Visita v
JOIN Servicio s ON v.id_servicio = s.id_servicio
GROUP BY s.nombre;