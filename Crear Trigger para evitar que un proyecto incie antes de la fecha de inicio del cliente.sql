CREATE TRIGGER trg_ValidarFechaProyecto
ON Proyectos
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN Clientes c ON i.ClienteID = c.ClienteID
        WHERE i.FechaInicio < c.FechaRegistro
    )
    BEGIN
        RAISERROR('La fecha de inicio del proyecto no puede ser anterior a la fecha de registro del cliente.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
