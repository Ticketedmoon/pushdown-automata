-- DeleteFirst function: removes first occurence of first argument in 
-- an array (2nd argument)

delFirst :: Eq a => a -> [a] -> [a]
delFirst x [] = [] 
delFirst x (head:tail) = if (x == head) 
						 then
						 tail
						 else
						 (head:(delFirst x tail))
