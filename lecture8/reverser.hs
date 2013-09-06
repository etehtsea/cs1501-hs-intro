import System.IO

main = do
  text <- readFile "input.txt"
  writeFile "output.txt" (reverse text)
