with Ada.Text_IO;
with Ada.Strings.Unbounded;
use Ada.Text_IO;
procedure Fich_1 is
   package ASU renames Ada.Strings.Unbounded;
   Fich : Ada.Text_IO.File_Type;
   S : ASU.Unbounded_String;
   T : ASU.Unbounded_String;
begin
   -- Abre fichero prueba.tmp
   Open(Fich, Ada.Text_IO.Out_File, "prueba.tmp");
   S := ASU.To_Unbounded_String(Ada.Text_IO.Get_Line(Fich));
   Put(ASU.To_String(S)); New_Line;
   T := ASU.To_Unbounded_String(Ada.Text_IO.Get_Line(Fich)); New_Line;
   Put(ASU.To_String(T));New_Line;
   Close(Fich);
   -- Cierro el fichero

   -- CREA
   Create(Fich, Out_File, "prueba3.txt");
   Put_Line(Fich, "esto es una linea");
   Put_Line(Fich, "esto es la segunda linea");
   Close(Fich);


   -- ANYADE
   Open(Fich, Append_File, "prueba3.txt");
   Put_Line(Fich, "esto es la tercera linea");
   S := ASU.To_Unbounded_String(Ada.Text_IO.Get_Line(Fich));
   -- da error, ya que estamos en modo escritura, no lectura
   Put(ASU.To_String(S)); New_Line;
   Close(Fich);
end Fich_1;
