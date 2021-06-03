package Complejos is
   -- Define el tipo complejo junto con 4 funciones y un operador

   type Complejo is private; --Desde otro paquete no se puede tener acceso a
                             --los detalles de su implementación.
   --Funciones y procedimientos sólo con su cabecera
   --su definición completa se pondrá en el cuerpo del paquete
   function Haz_Complejo (Re,Im : Float) return Complejo;
   function Real(C : Complejo) return Float;
   function Imag(C : Complejo) return Float;
   function "+" (C1,C2 : Complejo) return Complejo;
   function Image(C : Complejo) return String;

private
   type Complejo is record --Definición completa del tipo Complejo
      Re,Im : Float;
   end record;

end Complejos;
