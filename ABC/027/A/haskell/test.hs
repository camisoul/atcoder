{-# LANGUAGE MultiWayIf #-}

main :: IO ()
main = do
    [x,y,z] <- words <$> getLine
    putStrLn $ if | x == y -> z
                  | x == z -> y
                  | y == z -> x
