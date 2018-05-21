import Text.Printf (printf)

-- 100/101 組み合わせ数が大きい時オーバフローしてしまう

-- 組み合わせ
c :: Integer -> Integer -> Integer
c n k = product [n-k+1 .. n] `div` product [1 .. k]

solve :: Integer -> Integer -> Integer -> Integer -> Integer -> Integer
solve n x xx yy ans
    | x == n + 1 = ans
    | (x - xx) < 0 || odd (x - xx) || (y - yy) < 0 || odd (y - yy) =
        solve n (x + 1) xx yy ans
    | otherwise =
        let px = xx + (x - xx) `div` 2
            py = yy + (y - yy) `div` 2
        in solve n (x + 1) xx yy (ans + c n x * c x px * c y py)
    where y = n - x

main :: IO ()
main = do
    [n,d] <- map read . words <$> getLine
    [x,y] <- map read . words <$> getLine
    let xx = abs (x `div` d)
        yy = abs (y `div` d)
    printf "%.15f\n" $ if x `mod` d /= 0 || y `mod` d /= 0
        then 0 :: Double
        else let ans = realToFrac (solve n 0 xx yy 0) / (4 ^ n) :: Double
             in if isNaN ans
                then 0 :: Double
                else ans
