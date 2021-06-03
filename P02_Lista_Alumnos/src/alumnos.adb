with Ada.Text_IO;
use Ada.Text_IO;

package body Alumnos is
   package Escuela_IO is new Enumeration_IO(Tipo_Escuela);
   procedure Escribe (Alu : in Alumno) is
   begin
      Put_Line("--------------------------");
      Put("Nombre : ");
      Put_Line(Alu.Nombre(1..Alu.N_Nombre));
      Put_Line("Telefono : "&Alu.Telefono);
      Put("Escuela : ");
      Escuela_IO.Put(Alu.Escuela);
      New_Line;
      Put_Line("--------------------------");
      New_Line;
   end Escribe;
   procedure Lee (Alu : out Alumno) is
   begin
      Put("Nombre del alumno: ");
      Get_Line(Alu.Nombre,Alu.N_Nombre);
      Put("Numero de Telefono: (9 cifras) ");
      Get(Alu.Telefono);
      Skip_Line;
      Put("Escuela: ");
      Escuela_IO.Get(Alu.Escuela);
      Skip_Line;
   end Lee;
end Alumnos;
