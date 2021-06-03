with Clases;
package Menu is

   type Opcion is (Insertar,Mirar,Salir);
   procedure Pide_Opcion (La_Opcion : out Opcion);
   procedure Lee_Num_Alumno (Num : out Clases.Num_Alumno);
   procedure Mensaje_Error (Mensaje : in String);

end Menu;
