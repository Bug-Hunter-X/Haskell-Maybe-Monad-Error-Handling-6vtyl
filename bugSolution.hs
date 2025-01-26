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
  case lookupKey 4 of
    Just value -> putStrLn ("Found: " ++ value)
    Nothing -> putStrLn "Not found"
  case lookupKey 2 of
    Just value -> putStrLn ("Found: " ++ value)
    Nothing -> putStrLn "Not found"

-- another example with more error handling

main2 :: IO ()
main2 = do
  let result = case lookupKey 5 of
                Just x -> "Value: " ++ x
                Nothing -> "Not found"
  putStrLn result
  let result2 = case lookupKey 2 of
                  Just x -> "Value: " ++ x
                  Nothing -> "Not found"
  putStrLn result2