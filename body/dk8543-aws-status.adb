--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Ada.Strings.Fixed;

package body DK8543.AWS.Status is


   function Host_Part (Host : in Host_String) return Host_String
   is
      use Ada.Strings.Fixed;
      Separator          : constant String := ":";
      Separator_Position : constant Natural := Index (Host, Separator);
   begin
      if Separator_Position = 0 then
         return Host;
      else
         return Host (Host'First .. Separator_Position - 1);
      end if;
   end Host_Part;


   function Extension_Part
     (File_Name : in File_Name_String) return File_Name_String
   is
      use Ada.Strings;
      Separator          : constant String  := ".";
      Separator_Position : constant Natural := Fixed.Index (File_Name, Separator,
                                                            Going => Backward);
   begin
      if Separator_Position = 0 then
         return "";
      else
         return File_Name (Separator_Position + Separator'Length .. File_Name'Last);
      end if;
   end Extension_Part;


end DK8543.AWS.Status;
