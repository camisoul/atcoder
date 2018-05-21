import Control.Monad

-- 50/100の解答。処理が遅い

type Board = [[Int]]

-- 与えられたサイズ未満の長方形を列挙しスコアを計算
scores :: Board -> Int -> [Int]
scores board p = do
    let n = length board
    x <- [0 .. n - 1]
    y <- [0 .. n - 1]
    w <- [1 .. (n - x)]
    h <- [1 .. (n - y)]
    guard (w * h <= p)
    return $ sum [(board !! j) !! i | i <- [x .. (x + w - 1)], j <- [y .. (y + h - 1)]]

main :: IO ()
main = do
    n <- readLn :: IO Int
    board <- mapM (\_ -> map (read :: String -> Int) . words <$> getLine) [1..n]
    q <- readLn :: IO Int
    mapM_ (\_ -> do
        p <- readLn :: IO Int
        print $ maximum $ scores board p
        ) [1..q]
