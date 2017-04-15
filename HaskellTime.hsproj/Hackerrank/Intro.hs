module Hackerrank.Intro
where
  
-- https://www.hackerrank.com/challenges/fp-list-replication

f2 :: Int -> [Int] -> [Int]
f2 _ [] = [] 
f2 n (x:xs) = (f2' n x) ++ (f2 n xs)

f2' :: Int -> Int -> [Int] 
f2' 1 m = [m]
f2' n m = m : f2' (n-1) m

-- https://www.hackerrank.com/challenges/fp-filter-array

f0 :: Int -> [Int] -> [Int]
f0 _ [] = []
f0 n (x:xs) 
  | n > x     = x : next
  | otherwise = next
  where 
    next = f0 n xs

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
  

-- https://www.hackerrank.com/challenges/fp-update-list

f4 :: (Num a, Ord a) => [a] -> [a]
f4 [] = []
f4 (x:xs)
  | x < 0     = (-1*x):next
  | otherwise = x:next 
  where next = f4 xs
  




















