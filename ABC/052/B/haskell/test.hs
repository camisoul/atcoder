main :: IO ()
main = do
    [_, s] <- sequence [getLine, getLine]
    print $ maximum $ scanl (\x c -> if c == 'I' then x + 1 else x - 1) (0 :: Int) s
