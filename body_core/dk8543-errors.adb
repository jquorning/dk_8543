--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Ada.Strings.Fixed;

package body DK8543.Errors is


   procedure Error (File        : in Ada.Text_IO.File_Type;
                    File_Name   : in String;
                    Line_Number : in Natural;
                    Message     : in String)
   is
      use Ada.Text_IO;
      use Ada.Strings;

      Line_Number_Image : constant String := Fixed.Trim (Natural'Image (Line_Number), Left);
   begin
      Put (File, File_Name);
      Put (File, ":");
      Put (File, Line_Number_Image);
      Put (File, ": ");
      Put (File, Message);
      New_Line (File);
   end Error;


end DK8543.Errors;
