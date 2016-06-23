module Main where

main :: IO ()
main = readLn >>= helloWorlds


helloWorlds :: Int -> IO ()
helloWorlds n = sequence_ $ replicate n helloWorld


helloWorld :: IO ()
helloWorld = putStrLn "Hello World"
