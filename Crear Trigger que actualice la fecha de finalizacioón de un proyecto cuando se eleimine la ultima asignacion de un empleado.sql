CREATE TRIGGER trg_CerrarProyecto
ON asignaciones
AFTER DELETE 
AS 
BEGIN
	SET NOCOUNT ON;
	UPDATE Proyectos
	SET FechaFinEstimada = GETDATE()
	WHERE ProyectoID IN (
		SELECT DISTINCT d.ProyectoID
		FROM DELETED d
		LEFT JOIN asignaciones a ON d.ProyectoID = a.ProyectoID
		WHERE a.ProyectoID IS NULL
	);
END;