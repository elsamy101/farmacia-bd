CREATE TABLE laboratorios (id_laboratorio SERIAL PRIMARY KEY, nombre VARCHAR(100), NOT NULL, telefono VARCHAR(15), email VARCHAR(100));
SELECT * FROM laboratorios
ORDER BY id_laboratorio ASC;

