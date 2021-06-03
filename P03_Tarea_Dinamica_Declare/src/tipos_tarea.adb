with Ada.Text_IO; use Ada.Text_IO;
package body Tipos_Tarea is

   task body Tarea_Repetitiva is 
   begin 
      loop 
         Put_Line("Id = " & IdTarea'Img);
         delay 1.0;
      end loop;
   end Tarea_Repetitiva;

end Tipos_Tarea;
