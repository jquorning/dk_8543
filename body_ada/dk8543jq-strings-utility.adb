--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Ada.Strings.Fixed;

package body DK8543JQ.Strings.Utility is

   procedure Strip_End_Of_Line (From  : in     String;
                                Strip : in     String  := "--";
                                Last  : in out Natural)
   is
      Pos : constant Natural := Ada.Strings.Fixed.Index (From, Strip);
   begin
      if Pos /= 0 then
         Last := Pos - 1;
      end if;
   end Strip_End_Of_Line;


end DK8543JQ.Strings.Utility;
