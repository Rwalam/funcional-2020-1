--1
menorDeDois a b
    |a < b = a
    |otherwise = b

--2
menorDeTres a b c
    |a < b && a < c = a
  -- a >= b || a >= c \= a
    |b < a && b < c = b
  -- b >= a || b >= c \= b
    |otherwise = c

--3
fatorial 0 = 1
fatorial a = a * (fatorial a - 1)

--4
fib 0 = 1
fib 1 = 1
fib a = fib(a-1) + fib(a-2)

--5
--elemento :: Int -> [Int] -> Int
elemento a b = b !! a

--6
pertence a b = elem a b 

--7
total [] = 0
total (x:xs) = 1 + total xs

--8
maior [] = 0
maior [x] = x
maior (x:xs)
    | x > maior xs = x
    | otherwise = maior xs

--9
frequencia y xs = length([x | x <- xs , x == y])

--10
unico y xs 
    | frequencia y xs == 1 = "True"  
    | otherwise = "False"

--11
maioresQue y xs = [x | x <- xs , x > y]

--12
concat a b = a ++ b

--13
calda (x:xs) = xs

--14
corpo [a] = []
corpo (x:xs) = x:corpo xs

--15
--unique :: [Int] -> [Int]
unique [] = []
unique (x:xs) = x : unique (filter (/=x) xs)

unique' [] = []
unique' (x:xs)
    | x `elem` xs = unique' xs 
    | otherwise = x:unique' xs


--16 miss
menores n u = [x | x <- u, (length (maioresQue x u)) >= ((length u) - n)]

{- menores 0 (x:xs) = []
menores a (x:xs) 
    | x < menores xs
    | = menores (a-1) xs -}

--menores n xs = [m | m <- xs, m < n]
{- 
    4 [5,3,1,9,7,2] = [5,3,1,2]

    5 [5,3,1,9,7,2] = [9,7]       = 2 >= 2 v
    3 [5,3,1,9,7,2] = [5,9,7]     = 3 >= 2 v
    1 [5,3,1,9,7,2] = [5,3,9,7,2] = 5 >= 2 v
    9               ==              0 >= 2 f
    7               ==              1 >= 2 f
    2 [5,3,1,9,7,2] = [5,3,9,7]   = 4 >= 2 v


 -}

--17
alter n = intercal  [1..n] [-x | x <- [1..n]]

--18
reverso [] = []
reverso xs = (last xs): reverso (init xs)

--19
divide xs a = take a xs:drop a xs:([])
--divide xs 0 = []
--divide xs a = xs!!a:(divide xs (a-1)) --((length xs)-(a-1))
--divide :: [Int] -> Int -> ([Int],[Int])

--20   
intercal [] [] = []
intercal (x:xs) [] = x:xs
intercal [] (y:ys) = y:ys
intercal (x:xs) (y:ys) =  x:y:intercal xs ys

--21 miss
uniao xs ys= unique(xs++ys)

--22 falta um droprep
interseq [] [] = []
interseq _ [] = []
interseq [] _ = []
interseq (x:xs) ys
    | elem x ys = x:interseq xs ys  
    | otherwise = interseq xs ys

--23
sequencia a b = [b+x | x <- [0..(a-1)]]

--24
inserir a (x:xs)
    | a <= x = [a]++(x:xs)
    | otherwise = x:inserir a xs

--25
isSorted xs 
    | xs == [(head xs)..(last xs)] = True
    | otherwise = False

--26(qsort)


--27
rotesq a xs = drop (mod a (length xs)) xs++take (mod a (length xs)) xs

--28
rotdir a xs = take (mod a (length xs)) xs++drop (mod a (length xs)) xs  

--29 miss
{- contadorpos 0 _ _ = 0
contadorpos _ _ 
contadorpos a (x:xs) b 
    | a == x =  b
    | otherwise = $ b+1 contadorpos

contadorpos _ _ b
contadorpos a (x:xs) b = a == x =  b


--deixaUpper:: char -> char
deixaUpper a b
    | a `elem` [a..z] = 
    | a `elem` [A..Z] = -}

--30


--31
selec _ [] = []
selec xs (y:ys) = xs !! y: selec xs ys   

--32
palindromo xs = xs == reverso xs


--33
isPrimo n
    | length [x | x <- [1..n] ,mod n x == 0] == 2 = True
    | otherwise = False

--34
sdig 0 = 0
sdig a = (a `mod` 10) + sdig (a `div` 10) 
    

--35(bubblesort)


--36


--37


--38


--39


--40 (conjunto das partes)

--
iguais' [] [] = "0"
iguais' (x:xs) [] = "-1"
iguais' [] (y:ys) = "1"
iguais' (x:xs) (y:ys) 
                    | x > y = "1"
                    | x < y = "-1"
                    | otherwise = iguais' xs ys


drop' a (x:xs)
    | a <= 0 = (x:xs)
    | otherwise = drop' (a-1) xs
    

ordem xs = [0..(length xs)]

{- droprep [] = []
droprep (x:xs)
    | x /= xs!!((lenght xs)-1) = x:droprep xs
    | otherwise = droprep xs -}  
--droprep' [] = []
{- droprep [] = []
droprep (x:xs)
    | x == head(xs) || droprep xs = droprep xs
    | otherwise = x:droprep xs
 -}

--somaQ :: Int -> Int
somaQ n = sum[x | x <- [1..n]]


iguais [] [] = True
iguais [x] [] = False
iguais [] [y] = False
iguais (x:xs) (y:ys) = if x /= y then False else iguais xs ys