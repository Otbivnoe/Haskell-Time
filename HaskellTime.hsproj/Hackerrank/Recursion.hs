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