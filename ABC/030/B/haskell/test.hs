import Data.Fixed

main :: IO ()
main = do
    [n,m] <- map read . words <$> getLine :: IO [Double]
    let x = n `mod'` 12 * 30 + m * 0.5
        y = m * 6
        d = abs (x - y)
    print $ if d > 180 then 360 - d else d
