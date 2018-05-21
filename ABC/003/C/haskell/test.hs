import Data.List (sort)

main :: IO ()
main = do
    [n,k] <- map read . words <$> getLine
    rs <- map read . words <$> getLine
    print $ foldl (\c r -> (c + r) / 2 :: Double) 0 $ drop (n - k) $ sort rs
