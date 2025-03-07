SELECT e.Nombre AS Empleado, p.Nombre AS Proyecto,
SUM(a.HorasTrabajadas) AS TotalHoras
FROM Asignaciones a
JOIN empleado e ON a.EmpleadoID = e.EmpleadoID
JOIN proyectos p ON a.ProyectoID = p.ProyectoID
GROUP BY e.Nombre, p.Nombre
ORDER BY e.Nombre