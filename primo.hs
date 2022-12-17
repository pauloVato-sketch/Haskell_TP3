primo:: Int->Bool
primo n = divs == [1,n]
 where 
  divs = [x | x <- [1..n], n `mod` x == 0]