triangle :: (Double, Double) -> (Double, Double) -> (Double, Double) -> Double
triangle (xa,ya) (xb,yb) (xc,yc) =
    let a = xb - xa
        b = yb - ya
        c = xc - xa
        d = yc - ya
    in abs (a * d - b * c) / 2

main :: IO ()
main = do
    [xa,ya,xb,yb,xc,yc] <- map read . words <$> getLine
    print $ triangle (xa,ya) (xb,yb) (xc,yc)
