soma a b = a + b

miolo list = reverse . drop 1 . reverse . drop 1 $ list

iguais x y z
    | x == y && x == z = "3 iguais"
    | x /= y && x == z || x == y && x /= z || y == z && y /= x = "2 iguais"
    | otherwise = "nenhum"

maior x y z
    | x > y && x > z = x
    | y > x && y > z = y
    | z > x && z > y = z
    | otherwise = "nenhum"

sumImpar xs = sum $ filter odd xs

-- negList xs :: (Num a) => [a] -> [a]
negList xs = length [x | x <- xs , x < 0]

final a xs = drop a xs

gangorra p1 c1 p2 c2 
    | (p1 * c1 - p2 * c2) == 0 = 0
    | (p1 * c1 - p2 * c2) > 0 = -1
    | otherwise = 1

sublista a b xs = drop a $ take b xs 
                