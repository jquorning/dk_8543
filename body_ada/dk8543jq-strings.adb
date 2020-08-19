--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

package body DK8543JQ.Strings is


   procedure Trim
     (Item  : in     String;
      First : in out Natural;
      Last  : in out Natural;
      Side  : in     Ada.Strings.Trim_End)
   is
      procedure Trim_Left;
      procedure Trim_Right;

      procedure Trim_Left is
      begin
         for Index in First .. Last loop
            if Item (Index) /= Ada.Strings.Space then
               First := Index;
               exit;
            end if;
         end loop;
      end Trim_Left;

      procedure Trim_Right is
      begin
         for Index in reverse First .. Last loop
            if Item (Index) /= Ada.Strings.Space then
               Last := Index;
               exit;
            end if;
         end loop;
      end Trim_Right;

      use Ada.Strings;
   begin

      case Side is

         when Left  =>
            Trim_Left;

         when Right =>
            Trim_Right;

         when Both =>
            Trim_Left;
            Trim_Right;

      end case;

   end Trim;


   function In_First_Part
     (From : in String;
      Item : in String) return Boolean
   is
   begin
      if
        From'Length >= Item'Length and then
        From (From'First .. From'First + Item'Length - 1) = Item
      then
         return True;
      else
         return False;
      end if;
   end In_First_Part;


end DK8543JQ.Strings;
