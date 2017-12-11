repAll :: Eq a => a -> a -> [a] -> [a]
repAll _ _ [] = []
repAll x val (head:tail) = if(head == x)
                             then (val:repAll x val tail) 
                             else
                             (head:repAll x val tail)
