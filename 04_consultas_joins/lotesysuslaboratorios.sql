SELECT 
    l.id_lote,
    l.numero_lote,
    m.nombre AS medicamento,
    lab.nombre AS laboratorio,
    l.fecha_vencimiento,
    l.cantidad_disponible
FROM lotes l
JOIN medicamentos m ON l.id_medicamento = m.id_medicamento
JOIN laboratorios lab ON m.id_laboratorio = lab.id_laboratorio
ORDER BY l.fecha_vencimiento;
