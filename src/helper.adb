-- package for helper functions

package body helper is

   function findMax (arr : AR_TYPE; n : INDEX) return INDEX
   is
      max      : ITEM := arr(arr'First);
      maxIndex : INDEX := arr'First;
   begin
      for i in arr'First .. n loop
         if arr(i) > max then
            max := arr(i);
            maxIndex := i;
         end if;
      end loop;
      return maxIndex;
   end;



   function flipAtPosition (arr : AR_TYPE ; pos : INDEX ) return AR_TYPE
   is
      tmp_ar    : AR_TYPE := arr;
      tmp_index : Integer;
      tmp2      : INDEX;
   begin
      for i in  arr'First .. pos     loop
         tmp_index := pos - i;
         tmp2 := tmp_index + 1;
         tmp_ar(i) := arr( tmp2 );
      end loop;      
      return tmp_ar;
   end;
end helper;
