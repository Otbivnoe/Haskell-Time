module Hackerrank.Intro
where
  
-- https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list

f1 :: [Int] -> [Int]
f1 a = f1' 1 a

f1' :: Int -> [Int] -> [Int]
f1' _ [] = []
f1' i (x:xs) 
 | odd i      = f1' (i+1) xs
 | otherwise  = x : f1' (i+1) xs

-- https://www.hackerrank.com/challenges/fp-array-of-n-elements

fn :: Int -> [Int]
fn 0 = []
fn n = n : fn (n-1)

-- https://www.hackerrank.com/challenges/fp-reverse-a-list

rev :: [a] -> [a]
rev [] = []
rev (x:xs) = (rev xs) ++ [x]


-- https://www.hackerrank.com/challenges/fp-sum-of-odd-elements

f3 :: [Int] -> Int
f3 [] = 0
f3 (x:xs) 
  | odd x     = x + count
  | otherwise = 0 + count
  where count = f3 xs
  
