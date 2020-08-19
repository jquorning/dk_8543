--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

package DK8543JQ.AWS.Status is

   subtype Host_String is String;
   function Host_Part (Host : in Host_String) return Host_String;
   --  Get host part of Host with possibly port.
   --  Example: "example.com:8088" returns "example.com".

   subtype File_Name_String is String;
   subtype File_Extension_String is String;
   function Extension_Part
     (File_Name : in File_Name_String) return File_Extension_String;
   --  Get extension part of File_Name with possible file extension.
   --  Example: "main.css" returns "css".

end DK8543JQ.AWS.Status;
