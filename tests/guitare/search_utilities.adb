
-- Example uses/instantiations:
--   EXAMPLE #1: Search an ascending ordered array of enumeration literals.
--   with Search_Utilities, TEXT_IO;
--   . . .
--   type My_Component_Type is (Red, Blue, Green, Orange);
--   type My_Index_Type is (Sun, Mon, Tue, Wed, Thu, Fri, Sat);
--   type My_Array_Type is array (My_Index_Type range <>) of My_Component_Type;
--   . . .
--   My_Component : My_Component_Type;
--   My_Array     : My_Array_Type (Mon .. Fri);
--   Location     : My_Index_Type;
--   Found        : BOOLEAN;
--   . . .
--   package My_Search is new Search_Utilities (
--     Component_Type => My_Component_Type,
--     Index_Type     => My_Index_Type,
--     Array_Type     => My_Array_Type);
--   . . .
--   My_Search.Search (
--     Component             => My_Component,
--     Search_Array          => My_Array,
--     Location_Found        => Location,
--     Component_Found       => Found,
--     Order_Strategy        => My_Search.Ordered);
--   if Found then
--     TEXT_IO.PUT_LINE ("Component found");
--   else
--     TEXT_IO.PUT_LINE ("Component not found");
--   end if;
--   . . .
--   end;  -- End of driver routine.
--   -------------------------------------------------------------------
--   EXAMPLE #2: Search an unordered array of records.
--   with Search_Utilities, TEXT_IO;
--   . . .
--   type My_Component_Type is
--     record
--       Field1 : INTEGER;
--       Field2 : FLOAT;
--     end record;
--   subtype My_Index_Type is INTEGER range -100 .. 100;
--   type My_Array_Type is array (My_Index_Type range <>) of My_Component_Type;
--   . . .
--   My_Component : My_Component_Type;
--   My_Array     : My_Array_Type (-100 .. 100);
--   . . .
--   package My_Search is new Search_Utilities (
--     Component_Type => My_Component_Type,
--     Index_Type     => My_Index_Type,
--     Array_Type     => My_Array_Type);
--   . . .
--   if My_Search.Search (
--        Component    => My_Component,
--        Search_Array => My_Array) then
--     TEXT_IO.PUT_LINE ("Component found");
--   else
--     TEXT_IO.PUT_LINE ("Component not found");
--   end if;
--   . . .
--   end;  -- End of driver routine.
--   -------------------------------------------------------------------
--   Example #3: Search an array of ordered access types.
--   with Search_Utilities, TEXT_IO;
--   . . .
--   type Taxpayer_Type;  -- An incomplete type declaration.
--   type Taxpayer_Access_Type is access Taxpayer_Type;
--   type Taxpayer_Type is
--     record
--       Name              : STRING (1 .. 40);
--       Age               : NATURAL;
--       ID_Number         : POSITIVE;  -- Social security number.
--     end record;
--   type My_Index_Type is range 1 .. 1_000_000;
--   type My_Array_Type is array (My_Index_Type range <>) of Taxpayer_Access_Type;
--   . . .
--   function Descending_Taxpayer_Search (Left, Right : in Taxpayer_Access_Type) return BOOLEAN;
--   . . .
--   package My_Search is new Search_Utilities (Taxpayer_Access_Type,
--     My_Index_Type, My_Array_Type, Descending_Taxpayer_Search);
--   . . .
--   My_Array                 : My_Array_Type (1 .. 1_000_000);
--   Number_of_Comparisons    : My_Search.Performance_Instrumentation_Type;
--   A_Component              : Taxpayer_Access_Type;
--   Location                 : My_Index_Type;
--   Found                    : BOOLEAN;
--   . . .
--   function Descending_Taxpayer_Search (Left, Right : in Taxpayer_Access_Type)
--     return BOOLEAN is
--   begin
--     return (Left.Name > Right.Name) or
--            ((Left.Name = Right.Name) and (Left.ID_Number > Right.ID_Number));
--   end Descending_Taxpayer_Search;
--   . . .
--   My_Search.Search (A_Component, My_Array, Location, Found, Num_Compares,
--     My_Search.Ordered);
--   if Found then
--     TEXT_IO.PUT_LINE ("Component found. Took " &
--       Search_Utilities.Performance_Instrumentation_Type'IMAGE (Num_Compares) &
--       " comparisons.");
--   end if;
--   . . .
--   end;   -- End of the driver routine.
--   ---------------------------------------------------------------------------
--   EXAMPLE #4: Search an array of floating point numbers.
--   with Search_Utilities;
--   . . .
--   type My_Array_Type is array (POSITIVE range <>) of FLOAT;
--   . . .
--   My_Array : My_Array_Type (1 .. 10);
--   Location : POSITIVE;
--   Found    : BOOLEAN;
--   . . .
--   function My_Equality (L, R : in FLOAT) return BOOLEAN is
--   begin
--     . . .  -- Check for "close enough" on equality.
--     return <some BOOLEAN expression>;
--   end My_Equality;
--   . . .
--   package My_Search_Utilities is new Search_Utilities (FLOAT,
--     POSITIVE, My_Array_Type, My_Equality);
--   . . .
--   My_Search.Search (3.14159, My_Array, Location, Found);
--   . . .
--   end;  -- End of the driver routine.

package body Search_Utilities is
  Version_Number : constant STRING := "1.1 (MOPR258)";

  function Version return STRING is
  begin
    return Version_Number;
  end Version;

  procedure Search (
    Component                        : in     Component_Type;
    Search_Array                     : in     Array_Type;
    Location_Found                   :    out Index_Type;
    Component_Found                  :    out BOOLEAN;
    Number_of_Comparisons            :    out Performance_Instrumentation_Type;
    Order_Strategy                   : in     Data_Order_Type := Not_Ordered;
    No_Match_Index                   : in     Index_Type     := Index_Type'LAST) is

    Local_Comparisons : Performance_Instrumentation_Type := 0;

    -- The procedure below is a utility routine.

    procedure Update_Performance_Instrumentation (
      Instrumentation_Count : in out Performance_Instrumentation_Type) is
    begin
      -- Bump the counter unless an overflow has occurred.

      if Instrumentation_Count /= Performance_Instrumentation_Type'FIRST then
        if Instrumentation_Count /= Performance_Instrumentation_Type'LAST then
          Instrumentation_Count := Instrumentation_Count + 1;
        else
          Instrumentation_Count := Performance_Instrumentation_Type'FIRST;
        end if;
      end if;
    end Update_Performance_Instrumentation;

    -- The two local procedures below perform two types of searches
    -- on the array: a binary search (if data is ordered), and
    -- a sequential search (if data is not ordered).

    procedure Binary_Search is
      High : Index_Type range Search_Array'FIRST .. Search_Array'LAST
        := Search_Array'LAST;
      Low  : Index_Type range Search_Array'FIRST .. Search_Array'LAST
        := Search_Array'FIRST;
      Curr : Index_Type range Search_Array'FIRST .. Search_Array'LAST
        := Index_Type'VAL ((Index_Type'POS (High) + Index_Type'POS (Low)) / 2);
    begin
      while (Search_Array (Curr) /= Component) and (High > Low) loop
        Update_Performance_Instrumentation (Local_Comparisons);

        if Search_Array (Curr) < Component then
          if Curr = Search_Array'LAST then
            exit;  -- Can't go any further, component not found.
          else
            Low := Index_Type'SUCC (Curr);
          end if;
        elsif Curr = Search_Array'FIRST then
          exit;  -- Can't go any further, component not found.
        else
          High := Index_Type'PRED (Curr);
        end if;

        Curr := Index_Type'VAL ((Index_Type'POS (High) +
          Index_Type'POS (Low)) / 2);
      end loop;

      if Search_Array (Curr) = Component then
        Location_Found := Curr;
        Component_Found := TRUE;
      else
        Location_Found := No_Match_Index;
        Component_Found := FALSE;
      end if;
    end Binary_Search;

    -- Sequential_Search will search for the component starting at the
    -- beginning of the array.  This search technique is used only if
    -- the user's data is not sorted.

    procedure Sequential_Search is
      Index : Index_Type range Search_Array'FIRST .. Search_Array'LAST :=
        Search_Array'FIRST;
    begin
      while (Index /= Search_Array'LAST) and
            (Search_Array (Index) /= Component) loop
        Update_Performance_Instrumentation (Local_Comparisons);
        Index := Index_Type'SUCC (Index);
      end loop;

      if Search_Array (Index) = Component then
        Location_Found := Index;
        Component_Found := TRUE;
      else
        Location_Found := No_Match_Index;
        Component_Found := FALSE;
      end if;
    end Sequential_Search;

  -- Body of Search follows below.

  begin
    -- Check for null array... a special case.

    if Search_Array'LAST < Search_Array'FIRST then
      Location_Found := No_Match_Index;
      Component_Found := FALSE;
    else
      case Order_Strategy is
        when Not_Ordered => Sequential_Search;  -- Search an unordered array.
        when Ordered     => Binary_Search;      -- Search an ordered array.
      end case;
    end if;

    Number_of_Comparisons := Local_Comparisons;
  end Search;

  -- The following overloading of Search is used when instrumentation
  -- analysis data are not required.

  procedure Search (
    Component                  : in     Component_Type;
    Search_Array               : in     Array_Type;
    Location_Found             :    out Index_Type;
    Component_Found            :    out BOOLEAN;
    Order_Strategy             : in     Data_Order_Type := Not_Ordered;
    No_Match_Index             : in     Index_Type     := Index_Type'LAST) is

    Dummy_Comparisons : Performance_Instrumentation_Type;
  begin
    Search (Component, Search_Array, Location_Found, Component_Found,
      Dummy_Comparisons, Order_Strategy, No_Match_Index);
  end Search;

  -- The following overloading of Search should be used when only a
  -- boolean result is desired.

  function Search (
    Component                  : in Component_Type;
    Search_Array               : in Array_Type;
    Order_Strategy             : in Data_Order_Type := Not_Ordered)
    return BOOLEAN is

    Component_Found   : BOOLEAN;
    Dummy_Location    : Index_Type;
    Dummy_Comparisons : Performance_Instrumentation_Type;
  begin
    Search (Component, Search_Array, Dummy_Location, Component_Found,
      Dummy_Comparisons, Order_Strategy);

    return Component_Found;
  end Search;

  -- The following overloading of Search should be used when only an
  -- index result is desired.

  function Search (
    Component                  : in Component_Type;
    Search_Array               : in Array_Type;
    Order_Strategy             : in Data_Order_Type := Not_Ordered;
    No_Match_Index             : in Index_Type      := Index_Type'LAST)
    return Index_Type is

    Location_Found    : Index_Type;
    Dummy_Component   : BOOLEAN;
    Dummy_Comparisons : Performance_Instrumentation_Type;
  begin
    Search (Component, Search_Array, Location_Found, Dummy_Component,
      Dummy_Comparisons, Order_Strategy, No_Match_Index);

    return Location_Found;
  end Search;
end Search_Utilities;
