SELECT 
    l.id_lote,
    l.numero_lote,
    m.nombre AS medicamento,
    m.precio_unitario,
    l.fecha_fabricacion,
    l.fecha_vencimiento,
    l.cantidad_disponible
FROM lotes l
JOIN medicamentos m ON l.id_medicamento = m.id_medicamento
ORDER BY l.fecha_vencimiento;
