package Alumnos is

   Tamano_Nombre : constant Integer := 20;
   type Tipo_Escuela is (Teleco, Caminos, Fisicas, Medicina);
   type Alumno is private;
   procedure Lee (Alu : out Alumno);
   procedure Escribe (Alu : in Alumno);

private
   type Alumno is record
      Nombre : String(1..Tamano_Nombre);
      N_Nombre : Integer range 0..Tamano_Nombre:=0;
      Telefono : String(1..9);
      Escuela : Tipo_Escuela:=Teleco;
   end record;
end Alumnos;
