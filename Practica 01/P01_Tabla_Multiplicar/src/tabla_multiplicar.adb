with Ada.Text_IO, Ada.Integer_Text_IO; use Ada.Text_IO, Ada.Integer_Text_IO;
procedure Tabla_Multiplicar is
   Resultado : Integer;
   Limite : Integer := 100;
begin
   Put_Line("Tablas De Multiplicar");
   Put_Line("=====================");
   New_Line(2);
   Ada.Integer_Text_IO.Get(Limite);
   for Fila in 1..Limite loop
      for Columna in 1..Limite loop
         Resultado := Fila*Columna;
         Put(Integer'Image(Fila) & "*" &
               Integer'Image(Columna) & "=" &
               Integer'Image(Resultado));
         New_Line;
      end loop;
   end loop;
end Tabla_Multiplicar;
