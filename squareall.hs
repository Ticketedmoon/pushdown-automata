squareall :: [Int] -> [Int]
squareall [] = []
squareall (top:bottom) = (top * top):squareall bottom
-- Multiply the head element by itself and place it at the end
