package body Complejos is
   function "+" (C1,C2 : Complejo) return Complejo is
   begin
      return (C1.Re+C2.Re,C1.Im+C2.Im);
   end "+";

   function Haz_Complejo (Re,Im : Float) return Complejo is
   begin
      return (Re,Im);
   end Haz_Complejo;

   function Imag (C : Complejo) return Float is
   begin
      return C.Im;
   end Imag;

   function Image (C : Complejo) return String is
   begin
      if C.Im>=0.0 then
         return Float'Image(C.Re)&" + "&Float'Image(C.Im)&" J";
      else
         return Float'Image(C.Re)&" - "&Float'Image(abs C.Im)&" J";
   end if;
   end Image;

   function Real (C : Complejo) return Float is
   begin
      return C.Re;
   end Real;
end Complejos;
