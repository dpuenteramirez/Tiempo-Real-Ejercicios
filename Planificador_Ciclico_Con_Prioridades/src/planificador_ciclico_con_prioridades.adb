with Ada.Text_IO, Ada.Calendar, System;
use Ada.Text_IO, Ada.Calendar, System;

procedure Planificador_Ciclico_Con_Prioridades is

   Comienzo : Time := Clock; -- hora de comienzo

   -- Tarea principal
   task Principal is
      entry Ejecutar (Id: in Integer; Tiempo : in Integer);
   end Principal;

   task body Principal is
      Semaforo : Integer := 1;
   begin
      Put_Line("Principal - preparada");
      loop
         select
            when Semaforo = 1 =>
               accept Ejecutar (Id : in Integer; Tiempo : in Integer) do
                  Semaforo := 0;
                  Put_Line("+++Inicio Tarea" & Integer'Image(Id) & "  " &
                             Duration'Image(Clock-Comienzo));
                  delay Duration(Tiempo);
                  Put_Line("+++Fin    Tarea" & Integer'Image(Id) & "  " &
                             Duration'Image(Clock-Comienzo));
                  Semaforo := 1;
               end Ejecutar;
         end select;
      end loop;
   end Principal;

   -- Tareas dinamicas periodicas del planificador
   task type Tarea_Periodica(Id: Integer; T: Integer; D: Integer; C: Integer;
                             Pri: System.Priority) is
      pragma Priority(Pri);
   end Tarea_Periodica;

   type Tarea_Dinamica is access Tarea_Periodica;

   -- Cuerpo de las Tareas Periodicas
   task body Tarea_Periodica is
      Periodo : constant Duration := Duration(T); -- Segundos
      Proximo_Periodo : Time := Clock;
   begin
      Loopgg
         -- Acciones Tarea
         Principal.Ejecutar(Id, C);
         -- Calculo del tiempo de nueva accion
         Proximo_Periodo := Proximo_Periodo + Periodo;
         delay until Proximo_Periodo;
      end loop;
   end Tarea_Periodica;

   -- Definicion de las tareas
   Tarea_1 : Tarea_Dinamica;
   Tarea_2 : Tarea_Dinamica;
   Tarea_3 : Tarea_Dinamica;

begin
   Put_Line("Inicio Planificador con prioridades");
   -- Inicio de las tareas (Id, Periodo, Plazo, Tiempo de Ejecucion, Prioridad)
   Tarea_1 := new Tarea_Periodica(1, 4, 4, 1, 6);
   Tarea_2 := new Tarea_Periodica(2, 5, 5, 2, 9);
   Tarea_3 := new Tarea_Periodica(3, 10, 10, 1, 12);
end Planificador_Ciclico_Con_Prioridades;
