CREATE VIEW Estudiante_Carrera
AS
SELECT te.codigo_estudiante,nombre_estudiante,ap_estudiante,am_estudiante,ta.nombre_carrera
FROM tcarrera ta INNER JOIN testudiante te
	ON ta.codigo_carrera=te.codigo_carrera
GO