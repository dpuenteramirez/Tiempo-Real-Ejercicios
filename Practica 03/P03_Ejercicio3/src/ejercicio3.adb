with Ada.Text_IO; use Ada.Text_IO; with Ada.Integer_Text_IO;
procedure Ejercicio3 is

   type Identificador is new Integer;
   type Rep is new Integer;

   task type Tarea_Original(IdTarea : Identificador; Rep : Integer);

   task body Tarea_Original is
   begin
      for I in 1..Rep loop
         Put_Line("Soy la tarea: " & IdTarea'Image);
      end loop;
      delay 0.01;
   end Tarea_Original;


   Tarea1  : Tarea_Original(1,1);
   Tarea2  : Tarea_Original(2,2);
   Tarea3  : Tarea_Original(3,3);


begin
   null;
end Ejercicio3;
