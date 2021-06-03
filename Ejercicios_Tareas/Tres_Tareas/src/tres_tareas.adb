with Ada.Text_IO; use Ada.Text_IO;
procedure Tres_Tareas is

   type Id is new Integer;
   type N is new Integer;

   task type Tarea(Id_Tarea : Id; R : N);
   task body Tarea is
   begin
      for I in 1..R loop
         Put_Line("Soy T"&Id_Tarea'Image);
        -- delay 0.5;
      end loop;
   end Tarea;

   Tarea1 : Tarea(1,10);
   Tarea2 : Tarea(2,15);
   Tarea3 : Tarea(3,4);

   type Ptr is access Tarea;
   Tarea4 : Ptr;

begin
   for I in 1..7 loop
      Put_Line("Soy P");
   end loop;
   -- La tarea 4 no se ejecuta hasta que no llega el programa aqui
   Tarea4 := new Tarea(4,9);

end Tres_Tareas;
