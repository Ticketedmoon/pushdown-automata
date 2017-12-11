import Data.Maybe

type Stack a = [a]

emptyStack :: Stack a
emptyStack = []

push :: a -> Stack a -> Stack a
push val stack = val:stack

pop :: Stack a -> Stack a
pop (x:xs) = xs
