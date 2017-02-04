module Main where

import Add (add)

main :: IO ()
main = putStrLn $ show $ add 3 5
