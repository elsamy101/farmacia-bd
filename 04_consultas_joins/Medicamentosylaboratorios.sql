SELECT 
    m.id_medicamento,
    m.nombre AS medicamento,
    m.precio_unitario,
    l.nombre AS laboratorio,
    l.telefono,
    l.email
FROM medicamentos m
JOIN laboratorios l ON m.id_laboratorio = l.id_laboratorio
ORDER BY l.nombre, m.nombre;
