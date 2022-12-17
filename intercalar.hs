intercalar::[Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar [e1] [e2] 
 | e1 <= e2 = [e1] ++ intercalar [] [e2]
 | e2 < e1 = [e2] ++ intercalar [e1] []
intercalar (x) [] = x
intercalar [] (x) = x
intercalar (a:x) (b:y) 
 | a <= b = [a] ++ intercalar x (b:y)
 | b < a = [b] ++ intercalar (a:x) y