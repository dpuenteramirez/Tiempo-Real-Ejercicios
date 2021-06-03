with Ada.Text_IO; use Ada.Text_IO;
procedure Excepciones_4 is
   I, J : Integer;
begin
   I := 0;
   while I < 50 loop
      begin
         J := 40 / I;
      exception
         when Constraint_Error =>
            Put_Line("Intento de dividir por 0");
      end;
      Put_Line("Resultado: " & Integer'Image(J));
      I := I + 10;
   end loop;
end Excepciones_4;
