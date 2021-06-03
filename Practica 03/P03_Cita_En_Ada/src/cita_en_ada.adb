with Ada.Text_IO; use Ada.Text_IO;
procedure Cita_En_Ada is

   task Tarea_1 is
      entry Incrementar;
      entry Decrementar;
      entry Sumar (S: in Integer);
      entry Mostrar;
      entry Doblar;
   end Tarea_1;
   task body Tarea_1 is
      Contador : Integer := 0;
   Begin
      Put_Line("Tarea 1 preparada");
      loop
         --Put_Line("Texto dentro del loop");
         select
            accept Incrementar  do
               Contador := Contador + 1;
            end Incrementar;
         or
            accept Decrementar  do
               Contador := Contador - 1;
            end Decrementar;
         or
            accept Sumar (S : in Integer) do
               Contador := Contador + S;
            end Sumar;
         or
            accept Mostrar  do
               Put("               El valor de contador es: ");
               Put(Integer'Image(Contador));
               New_Line;
            end Mostrar;
         or
            accept Doblar  do
               Contador := Contador * 2;
            end Doblar;
         or
            terminate;
            -- si está esta sentencia cuando elprograma principal termina,
            -- termina también la tarea, si no es así,esta sigue ejecutandose
            -- en el bucle
         end select;
      end loop;
   end Tarea_1;

begin
   Put_Line("Soy el programa principal");
   delay 5.0;
   Tarea_1.Mostrar;
   delay 1.0;
   Put_Line("Orden de incrementar");
   Tarea_1.Incrementar;
   Tarea_1.Mostrar;
   delay 3.0;
   Put_Line("Orden de decrementar");
   Tarea_1.Decrementar;
   Tarea_1.Mostrar;
   delay 1.0;
   Put_Line("Orden de sumar 3");
   Tarea_1.Sumar(3);
   Tarea_1.Mostrar;
   delay 1.0;
   Put_Line("Orden de doblar");
   Tarea_1.Doblar;
   Tarea_1.Mostrar;
   delay 5.0;
   Put_Line("Fin del programa principal");


end Cita_En_Ada;
