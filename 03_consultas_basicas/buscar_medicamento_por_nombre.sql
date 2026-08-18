-- Búsqueda de un medicamento por nombre
SELECT * 
FROM medicamentos 
WHERE nombre LIKE '%Paracetamol%';
SELECT * FROM medicamentos
ORDER BY nombre, '%Paracetamol%' ASC;
