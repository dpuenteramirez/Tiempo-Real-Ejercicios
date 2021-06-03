with Tipos_Tarea; use Tipos_Tarea;
procedure Crea_Tarea_De_Tipo is
   T1 : Tarea_Repetitiva(1);
   T2 : Tarea_Repetitiva(2);
   T3 : Tarea_Repetitiva(3);

   type Tarea_Ptr is access Tarea_Repetitiva;

   T : Tarea_Ptr;

begin
   T := new Tarea_Repetitiva(4);
end Crea_Tarea_De_Tipo;
