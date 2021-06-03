with Alumnos;
package Clases is

   Max_Alumnos : constant Integer := 100;
   subtype Num_Alumno is Integer range 1..Max_Alumnos;
   type Clase is private;

   procedure Inserta_Alumno (Alu : in Alumnos.Alumno; La_Clase : in out Clase);
   function Dame_Alumno (Num : in Num_Alumno; La_Clase : in Clase) return Alumnos.Alumno;
   function Numero_Alumnos (La_Clase : in Clase) return Natural;
   function Llena (La_Clase : in Clase) return Boolean;

Private

   type Tipo_Alumnos is array (1..Max_Alumnos) of Alumnos.Alumno;
   type Clase is record
      Alumnos : Tipo_Alumnos;
      Num : Integer:=0;
   end record;

end Clases;
