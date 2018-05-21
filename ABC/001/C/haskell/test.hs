dir :: Int -> String
dir x =
    let i = length (filter (< x * 10) [1125,3375..34875])
    in ["N", "NNE", "NE", "ENE", "E", "ESE", "SE", "SSE", "S", "SSW", "SW", "WSW", "W", "WNW", "NW", "NNW", "N"] !! i

wind :: Int -> Int
wind x = wind' (floor $ (fromIntegral x :: Double) * 10 / 60 + 0.5 :: Int)
    where
        wind' v = length (filter (< v) [2,15,33,54,79,107,138,171,207,244,284,326,2000])

answer :: Int -> Int -> String
answer deg dis =
    let w = wind dis
        dirS = if w == 0 then "C" else dir deg
    in dirS ++ " " ++ show w

main :: IO ()
main = do
    [deg,dis] <- map read . words <$> getLine
    putStrLn $ answer deg dis
