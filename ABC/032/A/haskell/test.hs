main :: IO ()
main = do
    [a,b,n] <- map read . lines <$> getContents :: IO [Int]
    let l = lcm a b
    print $ l * ((n + l - 1) `div` l)
