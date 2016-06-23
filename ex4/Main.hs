module Main where

main :: IO ()
main = do
  (x:s) <- fmap linesAsInts getContents
  sequence_ $ fmap print (f x s)


linesAsInts :: String -> [Int]
linesAsInts = fmap read . lines


f :: Int -> [Int] -> [Int]
f n = concat . fmap (replicate n)
