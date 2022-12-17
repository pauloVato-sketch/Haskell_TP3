import Utils 
disjuntas::[Int]->[Int]->Bool
disjuntas [] [] = True
disjuntas [] [_] = True
disjuntas [] (_:_:_) = True
disjuntas (a:x) (b:x2) 
 | a == b = False
 | a /= b = Utils.percorreListaComparaValor a x2 && disjuntas x (b:x2)
 