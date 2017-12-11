data Circle = Circle Float deriving(Show)

getArea :: Circle -> Float
getArea (Circle r) = (pi) * (r * r)
