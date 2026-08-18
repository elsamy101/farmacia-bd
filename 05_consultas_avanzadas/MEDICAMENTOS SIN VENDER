SELECT 
    m.id_medicamento,
    m.nombre AS medicamento,
    lab.nombre AS laboratorio,
    COUNT(l.id_lote) AS numero_lotes,
    SUM(l.cantidad_disponible) AS stock_disponible
FROM medicamentos m
JOIN laboratorios lab ON m.id_laboratorio = lab.id_laboratorio
LEFT JOIN lotes l ON m.id_medicamento = l.id_medicamento
WHERE m.id_medicamento NOT IN (
    SELECT DISTINCT l2.id_medicamento
    FROM lotes l2
    JOIN detalles_venta dv ON l2.id_lote = dv.id_lote
)
GROUP BY m.id_medicamento, m.nombre, lab.nombre
ORDER BY stock_disponible DESC NULLS LAST;
