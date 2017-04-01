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