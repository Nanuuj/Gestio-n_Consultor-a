SELECT p.Nombre AS Proyecto,
SUM(a.HorasTrabajadas * (e.Salario/160)) AS CosteTotal
FROM Asignaciones a
JOIN Empleado e ON a.EmpleadoID = e.EmpleadoID
JOIN Proyectos p ON a.ProyectoID = p.ProyectoID
GROUP BY p.Nombre