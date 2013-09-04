facA n = foldl (*) 1 [1..n]

facB 0 = 1
facB n = n * facB(n - 1)

facC n = product [1..n]
