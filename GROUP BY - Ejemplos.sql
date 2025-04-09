SELECT TipoDeDocumento,
COUNT (*)
FROM Persona p
WHERE TipoDeDocumento != 'NIT'
GROUP BY TipoDeDocumento;

-- Cantidad de personas por tipo de documento r cargo
SELECT
TipoDeDocumento,
Cargo,
COUNT (*)
FROM Persona p, Empleado e
GROUP BY TipoDeDocumento, Cargo
HAVING COUNT (*) > 1000;

-- Agrupar por Empleado, MedioDePago y sumatoria de valor total de OrdenDeCompra
SELECT
EmpleadoID,
MedioDePago,
SUM(ValorTotal) AS "Suma Total",
COUNT(*)
FROM OrdenDeCompra odc
GROUP BY EmpleadoID, MedioDePago;

-- Mostrando solo el promedio mayor a 20000
SELECT
EmpleadoID,
MedioDePago,
SUM(ValorTotal) AS "Suma Total",
COUNT(*)
FROM OrdenDeCompra odc
GROUP BY EmpleadoID, MedioDePago
HAVING AVG (ValorTotal) > 20000;