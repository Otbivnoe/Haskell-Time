import Prelude hiding (length)
import Prelude hiding (enumFromTo)

-- Basic

inc :: Int -> Int
inc x = x + 1

square :: Int -> Int
square x = x * x

showResult :: Show a => a -> String
showResult x = "The result is " ++ (show x)

showAreaOfCircle :: (Floating a, Show a) => a -> String
showAreaOfCircle r = "The area of a circle with radius " ++ show r ++ " is about " ++ (show $ pi * (r*r)) ++ "cm^2"

-- Binders

pi' :: Floating a => a
pi' = 3.1415926

circleArea :: Floating a => a -> a
circleArea diameter  = pi' * radius * radius
  where
    radius = diameter / 2.0       -- local binding
    
-- Tuples

type Point = (Int, Int)

origin :: Point
origin = (0, 0)

moveUp :: Point -> Int -> Point
moveUp (x, y) distance = (x, y-distance)

-- List

list1 :: [Int]
list1 = [1,2,3,4,5]

list2 :: [Int]
list2 = [1..5]

list3 :: [Int]
list3 = [1,3..16] -- odd numbers up to 16

-- Recursion

natSum :: Int -> Int
natSum 0 = 0
natSum n 
  | n > 0 = n + natSum (n-1)
  | otherwise = error "Input value can't be nagative"
  
-- List

tail' :: [a] -> [a]
tail' (_:xs) = xs

head' :: [a] -> a
head' (x:_) = x

allSquares :: (Num a) => [a] -> [a]
allSquares [] = []
allSquares (x:xs) = x*x : allSquares xs

(+++) :: [a] -> [a] -> [a]
[] +++ ys = ys
(x:xs) +++ ys = x : (xs +++ ys)

-- Exercises

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length xs

fact :: Int -> Int
fact 1 = 1
fact n = n * fact (n-1)

enumFromTo' :: Int -> Int -> [Int]
enumFromTo' n m 
  | n <= m     = n : enumFromTo' (n+1) m
  | otherwise  = [] 
  
countOdds :: [Int] -> Int
countOdds [] = 0
countOdds (x:xs) 
  | odd x      = 1 + count
  | otherwise  = 0 + count
  where 
    count = countOdds xs
  
removeOdd :: [Int] -> [Int]
removeOdd [] = []
removeOdd (x:xs)
  | odd x     = [] ++ removeOdd xs 
  | otherwise = x : removeOdd xs


