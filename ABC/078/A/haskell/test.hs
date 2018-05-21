main :: IO ()
main = do
    [x,_,y] <- getLine
    putStrLn $ case compare x y of
                GT -> ">"
                LT -> "<"
                EQ -> "="
