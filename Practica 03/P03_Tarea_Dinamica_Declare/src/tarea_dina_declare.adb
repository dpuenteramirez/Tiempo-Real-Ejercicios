with Tipos_Tarea, Ada.Text_IO;
use Tipos_Tarea, Ada.Text_IO;
procedure Tarea_Dina_Declare is
   T1 : Tarea_Repetitiva(1);
   T_Dinamica : Tarea_Ptr;
   Td : Tarea_Ptr;
begin
   Put_Line("Tarea Principal");
   T_Dinamica := new Tarea_Repetitiva(4);
   declare
      task type T;
      type A is access T;
      P : A;
      Q : A;
      task body T is -- tarea dinamica en el declare
      begin
         for I in 1..3 loop
            Put_Line(" Tarea dinamica del declare");
            delay 1.0;
         end loop;
      end T;
   begin
      Put_Line("Acccion previa a tarea dinmica");
      P := new T;
      Q := new T;
      Put_Line("Accion tras tarea dinamica");
   end;
   Td := new Tarea_Repetitiva(5);
end Tarea_Dina_Declare;
