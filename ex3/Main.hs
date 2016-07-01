module Main where
hello_worlds :: Int -> IO ()
hello_worlds x
  | x <= 1 = hello_world
  | otherwise = do
      hello_world
      hello_worlds (x-1)

hello_world :: IO ()
hello_world = putStrLn "Hello World"
-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
   n <- readLn :: IO Int
   hello_worlds n
