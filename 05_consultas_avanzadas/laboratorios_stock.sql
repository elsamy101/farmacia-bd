SELECT 
    lab.id_laboratorio,
    lab.nombre AS laboratorio,
    COUNT(DISTINCT m.id_medicamento) AS cantidad_medicamentos,
    COUNT(DISTINCT l.id_lote) AS cantidad_lotes,
    SUM(l.cantidad_disponible) AS total_unidades,
    ROUND((SUM(l.cantidad_disponible) * AVG(m.precio_unitario))::NUMERIC, 2) AS valor_inventario
FROM laboratorios lab
JOIN medicamentos m ON lab.id_laboratorio = m.id_laboratorio
LEFT JOIN lotes l ON m.id_medicamento = l.id_medicamento
GROUP BY lab.id_laboratorio, lab.nombre
ORDER BY total_unidades DESC NULLS LAST;
