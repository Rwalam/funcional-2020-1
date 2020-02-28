soma a b = a + b



iguais x y z
    | x == y && x == z = "3 iguais"
    | x /= y && x == z || x == y && x /= z || y == z && y /= x = "2 iguais"
    | otherwise = "nenhum"
