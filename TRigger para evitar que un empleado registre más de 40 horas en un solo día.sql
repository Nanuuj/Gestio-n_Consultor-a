CREATE TRIGGER trg_ValidarHorasDiarias
ON asignaciones
AFTER INSERT, UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	IF EXISTS (
		SELECT 1
		FROM asignaciones a
		JOIN INSERTED i ON a.EmpleadoID = i.EmpleadoID
						AND a.FechaAsignacion = i.FechaAsignacion
		GROUP BY a.EmpleadoID, a.FechaAsignacion
		HAVING SUM(a.HorasTrabajadas) > 40
	)
	BEGIN
		RAISERROR ('Un empleado no puede registrar más de 40 horas en un solo día.',16,1);
		ROLLBACK TRANSACTION
	END
END;