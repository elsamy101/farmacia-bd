CREATE TABLE detalles_venta (id_detalle SERIAL PRIMARY KEY, id_venta INT NOT NULL, id_lote INT NOT NULL, cantidad INT, precio_unitario DECIMAL(10, 2), subtotal DECIMAL(10, 2), FOREIGN KEY(id_venta) REFERENCES ventas(id_venta), FOREIGN KEY (id_lote) REFERENCES lotes(id_lote));
SELECT * FROM detalles_venta
ORDER BY id_venta ASC;

