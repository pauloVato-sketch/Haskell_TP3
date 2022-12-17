import Utils (somatorio, revertList)
somaParciais::[Int]->[Int]
somaParciais [] = []
somaParciais (a:x) = somaParciais (x2) ++ [sum] 
 where
  sum = Utils.somatorio (a:x)
  (b:y) = Utils.revertList (a:x)
  x2 = Utils.revertList y