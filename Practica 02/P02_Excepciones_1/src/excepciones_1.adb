with Ada.Text_IO;
with Ada.Exceptions;
procedure Excepciones_1 is
   I : Integer;
begin
   I := 0;
   I := 4 / I; -- lanzará una excepción del tpo Constraint_Error
   Ada.Text_IO.Put_Line("Resultado: " & Integer'Image(I));
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Intento de dividir por 0");
   when Except:others =>
      Ada.Text_IO.Put_Line("Excepción imprevista " & Ada.Exceptions.Exception_Name(Except)
                             & " en: " & Ada.Exceptions.Exception_Message(Except));

end Excepciones_1;
