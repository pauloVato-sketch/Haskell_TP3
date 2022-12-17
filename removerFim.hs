import Utils(revertList)
removerFim::Int -> [Int] -> [Int]
removerFim 0 [] = []
removerFim p [] = []
removerFim 0 (a:x) = (a:x)
removerFim n (a:x) = removerFim (n-1) y
 where
  (b:x2) = revertList (a:x)
  y = revertList x2
