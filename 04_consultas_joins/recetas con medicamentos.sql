SELECT 
    r.id_receta,
    r.numero_receta,
    r.fecha_emision,
    r.medico,
    r.paciente,
    m.nombre AS medicamento,
    dr.cantidad,
    dr.dosis
FROM recetas_medicas r
JOIN detalles_receta dr ON r.id_receta = dr.id_receta
JOIN medicamentos m ON dr.id_medicamento = m.id_medicamento
ORDER BY r.fecha_emision DESC, r.numero_receta;
