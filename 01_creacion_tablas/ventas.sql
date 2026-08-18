CREATE TABLE ventas (id_venta SERIAL PRIMARY KEY, fecha_venta DATE NOT NULL, id_receta INT, total DECIMAL(10, 2), FOREIGN KEY(id_receta) REFERENCES recetas_medicas(id_receta));
SELECT * FROM ventas
ORDER BY id_venta, fecha_venta, id_receta ASC;
