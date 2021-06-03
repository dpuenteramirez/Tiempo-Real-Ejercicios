with Ada.Text_IO;
use Ada.Text_IO;
use Ada;
procedure Nota_Media is
type Nota_Num is range 0..10;
   type Nota_Letra is (Suspenso, Aprobado, Notable, Sobresaliente);
   package Nota_IO is new Text_IO.Integer_IO(Nota_Num);
   package Letra_IO is new Text_IO.Enumeration_IO(Nota_Letra);
   use Nota_IO, Letra_IO;
   Nota1, Nota2, Nota3, Nota_Media : Nota_Num;
   Nota_Final : Nota_Letra;
begin

   Put("Nota del primer trimestre: ");
   Get(Nota1);
   Skip_Line;
   Put("Nota del segundo trimestre: ");
   Get(Nota2);
   Skip_Line;
   Put("Nota del tercer trimestre: ");
   Get(Nota3);
   Skip_Line;
   New_Line;
   Nota_Media := (Nota1 + Nota2 + Nota3)/3;
   Put("Nota Media: ");
   Put(Nota_Media);
   New_Line;
   case Nota_Media is
      when 0..4 => Nota_Final := Suspenso;
      when 5..6 => Nota_Final := Aprobado;
      when 7..8 => Nota_Final := Notable;
      when 9..10 => Nota_Final := Sobresaliente;
   end case;
   Put("Nota final: ");
   Put(Nota_Final);
   New_Line;
end Nota_Media;
