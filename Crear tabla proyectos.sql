CREATE TABLE proyectos (
	ProyectoID INT PRIMARY KEY IDENTITY (1,1),
	Nombre VARCHAR(50) NOT NULL,
	ClienteID INT NOT NULL,
	FechaInicio DATE NOT NULL,
	FechaFinEstimada DATE
	FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
)