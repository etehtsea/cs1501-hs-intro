main = do
  putStrLn "Enter name:" >> fmap ("Hi" ++) getLine >>= putStrLn
