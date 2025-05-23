CREATE TABLE Dueño (
    cedula VARCHAR(15) PRIMARY KEY,
    nombre_completo VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

CREATE TABLE Mascota (
    id_mascota INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    especie VARCHAR(30),
    raza VARCHAR(50),
    edad INT,
    sexo VARCHAR(10),
    vacunada BOOLEAN,
    cedula_dueño VARCHAR(15),
    FOREIGN KEY (cedula_dueño) REFERENCES Dueño(cedula)
);

CREATE TABLE Servicio (
    id_servicio INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion TEXT,
    precio_base DECIMAL(10, 2)
);

CREATE TABLE Visita (
    id_visita INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    id_mascota INT,
    id_servicio INT,
    FOREIGN KEY (id_mascota) REFERENCES Mascota(id_mascota),
    FOREIGN KEY (id_servicio) REFERENCES Servicio(id_servicio)
);

CREATE TABLE Tratamiento (
    id_tratamiento INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    observaciones TEXT,
    id_visita INT,
    FOREIGN KEY (id_visita) REFERENCES Visita(id_visita)
);