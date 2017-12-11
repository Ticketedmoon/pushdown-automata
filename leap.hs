data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec
             deriving (Enum, Read, Eq, Ord)
data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
             deriving (Enum, Show)
type Date = (Int, Month, Int)

-- Leap year
leap :: Int -> Bool
leap year = if (year `mod` 4 == 0 && year `mod` 100 /= 0) || (year `mod` 100 == 0 && year `mod` 400 == 0)  
            then True
            else
            False

-- mLengths
mLengths :: Int -> [Int]
mLengths year = if (leap year)
                then [31,29,31,30,31,30,31,31,30,31,30,31]
                else [31,28,31,30,31,30,31,31,30,31,30,31]

-- numDays
numDays :: Date -> Int
numDays (day, month, year) = day
                             + sum (take (fromEnum month) (mLengths year))
