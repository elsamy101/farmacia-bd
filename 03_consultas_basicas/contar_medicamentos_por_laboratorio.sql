-- Agrupar y contar medicamentos por laboratorio
SELECT laboratorio_id, COUNT(*) AS total_medicamentos
FROM medicamentos
GROUP BY laboratorio_id;
SELECT * FROM medicamentos 
ORDER BY laboratorio_id;
