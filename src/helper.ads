generic
   type ITEM    is private;
   type INDEX   is (<>);
   type AR_TYPE is array (INDEX range <>) of ITEM;
   with function ">" (X, Y : ITEM) return BOOLEAN;
   with function "-" (X: INDEX; Y : INDEX) return Integer;
   with function "+" (X: Integer; Y : Integer) return INDEX;


package helper is
   function findMax (arr : AR_TYPE ; n : INDEX )  return INDEX;
   function flipAtPosition (arr : AR_TYPE ; pos : INDEX )  return AR_TYPE;
end helper;
