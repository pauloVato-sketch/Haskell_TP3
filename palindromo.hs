import Utils (revertList)
palindromo::[Int]->Bool 
palindromo [] = False
palindromo [_] = True
palindromo (a:x) 
 | (a:x) == backList = True
 | otherwise = False
 where 
  backList = Utils.revertList (a:x)
