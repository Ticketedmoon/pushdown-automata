-- Longest Common Prefix Problem
-- Implement a solution in Haskell (Functional)
-- ["interview", "interrupt", "integrate", "intermediate"] = "inte"

lcp :: [String] -> String
lcp [] = ""
lcp [x] = x
lcp lst = let letters = map (head) lst
          in if checkEqual letters 
             then (head letters):(lcp (map (tail) lst))
          else ""

-- Compares the head of each word in the list, if they are all equal, then keep the letter attached recursively.
checkEqual :: String -> Bool
checkEqual "" = True
checkEqual (h:t)
    | (length t == 0) = True
    | (h == head t) = checkEqual t
    | (otherwise) = False
