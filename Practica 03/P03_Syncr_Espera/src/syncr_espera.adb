with Ada.Text_IO; use Ada.Text_IO;
procedure Syncr_Espera is
   type Dato is new Integer;
   task T1 is
      entry Arranca (Datos_Iniciales : in Dato);
   end T1;

   task T2 is
      entry Arranca_Fase1(Datos_Iniciales : in Dato);
      entry Arranca_Fase2;
   end T2;

   task body T1 is
      D : Dato;
   begin
      Put_Line("T1 - Preparada");
      accept Arranca (Datos_Iniciales : in Dato) do
         D:=Datos_Iniciales;
         Put_Line("T1 - arranca con " &D'Img);
         delay 3.0;
         Put_Line("T1 - termina con " &D'Img);
      end Arranca;
      delay 3.0;
      Put_Line("T1 - va a arrancar fase 2 de T2");
      T2.Arranca_Fase2;
      Put_Line("T1 - hace más cosas");
      -- hace más cosas
   end T1;

   task body T2 is
      D : Dato;
   begin
      Put_Line("T2 - Preparada");
      accept Arranca_Fase1 (Datos_Iniciales : in Dato) do
         D:=Datos_Iniciales;
         Put_Line("T2 - arrancando en fase 1 con " &D'Img);
         -- hace cosas de la fase 1
         delay 3.0;
         Put_Line("T2 - fin de la fase 1 con " &D'Img);
      end Arranca_Fase1;
      delay 3.0;
      Put_Line("T2 - en espera de arranque de fase 2");

      accept Arranca_Fase2  do
         Put_Line("T2 - Arrancando en fase 2");
         -- hace más cosas de la fase 2
         delay 3.0;
         Put_Line("T2 - fin de la fase 2");
      end Arranca_Fase2;
   end T2;

begin
   delay 2.0;
   Put_Line("MAIN - inicio main");
   delay 1.0;
   Put_Line("MAIN - Arranca T1");
   T1.Arranca(1);
   delay 2.0;
   Put_Line("MAIN - Arranca fase 1 de T2");
   T2.Arranca_Fase1(2);
   Put_Line("MAIN - Todo arrancado");
   delay 10.0;
   Put_Line("MAIN - fin main");

end Syncr_Espera;
