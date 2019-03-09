--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Ada.Text_IO;

package DK8543.Errors is


   procedure Error (File        : in Ada.Text_IO.File_Type;
                    File_Name   : in String;
                    Line_Number : in Natural;
                    Message     : in String);


end DK8543.Errors;
