-- Sorted List, Remove duplicates
-- Example: [1,2,2]
nubSorted :: Eq a => [a] -> [a]
nubSorted [] = []
nubSorted [ele] = [ele]
nubSorted (top:remainder) = if(top == (head remainder)) 
                            then nubSorted remainder
                           else top:nubSorted remainder
