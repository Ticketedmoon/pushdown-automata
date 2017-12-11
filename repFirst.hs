repFirst :: Eq a => a -> a -> [a] -> [a]
repFirst _ _ [] = []
repFirst x val (head:tail) = if(head == x)
                             then [val] ++ tail 
                             else
                             (head:repFirst x val tail)
