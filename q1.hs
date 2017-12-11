-- Q1.hs --> GCD (Euclidean Distance)
myGCD :: Int -> Int -> Int
myGCD 0 0 = 0
myGCD 0 y = 0
myGCD x 0 = 0
myGCD x y | (x `mod` y == 0) = y
          | (y `mod` x == 0) = x
          | (x < y) = myGCD x (y `mod` x)
          | (y < x) = myGCD y (x `mod` y)
          | (otherwise) = 0
