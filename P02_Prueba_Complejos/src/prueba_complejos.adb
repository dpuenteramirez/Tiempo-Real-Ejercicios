with Ada.Text_IO, Complejos;
use Ada.Text_IO;
--use type Complejos.Complejo; --Para usar el operador como tal

procedure Prueba_Complejos is
   C1,C2,C3 : Complejos.Complejo;
begin
   --C1:=Complejos.Haz_Complejo(3.0,4.0);
   --C2:=Complejos.Haz_Complejo(5.0,-6.0);

   --C1.Re := 3.0;C1.Im := 4.0;
   --C2.Re := 5.0;C2.Im := 6.0;
   C1 := Complejos.Haz_Complejo(3.0,4.0);
   C2 := Complejos.Haz_Complejo(5.0,6.0);
   Put_Line("C1="&Complejos.Image(C1));
   Put_Line("C2="&Complejos.Image(C2));
   C3:=Complejos."+"(C1,C2); -- para usar el + normal, línea siguiente, descomentar la línea 3
   --C3:=C1+C2;
   --El acceso a las partes real e imaginaria se hace mediante las
   --funciones creadas al efecto
   Put_Line("Parte real C3="&Float'Image(Complejos.Real(C3)));
   Put_Line("Parte imag C3="&Float'Image(Complejos.Imag(C3)));
end Prueba_Complejos;
