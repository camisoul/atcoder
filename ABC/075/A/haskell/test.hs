{-# LANGUAGE MultiWayIf #-}

main :: IO ()
main = do
    [a, b, c] <- words <$> getLine
    putStrLn $ if | a == b -> c
                  | b == c -> a
                  | otherwise -> b
