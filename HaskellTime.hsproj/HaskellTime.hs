inc :: Int -> Int
inc x = x + 1

square :: Int -> Int
square x = x * x

showResult :: Show a => a -> String
showResult x = "The result is " ++ (show x)


showAreaOfCircle :: (Floating a, Show a) => a -> String
showAreaOfCircle r = "The area of a circle with radius " ++ show r ++ " is about " ++ (show $ pi * (r*r)) ++ "cm^2"
