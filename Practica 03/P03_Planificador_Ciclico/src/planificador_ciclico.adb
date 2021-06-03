with Ada.Text_IO, Ada.Calendar; use Ada.Text_IO, Ada.Calendar;

--          T  C  D
-- Tarea 1  4  1  4
-- Tarea 2  4  2  4
-- Tarea 3  8  1  8


procedure Planificador_Ciclico is
   type Frame is mod 2;
   Index : Frame := 0;
   Comienzo : Time := Clock; --hora de comienzo

   procedure Procedimiento_Generico (Id: in Integer; Tiempo: in Integer) is
   begin
      Put_Line("+++Tarea " &Integer'Image(Id) &" - Inicio " &Duration'Image(Clock-Comienzo));
      delay Duration(Tiempo);
      Put_Line("---Tarea " &Integer'Image(Id) &" - Fin " &Duration'Image(Clock-Comienzo));
   end Procedimiento_Generico;

   Periodo : constant Duration := Duration(4);
   Proximo_Periodo : Time := Clock;
   
begin
   Put_Line("Inicio de la programación cíclica");
   loop
      Put_Line("Tiempo: "&Duration'Image(Clock-Comienzo));
      case Index is
         when 0 =>
            Procedimiento_Generico(1,1);
            Procedimiento_Generico(2,2);
            Procedimiento_Generico(3,1);
         when 1 =>
            Procedimiento_Generico(1,1);
            Procedimiento_Generico(2,2);
      end case;
      Index := Index + 1;
      Proximo_Periodo := Proximo_Periodo + Periodo;
      delay until Proximo_Periodo;
   end loop;

end Planificador_Ciclico;
