iter :: Int -> (a -> a) -> a -> a
iter 0 f x = x
iter n f x = f(iter (n-1) f x)
