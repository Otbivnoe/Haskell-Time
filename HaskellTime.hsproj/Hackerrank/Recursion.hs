module Hackerrank.Recursion
where
  
-- https://www.hackerrank.com/challenges/fp-sum-of-odd-elements

--f :: [Int] -> Int
--f arr =  


-- https://www.hackerrank.com/challenges/functional-programming-warmups-in-recursion---fibonacci-numbers

fib :: Int -> Int
fib 1 = 0
fib 2 = 1
fib n = fib (n-1) + fib (n-2) 

-- https://www.hackerrank.com/challenges/functional-programming-warmups-in-recursion---gcd

gcd' :: Integral a => a -> a -> a
gcd' n m
  | n == m    = n
  | n > m     = gcd' (n-m) m
  | n < m     = gcd' m n