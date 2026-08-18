CREATE TABLE medicamentos (id_medicamento SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL, descripcion TEXT, precio_unitario DECIMAL(10, 2), id_laboratorio INT NOT NULL, FOREIGN KEY (id_laboratorio) REFERENCES laboratorios(id_laboratorio));
SELECT * FROM medicamentos
ORDER BY id_medicamento ASC;
