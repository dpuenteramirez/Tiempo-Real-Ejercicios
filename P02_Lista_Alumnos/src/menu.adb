with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body Menu is

procedure Lee_Num_Alumno (Num : out Clases.Num_Alumno) is
begin
Put("Numero del alumno: ");
Get(Num);
Skip_Line;
end Lee_Num_Alumno;

procedure Mensaje_Error (Mensaje : in String) is
begin
	Put_Line(Mensaje);
end Mensaje_Error;
procedure Pide_Opcion (La_Opcion : out Opcion) is
	Num_Opcion : Integer range 1..3;
begin
New_Line;
Put_Line("LISTA DE ALUMNOS:");
Put_Line("1-Insertar alumno");
Put_Line("2-Mirar un alumno");
Put_Line("3-Salir");
Put("Elige una opcion:");
Get(Num_Opcion);
Skip_Line;
La_Opcion:=Opcion'Val(Num_Opcion-1);

end Pide_Opcion;

end Menu;
