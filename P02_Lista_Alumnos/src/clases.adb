with Ada.Text_IO;
use Ada.Text_IO;
package body Clases is
	function Dame_Alumno
	(Num : in Num_Alumno;
	La_Clase : in Clase)
	return Alumnos.Alumno
is
begin
	return La_Clase.Alumnos(Num);
end Dame_Alumno;
procedure Inserta_Alumno
	(Alu : in Alumnos.Alumno; La_Clase : in out Clase)
is
begin
	La_Clase.Num:=La_Clase.Num+1;
	La_Clase.Alumnos(La_Clase.Num):=Alu;
end Inserta_Alumno;
function Llena (La_Clase : in Clase) return Boolean is
begin
	return La_Clase.Num=Max_Alumnos;
end Llena;

function Numero_Alumnos (La_Clase : in Clase) return Natural is
begin
	return La_Clase.Num;
end Numero_Alumnos;

end Clases;
