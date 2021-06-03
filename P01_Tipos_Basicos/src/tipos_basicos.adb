with Text_IO; use Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Tipos_Basicos is

   I : Integer := 10;
   J, K : Integer;
   M : Integer := 2 * I;
   F : Float;
   Pi : constant Float := 3.14159_26536;
   B : Character;

begin
   J := 2 * J; -- correcto pero de resultado indeterminado, porque J no esta
              -- inicializado, dara un warning al compilar
   --F := 2 * I; -- Salta error, tipos no compatibles
   F := 2.0 * Float(I); -- Correcto
   Text_IO.Put("    Sin 'Image: ");
   Put(F);
   Text_IO.New_Line;
   --M := A mod I;
   --Put("  Mod " & Integer'Image(A) & "/" & Integer'Image(I) & "=" & Integer'Image(M));
end Tipos_Basicos;
