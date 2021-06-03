package Tipos_Tarea is

   type Id is new Integer;
   
   task type Tarea_Repetitiva(IdTarea : Id);
   
   --type T1 is access Tarea_Repetitiva;
   type Tarea_Ptr is access Tarea_Repetitiva;

end Tipos_Tarea;
