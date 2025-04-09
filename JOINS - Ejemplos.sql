SELECT *
FROM tablaA a INNER JOIN tablaB b /* Intersección entre las 2 tablas */
ON a.columnaX = b.columnaX;

SELECT *
FROM Persona p INNER JOIN Empleado e
ON p.PersonaID = e.PersonaID;

SELECT p.DocumentoID , e.Cargo 
FROM Persona p INNER JOIN Empleado e
ON p.PersonaID = e.PersonaID;

SELECT *
FROM tablaA a JOIN tablaB b /* Intersección entre 3 tablas */
ON a.columnaX = b.columnaX
JOIN tablaC c
ON b.columnaX = c.columnaX;

SELECT *
FROM Persona p JOIN  Empleado e
ON p.PersonaID = e.PersonaID 
JOIN Cliente c
ON e.PersonaID = c.PersonaID;

SELECT *
FROM tablaA a LEFT JOIN tablaB b /* Traiga los registros de la tabla de la izquierda */
ON a.columnaX = b.columnaX
JOIN tablaC c
ON b.columnaX = c.columnaX;

SELECT *
FROM Persona p LEFT JOIN  Empleado e
ON p.PersonaID = e.PersonaID
WHERE e.Cargo = "Gerente" AND e.TipoDeContrato = "Fijo";

SELECT *
FROM Persona p LEFT JOIN  Empleado e
ON p.PersonaID = e.PersonaID
WHERE e.PersonaID IS NULL; /* Personas no empleadas */
