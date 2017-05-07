-- page 48 

module Show.Models
where 
  
data Client = GovOrg     String
            | Company    String Integer Person
            | Individual Person Bool
 deriving Show
 

data Gender = Male | Female | Unknow
  deriving Show

data Person = Person String String Gender
  deriving Show
 

data TimeMachine = TimeMachine Manufacturer Integer Bool Double
  deriving Show
  
data Manufacturer = Manufacturer String
  deriving Show