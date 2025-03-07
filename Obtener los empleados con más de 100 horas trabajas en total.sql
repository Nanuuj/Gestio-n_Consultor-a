SELECT e.Nombre, SUM(a.HorasTrabajadas) AS HorasTotales
FROM asignaciones a
JOIN empleado e ON a.EmpleadoID = e.EmpleadoID
GROUP BY e.Nombre
HAVING SUM (a.HorasTrabajadas) > 100