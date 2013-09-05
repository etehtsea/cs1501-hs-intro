import Data.Char (ord, chr)

zipTogether :: [a] -> [b] -> [(a,b)]
zipTogether (x:xs) (y:ys) = (x, y) : (zipTogether xs ys)
zipTogether _ _ = []
