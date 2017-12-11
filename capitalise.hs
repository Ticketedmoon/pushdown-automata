import Data.Char

capitalise :: String -> String
capitalise [] = ""
capitalise (h:t) = toUpper h: capitalise t
