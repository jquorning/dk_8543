--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Ada.Text_IO;

package DK8543.Text_IO is


   procedure Recreate
     (File      : in out Ada.Text_IO.File_Type;
      Mode      : in     Ada.Text_IO.File_Mode;
      File_Name : in     String);
   --  Create or open file.


   Line_Number : Natural := Natural'First;

   function Line_Get (File : Ada.Text_IO.File_Type) return String;
   --  Get line from file with Line_Number update


end DK8543.Text_IO;
