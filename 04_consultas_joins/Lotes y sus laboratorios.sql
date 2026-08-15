SELECT 
    l.id_laboratorio,
    l.nombre AS laboratorio,
    COUNT(m.id_medicamento) AS cantidad_medicamentos
FROM laboratorios l
LEFT JOIN medicamentos m ON l.id_laboratorio = m.id_laboratorio
GROUP BY l.id_laboratorio, l.nombre
ORDER BY cantidad_medicamentos DESC;
