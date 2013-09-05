import Data.List (elemIndex)
import Data.Maybe (fromJust)

alphabet = ['a'..'z']

letterIndice l = fromJust (elemIndex l alphabet)

encryptLetter l shift = alphabet !! (((letterIndice l) + shift) `mod` 26)

cipher :: [Char] -> Int -> [Char]
cipher text shift = map (\l -> encryptLetter l shift) text
