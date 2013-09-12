module CheckPassword (strong) where
import Data.List (any, all)
import Data.Char (isUpper, isLower, isDigit)

-- |The 'strong' function checks password for strength
strong :: String -> Bool
strong pw = all (\c -> c pw) [any isLower, any isUpper, any isDigit, longer 15]
  where longer n pw = length pw > n
