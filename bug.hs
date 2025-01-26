{-# LANGUAGE FlexibleContexts #-}

module Main where

import Data.Maybe (fromMaybe)

import qualified Data.Map as Map


data :: Map.Map Int String
data = Map.fromList [(1, "one"), (2, "two"), (3, "three")]

lookupKey :: Int -> Maybe String
lookupKey key = Map.lookup key data

main :: IO ()
main = do
  let result = fromMaybe "Not found" (lookupKey 4)
  putStrLn result
  let result2 = fromMaybe "Not found" (lookupKey 2)
  putStrLn result2

-- another example with more error handling

main2 :: IO ()
main2 = do
  putStrLn $ maybe "Not found" ("Value: " ++) (lookupKey 5)
  putStrLn $ maybe "Not found" ("Value: " ++) (lookupKey 2)