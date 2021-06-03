with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Array_Modalidad2 is
   N : Positive;
   Prod_Escalar : Float := 0.0;
begin
   Put("Introduce dimension: ");
   Get(N); Skip_Line;
   declare
      type Vector is array (1..N) of Float;
      V1, V2 : Vector;
   begin
      Put_Line("Vector 1: ");
      for I in V1'Range loop
         Put("Introduce componente ");
         Put(I); Put(": ");
         Get(V1(I)); Skip_Line;
      end loop;
      Put_Line("Vector 2: ");
      for I in V2'Range loop
         Put("Introduce componente ");
         Put(I); Put(": ");
         Get(V2(I)); Skip_Line;
      end loop;
      for I in V1'Range loop
         Prod_Escalar := Prod_Escalar + V1(I) * V2(I);
      end loop;
      Put("El producto escalar es: ");
      Put(Prod_Escalar);
      New_Line;
     end;
end Array_Modalidad2;
