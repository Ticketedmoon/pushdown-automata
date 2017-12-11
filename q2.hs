dectobin :: Int -> String

dectobin 0 = "0" -- Base Case
dectobin 1 = "1"
dectobin n | (n `mod` 2 == 0) = (dectobin (n `div` 2)) ++ "0"
dectobin n | (otherwise) = (dectobin (n `div` 2)) ++ "1"
