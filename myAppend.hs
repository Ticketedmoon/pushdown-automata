-- Normally can do ++ to append two lists.
-- However, you must write a raw version of the function
myAppend :: [Int] -> [Int] -> [Int]
myAppend [] x = x
myAppend (head:tail) lst = (head:myAppend tail lst)
