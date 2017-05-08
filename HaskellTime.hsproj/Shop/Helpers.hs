module Shop.Helpers
where

import Shop.Models

femalesCount :: GenderCount -> Integer
femalesCount (GenderCount count _) = count

malesCount :: GenderCount -> Integer
malesCount genderCount = case genderCount of 
                          GenderCount _ count -> count