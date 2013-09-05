isPal :: Eq a => [a] -> Bool
isPal lst = lst == (reverse lst)

head' :: [a] -> a
head' [] = error "empty list"
head' (x:_) = x

convert :: (Double, [Char]) -> (Double, [Char])
convert (n, "m") = (n * 1.09361, "yd")
convert (n, "L") = (n * 0.264172, "gal")
convert (n, "kg") = (n * 2.20462, "lb")
convert (n, "yd") = (n / 1.09361, "m")
convert (n, "gal") = (n / 0.264172, "L")
convert (n, "lb") = (n / 2.20462, "kg")
convert _ = error "Invalid input"
