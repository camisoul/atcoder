normalMove :: Int -> Int
normalMove n
    | even n    = (n `div` 2) * (n `div` 2)
    | otherwise = normalMove (n - 1) + (n `div` 2)

main :: IO ()
main = do
    [r,g,b] <- map read . words <$> getLine
    print $ normalMove r + normalMove g + normalMove b
