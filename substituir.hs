substituir:: Int -> Int -> [Int]-> [Int]
substituir a b [] = []
substituir a b (c:x)
 | a == c = [b] ++ substituir a b x
 | a /= c = c : substituir a b x
