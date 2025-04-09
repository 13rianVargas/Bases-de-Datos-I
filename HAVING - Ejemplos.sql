SELECT EmpleadoID, count(*) 
FROM ordendecompra 
GROUP BY EmpleadoID;

SELECT ProveedorProductoID, count(*), sum(ValorTotal) 
FROM comprainsumos 
GROUP BY ProveedorProductoID;

SELECT
AVG(ValorUnitario) AS "Valor Unitario Promedio", ProductoID 
FROM Pedido p 
GROUP BY ProductoID 
HAVING AVG(ValorUnitario) > 50;