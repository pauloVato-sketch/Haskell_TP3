import Utils(qsort)
distintos::[Int]->Bool
distintos [] = True
distintos [_] = True
distintos (a:b:x)
 | a == b = False
 | otherwise = distintos (Utils.qsort(b:x))