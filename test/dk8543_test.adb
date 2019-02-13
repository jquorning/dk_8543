--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Ada.Text_IO;

with DK8543.Setup;

procedure DK8543_Test is
   use Ada.Text_IO;
   use DK8543.Setup;
begin
   DK8543.Dummy;
   DK8543.Dummy;
   Put (Get_Library_Name);
   Put (" (");
   Put (Get_Library_Version);
   Put (")");
   New_Line;
end DK8543_Test;
