f :: [Int] -> [Int]
f [] = []
f [x] = []
f (e1:e2:xs) = e2 : f xs -- Fill up this Function

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
