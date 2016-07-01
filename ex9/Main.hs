f :: [Int] -> Int
f arr = sum . odds $ arr

odds :: [Int] -> [Int]
odds [] = []
odds xs = filter odd xs

-- This part handles the Input/Output and can be used as it is. Do not change or modify it.
main = do
   inputdata <- getContents
   putStrLn $ show $ f $ map (read :: String -> Int) $ lines inputdata
