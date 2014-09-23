module FPIS where

fib :: Int -> Int
fib 1 = 0
fib 2 = 1
fib n = go 3 0 1
  where go n' l m = if n' == n then m' else go (succ n') m m'
          where m' = l + m

isSorted :: [a] -> (a -> a -> Bool) -> Bool
isSorted [] _ = True
isSorted (_:[]) _ = True
isSorted (x:y:xs) f = f x y && isSorted (y:xs) f

main :: IO ()
main = do
  print $ fib 9
  print $ isSorted [1,2,3,5,4] (<)
