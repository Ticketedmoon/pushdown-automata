-- Count how many times some value X appear in some list A
num :: Eq a => a -> [a] -> Int
num val [] = 0
num val lst = if (head lst == val)
              then 1 + (num val (tail lst))
              else
              (num val (tail lst))
