module Main where
import CheckPassword (strong)

-- |This is the main function
main :: IO()
main = do
  putStrLn "Enter your password:"
  pw <- getLine
  putStrLn ("Your password is " ++ (strength pw))
  where
    strength pw = if (strong pw) then "strong" else "weak"
