-- February
data Day = Sun | Mon | Tue | Wed | Thu | Fri | Sat 
data Month = Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec

leap :: Int -> Bool
leap year = if ((year `mod` 400) == 0 || (year `mod` 4 == 0) && (year `mod` 100 /= 0))
            then True
            else False

mLengths :: Int -> [Int]
mLengths year = if (leap year) 
                then [31,29,31,30,31,30,31,31,30,31,30,31] 
                else [31,28,31,30,31,30,31,31,30,31,30,31]                          
