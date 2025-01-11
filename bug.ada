```ada
procedure Example is
   subtype Small_Index is Integer range 1..10;
   type My_Array is array (Small_Index) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array

   function Get_Value (Index : Integer) return Integer is
   begin
      return My_Arr(Index);
   end Get_Value;

begin
   -- Accessing an array element outside its range in the function
   put_line("Value at index 12 is: " & Integer'Image(Get_Value(12)));
end Example;
```