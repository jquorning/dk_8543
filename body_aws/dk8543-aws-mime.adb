--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with AWS.MIME;

package body DK8543.AWS.MIME is


   function To_MIME
     (Extension : in Status.File_Extension_String)
     return T_MIME
   is
      use Standard.AWS.MIME;
      LC : constant String := Extension;
   begin
      if    LC = ""     then
         return Text_HTML;
      elsif LC = "html" then
         return Text_HTML;
      elsif LC = "css"  then
         return Text_CSS;
      else
         raise Constraint_Error;
      end if;
   end To_MIME;


end DK8543.AWS.MIME;
