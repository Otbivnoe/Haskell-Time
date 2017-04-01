module Simple
where
  
max :: Ord a => a -> a -> a
max x y = if x > y then x else y  