with Text_IO;

procedure Hola_Mundo is
   package T_IO renames Text_IO;
begin
   Text_IO.Put_Line("Hola Mundo");
   T_IO.Put_Line("Paquete renombrado");
end Hola_Mundo;
