--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

package body DK8543JQ.Interfaces.C.Strings is


   function Is_Upper (Char : in Character) return Boolean is
   begin
      case Char is
         when 'A' .. 'Z' =>
            return True;
         when others     =>
            return False;
      end case;
   end Is_Upper;


   function Is_Lower (Char : in Character) return Boolean is
   begin
      case Char is
         when 'a' .. 'z' =>
            return True;
         when others     =>
            return False;
      end case;
   end Is_Lower;


   function Is_Alpha (Char : in Character) return Boolean is
   begin
      case Char is
         when 'A' .. 'Z' =>
            return True;
         when 'a' .. 'z' =>
            return True;
         when others     =>
            return False;
      end case;
   end Is_Alpha;


end DK8543JQ.Interfaces.C.Strings;
