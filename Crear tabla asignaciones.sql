CREATE TABLE asignaciones (
	AsignacionID INT PRIMARY KEY IDENTITY (1,1),
	EmpleadoID INT NOT NULL,
	ProyectoID INT NOT NULL,
	HorasTrabajadas INT NOT NULL CHECK (HorasTrabajadas > 0),
	FechaAsignacion DATE NOT NULL,
	FOREIGN KEY (EmpleadoID) REFERENCES empleado(EmpleadoID),
	FOREIGN KEY (ProyectoID) REFERENCES proyectos(ProyectoID)
)