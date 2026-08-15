SELECT 
    v.id_venta,
    v.fecha_venta,
    dv.id_detalle,
    m.nombre AS medicamento,
    dv.cantidad,
    dv.precio_unitario,
    dv.subtotal
FROM ventas v
JOIN detalles_venta dv ON v.id_venta = dv.id_venta
JOIN lotes l ON dv.id_lote = l.id_lote
JOIN medicamentos m ON l.id_medicamento = m.id_medicamento
ORDER BY v.fecha_venta DESC, v.id_venta;
