sumPoly :: [Int] -> [Int] -> [Int]
sumPoly x [] = x
sumPoly [] x = x
sumPoly (head:tail) (otherH:otherT) = (head + otherH) : (sumPoly tail otherT)
