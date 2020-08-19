--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

package DK8543JQ.Auxiliary is

   function To_Ada_Symbol (Text : in String) return String;
   --  Convert into ada symbol

   function Image (Value : in Integer)
                  return String;
   --  Trimmed image of Value.

end DK8543JQ.Auxiliary;
