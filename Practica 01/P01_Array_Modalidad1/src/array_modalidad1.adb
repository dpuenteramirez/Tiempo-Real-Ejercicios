with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Array_Modalidad1 is
   Dimension_Max : constant Integer := 100;
   type Vector is array (1..Dimension_Max) of Float;
   V1, V2 : Vector;
   N : Integer range 1..Dimension_Max;
   Prod_Escalar : Float := 0.0;
begin
   Put("Introduce dimension: ");
   Get(N); Skip_Line;
   Put_Line("Vector 1: ");
   for I in 1..N loop
      Put("Introduce componente ");
      Put(I); Put(": ");
      Get(V1(I)); Skip_Line;
   end loop;
   Put_Line("Vector 2: ");
   for I in 1..N loop
      Put("Introduce componente ");
      Put(I); Put(": ");
      Get(V2(I)); Skip_Line;
   end loop;
   for I in 1..N loop
      Prod_Escalar := Prod_Escalar + V1(I) * V2(I);
   end loop;
   Put("El producto escalar es: ");
   Put(Prod_Escalar);
   New_Line;
end Array_Modalidad1;
