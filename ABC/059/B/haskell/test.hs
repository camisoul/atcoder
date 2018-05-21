cmp :: String -> String -> Ordering
cmp [] [] = EQ
cmp _  [] = GT
cmp [] _  = LT
cmp (x:xs) (y:ys) = let c = compare x y in if c == EQ then cmp xs ys else c

main :: IO ()
main = do
    [a, b] <- sequence [getLine, getLine]
    let l = compare (length a) (length b)
    let c = if l == EQ then cmp a b else l
    putStrLn $ case c of
                GT -> "GREATER"
                LT -> "LESS"
                EQ -> "EQUAL"
