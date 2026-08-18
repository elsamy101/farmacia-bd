
SELECT 
    lab.id_laboratorio,
    lab.nombre AS laboratorio,
    COUNT(DISTINCT v.id_venta) AS numero_ventas,
    COUNT(DISTINCT m.id_medicamento) AS medicamentos_vendidos,
    SUM(dv.cantidad) AS total_unidades,
    ROUND(SUM(dv.subtotal)::NUMERIC, 2) AS total_venta
FROM laboratorios lab
JOIN medicamentos m ON lab.id_laboratorio = m.id_laboratorio
LEFT JOIN lotes l ON m.id_medicamento = l.id_medicamento
LEFT JOIN detalles_venta dv ON l.id_lote = dv.id_lote
LEFT JOIN ventas v ON dv.id_venta = v.id_venta
GROUP BY lab.id_laboratorio, lab.nombre
ORDER BY total_venta DESC NULLS LAST;
