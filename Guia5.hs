{-Ejercicio 1-}
{-1-}
longuitud :: [t] -> Integer
longuitud [] = 0
longuitud (x:xs) = 1 + longuitud xs
{-2-}
ultimo :: [t] -> t
ultimo [x] = x 
ultimo (_:xs) = ultimo xs  
{-3-}
principio :: [t] -> [t]
principio [x,y] = [x]
principio (x:xs) = x : principio xs
{-4-}
reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = reverso (xs) ++ [x]
{-Ejercicio 2-}
{-1-}
pertenece :: (Eq t) => t -> [t] -> Bool
pertenece n [] = False
pertenece n (x:xs) | n == x = True
    |otherwise = pertenece n xs
{-2-}
todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = False
todosIguales [x] = True
todosIguales (x:y:xs) | x == y = todosIguales (y:xs)
    |otherwise = False
{-3-}
todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos [] = True
todosDistintos (x:xs) | pertenece x xs = False
                      | otherwise = todosDistintos xs
{-4-}
hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos [] = False
hayRepetidos [x] = False
hayRepetidos (x:xs) | pertenece x xs = True
                    | otherwise = hayRepetidos xs
{-5-}
quitar :: (Eq t) => t -> [t] -> [t]
quitar n [] = []
quitar n (x:xs) | n == x = xs
                |otherwise = x : quitar n xs
{-6-}                
quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos _ [] = []
quitarTodos n (x:xs) | n == x = quitarTodos n xs
                     | otherwise = x : quitarTodos n xs
{-7-}                     
eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) | pertenece x xs = x : eliminarRepetidos (quitarTodos x xs)
                         | otherwise = x : eliminarRepetidos xs


                