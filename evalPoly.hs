-- Given a value for x, first argument, evaluate the polynomial
evalPoly :: Int -> [Int] -> Int
evalPoly x [] = 0
evalPoly 0 [x] = 0
evalPoly x y = if length y > 1 then ((findPoly x y) * last y) + evalPoly x (init y) else head y

findPoly :: Int -> [Int] -> Int
findPoly x y = if length y > 1 then x * (findPoly x (tail y)) else 1
