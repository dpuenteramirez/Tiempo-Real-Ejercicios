with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Maximo is
   Maximo : Float := Float'First;
   X : Float;
   Num_Veces : Integer;
begin
   Put("Maximo: ");
   Put(Maximo); New_Line;
   Put("Numero de valores: ");
   Get(Num_Veces); Skip_Line;
   for I in 1..Num_Veces loop
      Put("Valor: ");
      Get(X); Skip_Line;
      if X > Maximo then
         Maximo := X;
      end if;
   end loop;
   Put("El maximo es: ");
   Put(Maximo);
   New_Line;
end Maximo;
