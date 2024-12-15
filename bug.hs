This Haskell code attempts to use the `length` function on an infinite list, which results in non-termination.
```haskell
import Data.List

infiniteList = [1..] 

main :: IO ()
main = do
  let len = length infiniteList
  print len
```