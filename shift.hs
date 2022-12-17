shift::Int -> [Int] -> [Int]
shift 0 [] = []
shift p [] = []
shift 0 (a:x) = (a:x)
shift n (a:x) = shift (n-1) (x++[a])