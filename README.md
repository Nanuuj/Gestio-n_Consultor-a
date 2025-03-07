# Gestio-n_Consultor-a

He creado un proyecto real, el cual puede darse en un proyecto natural en cualquier consultoría.

📌 Objetivo: Diseñar una base de datos para gestionar proyectos de consultoría, clientes y empleados, además de realizar consultas avanzadas y aplicar reglas de negocio con triggers.
________________________________________
🔹 Parte 1: Creación de la Base de Datos y Tablas
1️⃣ Crea una base de datos llamada GestionConsultoria.
2️⃣ Crea la tabla Clientes con los siguientes campos:
•	ClienteID (Clave primaria, autoincremental)
•	Nombre (Nombre del cliente)
•	Industria (Sector en el que opera)
•	Pais (Ubicación)
3️⃣ Crea la tabla Proyectos con los siguientes campos:
•	ProyectoID (Clave primaria, autoincremental)
•	Nombre (Nombre del proyecto)
•	ClienteID (Clave foránea que hace referencia a Clientes)
•	FechaInicio (Fecha en que inicia el proyecto)
•	FechaFinEstimada (Fecha estimada de finalización)
4️⃣ Crea la tabla Empleados con los siguientes campos:
•	EmpleadoID (Clave primaria, autoincremental)
•	Nombre (Nombre del empleado)
•	Cargo (Puesto que ocupa en la empresa)
•	Salario (Sueldo mensual)
5️⃣ Crea la tabla Asignaciones con los siguientes campos:
•	AsignacionID (Clave primaria, autoincremental)
•	EmpleadoID (Clave foránea que hace referencia a Empleados)
•	ProyectoID (Clave foránea que hace referencia a Proyectos)
•	HorasTrabajadas (Cantidad de horas dedicadas al proyecto)
•	FechaAsignacion (Día en que se registró la asignación)
________________________________________
🔹 Parte 2: Inserción de Datos
6️⃣ Inserta al menos tres clientes en la base de datos con distintos nombres, industrias y países.
7️⃣ Inserta tres proyectos, cada uno asociado a un cliente diferente, con fechas de inicio y finalización estimadas.
8️⃣ Inserta tres empleados con diferentes nombres, cargos y salarios.
9️⃣ Asigna empleados a proyectos con diferentes cantidades de horas trabajadas y fechas de asignación.
________________________________________
🔹 Parte 3: Consultas y Reportes
🔟 Consulta todos los proyectos activos con su cliente correspondiente.
1️⃣1️⃣ Muestra la cantidad total de horas trabajadas por cada empleado en cada proyecto.
1️⃣2️⃣ Encuentra a los empleados que han trabajado más de 100 horas en total en todos los proyectos.
1️⃣3️⃣ Calcula el costo total de cada proyecto basándose en las horas trabajadas y el salario del empleado.
•	(Se asume que un salario mensual equivale a 160 horas de trabajo).
________________________________________
🔹 Parte 4: Implementación de Triggers
1️⃣4️⃣ Crea un trigger que impida que un empleado registre más de 40 horas en un solo día.
1️⃣5️⃣ Crea un trigger que actualice la fecha de finalización de un proyecto cuando se elimine la última asignación de un empleado.
1️⃣6️⃣ Crea una tabla HistorialSalarios para registrar los cambios de salario de los empleados.
1️⃣7️⃣ Crea un trigger que guarde un registro en HistorialSalarios cada vez que un empleado reciba un aumento o reducción de sueldo.
1️⃣8️⃣ Agrega un campo FechaRegistro a la tabla Clientes y crea un trigger que evite que un proyecto tenga una fecha de inicio anterior a la fecha de registro del cliente.
________________________________________
🔹 Parte 5: Optimización y Seguridad
1️⃣9️⃣ Crea índices en las claves foráneas de la tabla Asignaciones para mejorar el rendimiento de las consultas.
2️⃣0️⃣ Crea un rol llamado Consultor y otórgale permisos de solo lectura sobre las tablas Clientes, Proyectos y Empleados.
________________________________________

