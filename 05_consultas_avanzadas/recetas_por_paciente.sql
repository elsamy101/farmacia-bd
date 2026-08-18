SELECT 
    r.paciente,
    COUNT(r.id_receta) AS numero_recetas,
    COUNT(DISTINCT m.id_medicamento) AS medicamentos_diferentes,
    STRING_AGG(DISTINCT m.nombre, ', ') AS medicamentos
FROM recetas_medicas r
JOIN detalles_receta dr ON r.id_receta = dr.id_receta
JOIN medicamentos m ON dr.id_medicamento = m.id_medicamento
GROUP BY r.paciente
ORDER BY numero_recetas DESC;
