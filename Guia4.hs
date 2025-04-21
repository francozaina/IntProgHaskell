{-Guia 4-}
{-1-}
fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0 
            | n == 1 = 1
            | otherwise = fibonacci (n-1)+ fibonacci (n-2)  
{-2-}
parteEntera :: Float -> Integer
parteEntera n | n < 1 = 0
              | otherwise = 1 + parteEntera (n-1)  
{-3-}
esDivisible :: Integer -> Integer -> Bool
esDivisible x y 
    | x == 0         = True
    | x < y          = False
    | otherwise      = esDivisible (x - y) y
{-4-}
sumaImpares :: Integer -> Integer
sumaImpares 0 = 0
sumaImpares n = (2*n - 1) + sumaImpares (n - 1)
{-5-}
medioFact :: Integer -> Integer
medioFact 0 = 1
medioFact 1 = 1
medioFact n = n * medioFact (n - 2)
{-7-}
iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n i = (n `div` (10 ^ (cantDigitos n - i))) `mod` 10  
cantDigitos :: Integer -> Integer
cantDigitos n
  | n == 0    = 1
  | otherwise = 1 + cantDigitos (n `div` 10)
{-14-}
sumaPotencias :: Integer -> Integer -> Integer -> Integer
sumaPotencias q 1 m = sumaPotenciasM q 1 m
sumaPotencias q n m = sumaPotenciasM q n m + sumaPotencias q (n-1) m 

sumaPotenciasM :: Integer -> Integer -> Integer -> Integer
sumaPotenciasM q n 1 = q ^ (n+1)
sumaPotenciasM q n m = q ^ (n+m) + sumaPotenciasM q n (m-1)
{-16-}
menorDivisor :: Integer -> Integer
menorDivisor n
  | n == 1    = 1     
  | otherwise = buscarDivisor n 2  

buscarDivisor :: Integer -> Integer -> Integer
buscarDivisor n k
  | k*k > n     = n    
  | mod n k == 0 = k   
  | otherwise   = buscarDivisor n (k+1)
{-16 B-}
esPrimo :: Int -> Bool
esPrimo n
    | n == 1    = True
    | otherwise = not (tieneDivisores n 2)
    
tieneDivisores :: Int -> Int -> Bool
tieneDivisores n k
    | k*k > n      = False
    | mod n k == 0 = True
    | otherwise    = tieneDivisores n (k + 1)


