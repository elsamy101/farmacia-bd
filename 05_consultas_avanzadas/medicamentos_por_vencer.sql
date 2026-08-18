SELECT 
    l.id_lote,
    l.numero_lote,
    m.nombre AS medicamento,
    m.precio_unitario,
    lab.nombre AS laboratorio,
    l.fecha_vencimiento,
    l.cantidad_disponible,
    CURRENT_DATE AS hoy,
    (l.fecha_vencimiento - CURRENT_DATE) AS dias_para_vencer
FROM lotes l
JOIN medicamentos m ON l.id_medicamento = m.id_medicamento
JOIN laboratorios lab ON m.id_laboratorio = lab.id_laboratorio
WHERE l.fecha_vencimiento BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '30 days'
ORDER BY l.fecha_vencimiento ASC;
