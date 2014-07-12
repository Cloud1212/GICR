CREATE PROCEDURE obtenerTablaColumna
AS
BEGIN
	SELECT DISTINCT ISNULL(nombreCarro,'') AS nombreCarro,
	'<input type="text" value="'+ISNULL(CONVERT(VARCHAR,CantidadCarros),0)+'"></input>' AS CantidadCarros,
	'<span>'+ISNULL(CONVERT(VARCHAR,ParticipacionIndividual),0) +'%</span>' AS ParticipacionIndividual
	FROM columnaModelos
END	

