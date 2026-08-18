SELECT 
    m.id_medicamento,
    m.nombre AS medicamento,
    lab.nombre AS laboratorio,
    SUM(dv.cantidad) AS total_vendido,
    COUNT(DISTINCT dv.id_venta) AS numero_ventas,
    ROUND(AVG(dv.precio_unitario)::NUMERIC, 2) AS precio_promedio
FROM medicamentos m
JOIN laboratorios lab ON m.id_laboratorio = lab.id_laboratorio
LEFT JOIN lotes l ON m.id_medicamento = l.id_medicamento
LEFT JOIN detalles_venta dv ON l.id_lote = dv.id_lote
GROUP BY m.id_medicamento, m.nombre, lab.nombre
ORDER BY total_vendido DESC NULLS LAST;
