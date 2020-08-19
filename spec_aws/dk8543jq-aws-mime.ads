--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with DK8543JQ.AWS.Status;

package DK8543JQ.AWS.MIME is

   subtype T_MIME is String;
   function To_MIME
     (Extension : in Status.File_Extension_String)
     return T_MIME;
   --  Get MIME type from file extension.
   --  Example: "css" returns "text/css".
   --  Example: ""    returns "text/html".

end DK8543JQ.AWS.MIME;
