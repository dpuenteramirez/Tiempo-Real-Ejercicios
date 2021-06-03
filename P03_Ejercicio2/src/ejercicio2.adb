with Ada.Text_IO; use Ada.Text_IO;
procedure Ejercicio2 is

   task Tarea1;
   task Tarea2;
   task Tarea3;

   task body Tarea1 is
   begin
      for I in 1..10 loop
         Put_Line("Soy T1");
         delay 0.01;
      end loop;
   end Tarea1;

   task body Tarea2 is
   begin
      for I in 1..15 loop
         Put_Line("Soy T2");
         delay 0.01;
      end loop;
   end Tarea2;

   task body Tarea3 is
   begin
      for I in 1..4 loop
         Put_Line("Soy T3");
         delay 0.01;
      end loop;
   end Tarea3;

begin
   for I in 0..7 loop
      Put_Line("Soy P");
   end loop;

end Ejercicio2;
