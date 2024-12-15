The solution involves avoiding the use of `length` on potentially infinite lists.  Instead, we can use techniques like taking a finite prefix or employing functions designed for lazy evaluation that don't require knowing the list's full length.
```haskell
import Data.List

infiniteList = [1..] 

main :: IO ()
main = do
  let finiteList = take 10 infiniteList
  let len = length finiteList
  print len -- Prints 10
```
This revised code takes the first 10 elements of the infinite list using `take`, creating a finite list whose length can be safely computed.