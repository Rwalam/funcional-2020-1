main = do
    line1 <- getLine 
    line2 <- getLine
    line3 <- getLine
    let x = read line1 :: Int
    let y = read line2 :: Int
    let	z = read line3 :: Int
    print $ iguais3 x y z

iguais3 x y z
                | x == y && x == z = "3 iguais"
                | x /= y && x == z || x == y && x /= z || y == z && y /= x = "2 iguais"
                | otherwise = "nenhum"

