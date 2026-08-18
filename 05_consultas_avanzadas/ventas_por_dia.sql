SELECT 
    v.fecha_venta,
    COUNT(v.id_venta) AS numero_ventas,
    SUM(dv.cantidad) AS total_unidades,
    ROUND(SUM(dv.subtotal)::NUMERIC, 2) AS total_dinero
FROM ventas v
JOIN detalles_venta dv ON v.id_venta = dv.id_venta
GROUP BY v.fecha_venta
ORDER BY v.fecha_venta DESC;


