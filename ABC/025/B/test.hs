import Control.Monad (replicateM)

align :: Int -> Int -> Int -> Int
align d a b
    | d < a     = a
    | d > b     = b
    | otherwise = d

move :: String -> Int -> Int -> Int -> Int
move s d a b
    | s == "East" = align d a b
    | s == "West" = -(align d a b)
    | otherwise = 0

result :: Int -> String
result p
    | p < 0 = "West " ++ show (-p)
    | p > 0 = "East " ++ show p
    | otherwise = "0"

main :: IO ()
main = do
    [n,a,b] <- map read . words <$> getLine :: IO [Int]
    sd <- replicateM n $ do
        [ss,dd] <- words <$> getLine
        return (ss, read dd)
    putStrLn $ result $ foldl (\p s -> p + uncurry move s a b) 0 sd
