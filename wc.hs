-- Iterate through a string of characters
-- if the character is upperCase, remove it, else continue
import Data.Char
wc :: String -> String
wc [] = []
wc (h:t) | isUpper h = wc t
         | otherwise = h:wc t
