with Ada.Text_Io; use Ada.Text_Io;
with helper;

procedure fannkuch is

   type arr_type is array (Positive range <>) of Integer;
   package help is new  helper(ITEM=>Integer, INDEX => Positive ,AR_TYPE => arr_type,">" => ">","-" => "-","+" => "+");

   procedure output_array(arr : arr_type) is
   begin
      for i in arr'Range loop
         Ada.Text_IO.Put( arr(i)'Image );
      end loop;
      Ada.Text_IO.Put_Line( "");
   end output_array;

   element_count : Positive := 200000;
   arr       : arr_type(1..element_count);
   output_ar : arr_type(1..element_count);
   maxIndex  : Integer := arr'First;


begin
   for i in   1 .. element_count loop
      arr(i) := element_count - i + 1;
   end loop;


   output_ar := arr;
   Ada.Text_IO.Put_Line("Unsorted Array");
   --  output_array( arr );
   Ada.Text_IO.Put_Line( "------" );

   maxIndex := help.findMax( arr, arr'Last );

   for i in reverse arr'First .. arr'Last loop
      maxIndex := help.findMax( arr, i );
      if maxIndex /= i then
         arr := help.flipAtPosition(arr, maxIndex);
         arr := help.flipAtPosition(arr, i);
         output_ar := arr;
      end if;
   end loop;
   Ada.Text_IO.Put_Line( "----------" );
   output_array( output_ar );
end fannkuch;
