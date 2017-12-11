-- Determines if duplicates exist in a list
-- Return type if boolean, true if duplicates exist, false otherwise
-- Use guards this time, try them out
-- Also the list passed in as an argument is sorted.

dupSorted :: Eq a => [a] -> Bool
dupSorted [] = False
dupSorted [_] = False
dupSorted (h:t) | (h == head t) = True
                | otherwise = dupSorted (t)
