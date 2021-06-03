with Ada.Text_IO; use Ada.Text_IO;

procedure Una_Tarea is
   task type A_Type;
   task type B_Type;

   A : A_Type; -- podemos declarar objetos de las tareas
   B : B_Type;

   task body A_Type is
   begin
      loop
         Put_Line("soy la tarea 1");
         delay 3.0;
      end loop;
   end A_Type;
   task body B_Type is
   begin
      loop
         Put_Line(" la tarea 2");
         delay 6.0;
      end loop;
   end B_Type;
begin
   Put_Line("Soy el prog. prac1.");
end Una_Tarea;
