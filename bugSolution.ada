```ada
procedure Example is
   subtype Small_Index is Integer range 1..10;
   type My_Array is array (Small_Index) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array

   function Get_Value (Index : Small_Index) return Integer is -- Added range check
   begin
      return My_Arr(Index);
   end Get_Value;

begin
   --The following line will now raise an exception at compile time because of the added range check
   --put_line("Value at index 12 is: " & Integer'Image(Get_Value(12)));
   put_line("Value at index 5 is: " & Integer'Image(Get_Value(5)));
end Example;
```