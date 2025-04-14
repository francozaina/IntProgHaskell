{-Funciones de prueba-}
doubleMe:: Integer -> Integer
doubleMe x = x + x
cuadrupleMe:: Integer -> Integer
cuadrupleMe x = x + x + x + x

{-Ejercicio 1 (Pattern matching)-}
ejercicio:: Integer -> Integer

ejercicio 1 = 8
ejercicio 4 = 131
ejercicio 16 = 16

{-Ejercicio 1 Profe-}
f:: Integer -> Integer
f x | x == 1 = 8
    | x == 4 = 131
    | x == 16 = 16

g:: Integer -> Integer
g x | x == 8 = 16
    | x == 16 = 4
    | x == 131 = 1

{-Ejercicio 2 Composicion-}
fog :: Integer -> Integer
fog x = f (g x)

gof :: Integer -> Integer
gof x = g (f x)

{-Ejercicio 3 Maximo-}

maximo :: Integer -> Integer -> Integer -> Integer
maximo x y z
    | x > y && x > z = x
    | y > x && y > z = y
    | z > x && z > y = z

{-Ejercicio 4 Suma Distintos-}

sumaDistintos :: Integer -> Integer -> Integer -> Integer
sumaDistintos x y z
    | x == y && x == z = 0
    | x == y && x /= z = z
    | y == z && z /= x = x
    | x == z && z /= y = y
    | x /= z && x /= y = x + y + z

{-Ejercicio 5 Sacar Ultimo digito-}
digitoUnidades:: Integer -> Integer
digitoUnidades x = mod x 10

{-Ejercicio 6 Sacar Ultimos digitos-}
digitoDecenas:: Integer -> Integer
digitoDecenas x = mod x 100

{-Ejercicio 7 Coordenada menor de tuplas-}
todoMenor :: (Float, Float) -> (Float, Float) -> Bool
todoMenor (x,y) (z,a)
    | x > z && a > z = True
    |otherwise = False

{-Guia 3-}
estanRelacionados:: Integer -> Integer -> Bool
estanRelacionados a b
    |mod (-a) b == 0 = True
    |otherwise = False

{-Ejercicio 6-}
bisiesto :: Integer -> Bool
bisiesto x
    | (mod x 4 == 0) || (mod x 100 /= 0 && mod x 400 == 0) = True
    | otherwise = False

{-Ejercicio 7-}

absoluto x
    |x >=0 = x
    |x <=0 = (-x)

distanciaManhattan:: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (a,b,c) (x,y,z) = absoluto(a-x) + absoluto(b-y) + absoluto(c-z)


{-Ejercicio 8-}
{-Guia 4-}
fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0 
            | n == 1 = 1
            | otherwise = fibonacci (n-1)+ fibonacci (n-2)  

parteEntera :: Float -> Integer
parteEntera n | n < 1 = 0
              | otherwise = 1 + parteEntera (n-1)  

esDivisible :: Integer -> Integer -> Bool
esDivisible x y 
    | x == 0         = True
    | x < y          = False
    | otherwise      = esDivisible (x - y) y

sumaImpares :: Integer -> Integer
sumaImpares 0 = 0
sumaImpares n = (2*n - 1) + sumaImpares (n - 1)


medioFact :: Integer -> Integer
medioFact 0 = 1
medioFact 1 = 1
medioFact n = n * medioFact (n - 2)

cantDigitos :: Integer -> Integer
cantDigitos n
  | n == 0    = 1
  | otherwise = 1 + cantDigitos (n `div` 10)

iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n i = (n `div` (10 ^ (cantDigitos n - i))) `mod` 10  







