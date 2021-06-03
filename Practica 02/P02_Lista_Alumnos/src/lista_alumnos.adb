with Menu,Alumnos,Clases;
procedure Lista_Alumnos is
   Tercero_B : Clases.Clase;
   Eleccion : Menu.Opcion;
   Alu : Alumnos.Alumno;
   Num : Clases.Num_Alumno;
begin
   loop
      Menu.Pide_Opcion (Eleccion);
      case Eleccion is
      when Menu.Insertar =>
         if Clases.Llena(Tercero_B) then
            Menu.Mensaje_Error("No caben mas alumnos");
         else
            Alumnos.Lee(Alu);
            Clases.Inserta_Alumno(Alu,Tercero_B);
         end if;
      when Menu.Mirar =>
         Menu.Lee_Num_Alumno(Num);
         if Num>Clases.Numero_Alumnos(Tercero_B) then
            Menu.Mensaje_Error("Alumno no existe");
         else
            Alu:=Clases.Dame_Alumno(Num,Tercero_B);
            Alumnos.Escribe(Alu);
         end if;
      when Menu.Salir => exit;
      end case;
   end loop;
end Lista_Alumnos;
