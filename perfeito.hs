import Utils (somatorio)
perfeito::Int->Bool
perfeito n = n == Utils.somatorio somaDivs 
 where 
  somaDivs = [x | x <- [1..n-1], n `mod` x == 0]