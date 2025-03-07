SELECT p.Nombre AS Proyecto, c.Nombre AS Cliente, p.FechaInicio, p.FechaFinEstimada
FROM proyectos p
JOIN Clientes c ON p.ClienteID = c.ClienteID
WHERE p.FechaFinEstimada >= GETDATE()
