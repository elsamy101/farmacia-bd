CREATE TABLE recetas_medicas (id_receta SERIAL PRIMARY KEY, numero_receta VARCHAR(50) NOT NULL UNIQUE, fecha_emision DATE NOT NULL, medico VARCHAR(100), paciente VARCHAR(100), indicaciones TEXT);
SELECT * FROM recetas_medicas
ORDER BY id_receta ASC;
