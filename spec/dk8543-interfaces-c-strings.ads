--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

package DK8543.Interfaces.C.Strings is

   function Is_Upper (C : in Character) return Boolean;
   function Is_Lower (C : in Character) return Boolean;
   function Is_Alpha (C : in Character) return Boolean;

end DK8543.Interfaces.C.Strings;
