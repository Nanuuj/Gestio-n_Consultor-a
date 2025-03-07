CREATE TRIGGER trg_RegistroCambioSalario
ON Empleado
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO HistorialSalarios (EmpleadoID, SalarioAnterior, SalarioNuevo, FechaCambio)
    SELECT i.EmpleadoID, d.Salario, i.Salario, GETDATE()
    FROM inserted i
    JOIN deleted d ON i.EmpleadoID = d.EmpleadoID
    WHERE i.Salario <> d.Salario;
END;
