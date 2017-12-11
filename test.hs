-- Testing some functionality in stackOverflow post.
generateNewConfigs :: [String] -> [String] -> [String]
generateNewConfigs _ [] = []
generateNewConfigs pda config@(h:t) = [x | x <- [h, "5"] ++ (generateNewConfigs pda t)

xamp :: [String]
xamp = generateNewConfigs [] ["A", "B", "C"]
