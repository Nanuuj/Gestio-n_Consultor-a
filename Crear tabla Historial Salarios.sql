CREATE TABLE HistorialSalarios (
    HistorialID INT PRIMARY KEY IDENTITY(1,1),
    EmpleadoID INT NOT NULL,
    SalarioAnterior DECIMAL(10,2),
    SalarioNuevo DECIMAL(10,2),
    FechaCambio DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleado(EmpleadoID)
);
