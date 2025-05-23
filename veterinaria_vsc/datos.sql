-- Dueños
INSERT INTO Dueño VALUES 
('111', 'Ana Ramírez', '3001234567', 'Calle 10 #5-23'),
('222', 'Carlos Méndez', '3002345678', 'Carrera 20 #6-45'),
('333', 'Laura Torres', '3003456789', 'Av. Siempre Viva 742'),
('444', 'José Rojas', '3004567890', 'Transv. 12 #8-15'),
('555', 'Mariana Gómez', '3005678901', 'Calle 50 #7-19');

-- Mascotas
INSERT INTO Mascota (nombre, especie, raza, edad, sexo, vacunada, cedula_dueño) VALUES
('Luna', 'Perro', 'Labrador', 3, 'Hembra', TRUE, '111'),
('Max', 'Perro', 'Pitbull', 2, 'Macho', FALSE, '111'),
('Milo', 'Gato', 'Siames', 4, 'Macho', TRUE, '222'),
('Bella', 'Perro', 'Beagle', 5, 'Hembra', TRUE, '333'),
('Nala', 'Gato', 'Persa', 2, 'Hembra', TRUE, '333'),
('Rocky', 'Perro', 'Bulldog', 1, 'Macho', FALSE, '444'),
('Toby', 'Perro', 'Golden', 3, 'Macho', TRUE, '444'),
('Coco', 'Gato', 'Egipcio', 2, 'Macho', TRUE, '555'),
('Simba', 'Gato', 'Angora', 3, 'Macho', FALSE, '555'),
('Lola', 'Perro', 'Caniche', 4, 'Hembra', TRUE, '555');

-- Servicios
INSERT INTO Servicio (nombre, descripcion, precio_base) VALUES
('Baño', 'Baño completo con shampoo especial', 30000),
('Corte de uñas', 'Corte y limado de uñas', 15000),
('Consulta médica', 'Revisión médica general', 40000),
('Vacunación', 'Aplicación de vacunas obligatorias', 50000),
('Desparasitación', 'Tratamiento contra parásitos', 35000);

-- Visitas
INSERT INTO Visita (fecha, id_mascota, id_servicio) VALUES
('2025-05-01', 1, 1),
('2025-05-02', 1, 3),
('2025-05-02', 2, 5),
('2025-05-03', 3, 4),
('2025-05-04', 4, 1),
('2025-05-05', 5, 2),
('2025-05-05', 6, 3),
('2025-05-06', 7, 5),
('2025-05-06', 8, 1),
('2025-05-07', 9, 4);

-- Tratamientos
INSERT INTO Tratamiento (nombre, observaciones, id_visita) VALUES
('Antibiótico', 'Aplicado por infección en la piel', 2),
('Desparasitario oral', '1 dosis mensual por 3 meses', 3),
('Vitaminas', 'Complemento para mejorar apetito', 4),
('Crema dermatológica', 'Aplicar por 10 días', 6),
('Analgésico', 'Dolor muscular leve', 7);