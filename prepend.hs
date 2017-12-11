-- Goal: takes (a list) and (a list of lists) 
-- Adds the first list to every sublist in the list of lists
prepend :: [a] -> [[a]] -> [[a]]
prepend [] a = a
prepend a [] = []
prepend lst (top:bottom) = (lst ++ top):prepend lst bottom 
