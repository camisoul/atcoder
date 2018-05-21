import Control.Monad

distance :: (Double, Double) -> (Double, Double) -> Double
distance (x1, y1) (x2, y2) = sqrt ((x2 - x1) ** 2 + (y2 - y1) ** 2)

canMove :: (Double, Double) -> (Double, Double) -> Double -> Double -> (Double, Double) -> Bool
canMove (sx, sy) (gx, gy) t v (x, y) = dist1 + dist2 <= v * t
    where
        dist1 = distance (sx, sy) (x, y)
        dist2 = distance (gx, gy) (x, y)

canMoveSomewhere :: (Double, Double) -> (Double, Double) -> Double -> Double -> [(Double, Double)] -> Bool
canMoveSomewhere (sx, sy) (gx, gy) t v = any (canMove (sx, sy) (gx, gy) t v)

main :: IO ()
main = do
    [sx,sy,gx,gy,t,v] <- map read . words <$> getLine :: IO [Double]
    n <- readLn :: IO Int
    ps <- replicateM n $ do
        [x,y] <- map read . words <$> getLine :: IO [Double]
        return (x,y)
    return ()
    putStrLn $ if canMoveSomewhere (sx,sy) (gx,gy) t v ps then "YES" else "NO"
