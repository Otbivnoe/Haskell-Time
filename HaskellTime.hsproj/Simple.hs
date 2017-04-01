module Simple
where
  
max :: Ord a => a -> a -> a
max x y = if x > y then x else y  

signum :: (Ord a, Num a) => a -> Int
signum x 
  | x < 0  = -1
  | x == 0 = 0
  | x > 0  = 1