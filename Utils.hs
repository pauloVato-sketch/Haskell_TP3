module Utils
( somatorio
, produtorio
, qsort
, fatores
, fact
, cubo
, percorreListaComparaValor
, revertList
) where

somatorio::[Int] -> Int
somatorio [] = 0
somatorio (a:x) = a + somatorio(x) 

produtorio::[Int] -> Int
produtorio [] = 1
produtorio (a:x) = a * produtorio(x) 

qsort::[Int] -> [Int]
qsort [] = []
qsort (a:x) = qsort [ b | b <- x, b <= a ] ++ [a] ++ qsort [ b | b <- x, b > a ]

fatores::Int -> [Int]
fatores 0 = []
fatores n = [ i | i <- [1..n `div` 2], n `mod` i == 0 ] ++ [n]

fact::Int -> Int
fact n = produtorio[1..n]

cubo:: [Int]
cubo = [ n * n * n | n <- [1..50]]

percorreListaComparaValor::Int -> [Int] -> Bool
percorreListaComparaValor _ [] = True
percorreListaComparaValor a (b:x2) 
 | a == b = False
 | a /= b = percorreListaComparaValor a x2

revertList::[Int]->[Int]
revertList [] = []
revertList(a:x) = revertList x ++ [a]

