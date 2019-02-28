--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Ada.Text_IO;

with GNAT.Traceback;
with GNAT.Traceback.Symbolic;

package body DK8543.GNAT.Exceptions is


   procedure Put_Trace
   is
      use GNAT.Traceback;
      Trace  : GNAT.Traceback.Tracebacks_Array (1 .. 100);
      Length : Natural;
   begin
      GNAT.Traceback.Call_Chain (Trace, Length);
      Ada.Text_IO.Put_Line
        (GNAT.Traceback.Symbolic.Symbolic_Traceback
           (Trace (1 .. Length)));
   end Put_Trace;


end DK8543.GNAT.Exceptions;
