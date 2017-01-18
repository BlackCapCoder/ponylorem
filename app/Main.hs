module Main where

import Network.Curl
import Control.Monad

main :: IO ()
main = curlGetString "http://ponyipsum.com/api/?type=pony-and-filler&start-with-lorem=1" []
   >>= mapM_ putStrLn . (read :: String -> [String]) . snd
