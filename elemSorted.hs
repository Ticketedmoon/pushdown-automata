elemSorted :: Ord a => a -> [a] -> Bool
elemSorted _ [] = False -- Item does not exist in list
elemSorted val (head:tail) = if (head < val) then elemSorted val tail 
                             else 
                                 if (head == val) then True
                                 else False

----------------------------------------------------------------

-- isSorted :: (Ord a) => [a] -> Bool
-- isSorted [] = True
-- isSorted [_] = True
-- isSorted (first:second:tail) = if(first <= second)
--                 then isSorted (second:tail)
--                 else False
