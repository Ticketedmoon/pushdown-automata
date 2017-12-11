-- Same as before, count how many times some Value v appears in a lst A but,
-- This time, we are guarenteed the list is sorted
-- So we can stop once it reaches an element larger than value
import Data.Char

numSorted :: Ord a => a -> [a] -> Int
numSorted _ [] = 0
numSorted val lst = if (head lst > val) 
                        then 0 
                        else if (head lst == val) 
                            then 1 + (numSorted val (tail lst))
                            else (numSorted val (tail lst))
