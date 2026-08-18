SELECT 
    l.id_lote,
    l.numero_lote,
    m.nombre AS medicamento,
    m.precio_unitario,
    lab.nombre AS laboratorio,
    l.cantidad_disponible,
    l.fecha_vencimiento
FROM lotes l
JOIN medicamentos m ON l.id_medicamento = m.id_medicamento
JOIN laboratorios lab ON m.id_laboratorio = lab.id_laboratorio
WHERE l.cantidad_disponible < 5
ORDER BY l.cantidad_disponible ASC;
