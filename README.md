# Haskell Maybe Monad Error Handling

This repository demonstrates a common error in Haskell: improper handling of Maybe values when using functions like `Data.Map.lookup`. The initial code uses `fromMaybe` for basic error handling but lacks comprehensive error messaging. The solution refactors this using a more idiomatic approach with pattern matching for improved clarity and more robust error handling.

## Bug

The `bug.hs` file showcases the problem.  While functional, the error reporting could be more expressive.

## Solution

The `bugSolution.hs` file shows a refined approach using pattern matching which improves error handling and readability.  This approach reduces the potential for accidental errors by explicitly addressing both the "Just" and "Nothing" cases from the Maybe type.