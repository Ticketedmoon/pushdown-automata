-- parameters (function) (listx) (listy)
myzipWith :: (a -> a -> a) -> [a] -> [a] -> [a]
myzipWith f [] [] = []
myzipWith f listx [] = []
myzipWith f [] listy = []
myzipWith f (h:t) (p:e) = f h p:myzipWith f t e 
