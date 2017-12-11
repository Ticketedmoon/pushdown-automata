-- Slightly different to wc.hs
-- Remove all even nums
we :: [Int] -> [Int]
we [] = []
we (h:t) | (h `mod` 2 /= 0) = (h:we t)
         | (otherwise) = (we t)
