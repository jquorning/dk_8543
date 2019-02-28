--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

package body DK8543.Text_IO is


   procedure Recreate
     (File      : in out Ada.Text_IO.File_Type;
      Mode      : in     Ada.Text_IO.File_Mode;
      File_Name : in     String)
   is
      use Ada.Text_IO;
   begin
      Create (File, Mode, File_Name);
   exception
      when others =>
         Open (File, Mode, File_Name);
   end Recreate;


end DK8543.Text_IO;
