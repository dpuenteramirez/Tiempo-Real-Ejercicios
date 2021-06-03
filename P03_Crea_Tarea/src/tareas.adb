with Ada.Text_IO; use Ada.Text_IO;
package body Tareas is
   T1 : Tarea_1;
   task body Tarea_1 is
   begin
      loop 
         Put_Line("Soy la tarea 1");
         delay 1.0;
      end loop;
   end Tarea_1;
   
   task body Tarea_2 is
   begin
      loop 
         Put_Line("Soy la tarea 2");
         delay 3.0;
      end loop;
   end Tarea_2;
   
   task body Tarea_3 is
   begin
      loop 
         Put_Line("Soy la tarea 3");
         delay 4.5;
      end loop;
   end Tarea_3;
end Tareas;
