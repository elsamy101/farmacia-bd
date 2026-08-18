
SELECT 
    m.id_medicamento,
    m.nombre AS medicamento,
    lab.nombre AS laboratorio,
    SUM(dv.cantidad) AS total_unidades,
    ROUND(SUM(dv.subtotal)::NUMERIC, 2) AS total_dinero,
    ROUND(AVG(dv.precio_unitario)::NUMERIC, 2) AS precio_promedio
FROM medicamentos m
JOIN laboratorios lab ON m.id_laboratorio = lab.id_laboratorio
LEFT JOIN lotes l ON m.id_medicamento = l.id_medicamento
LEFT JOIN detalles_venta dv ON l.id_lote = dv.id_lote
WHERE dv.id_detalle IS NOT NULL
GROUP BY m.id_medicamento, m.nombre, lab.nombre
ORDER BY total_unidades DESC
LIMIT 10;
