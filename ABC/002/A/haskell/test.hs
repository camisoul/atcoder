main :: IO ()
main = do
    [a,b] <- map read . words <$> getLine
    print (max a b :: Int)
