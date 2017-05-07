-- page 48 

module Show.Models
where 
  
data Client = GovOrg String
 | Company    String Integer Person
 | Individual Person Bool
 deriving Show
 
data Person = Person String String
  deriving Show