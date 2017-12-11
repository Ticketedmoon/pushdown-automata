-- Same again as dupSorted.hs
-- Check for duplicates return a boolean: True for duplicates, false otherwise
-- However, this time; the list is not sorted.
-- One solution, sort the list first and then do the same as before
dup :: Ord a => [a] -> Bool
dup [] = False
dup [_] = False
dup lst | (head (sort(lst)) == head (sort(tail lst))) = True
        | (otherwise) = dup (tail lst)

sort :: Ord a => [a] -> [a]
sort [] = [] 
sort lst = let x = (findSmallest lst)
               y = (removeSmallest lst) 
               in x:sort(y)

findSmallest :: Ord a => [a] -> a
findSmallest [x] = x
findSmallest (top:bottom) = if (top < head bottom)
                            then findSmallest (top:tail bottom)
                            else findSmallest (bottom)

removeSmallest :: Ord a => [a] -> [a]
removemaSmallest [x] = [x]
removeSmallest lst | (head lst == findSmallest (lst)) = tail lst
                   | (otherwise) = head lst:removeSmallest (tail lst)
