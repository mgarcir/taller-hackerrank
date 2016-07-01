module Main where

f :: Int -> [Int] -> [Int]
f 0 arr = arr
f n [] = []
f n (x:xs) = replicateHead ++ processTail
             where replicateHead = replicate n x
                   processTail = f n xs

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
