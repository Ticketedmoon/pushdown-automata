import Data.Char

wv :: String -> String
wv [] = []
wv (h:t) | ([toLower h] == "a" || [toLower h] == "e" || [toLower h] == "i" || [toLower h] == "o" || [toLower h] == "u") = (wv t)
         | (otherwise) = h:wv t
