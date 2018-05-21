import Data.List
import Data.IORef
import Data.Array.IO
import Control.Monad

-- メモリ・時間不足により0点

type Board = IOUArray (Int, Int) Int

-- いずれかの方向にアームを伸ばし、得点を取得
getMove :: Board -> (Int, Int) -> (Int, Int) -> Int -> IO Int
getMove board (x, y) (vx, vy) n = do
    writeArray board (x, y) 0
    rr <- readArray board (x + vx, y + vy)
    if rr == 1
        then (+) <$> return 1 <*> getMove board (x + vx, y + vy) (vx, vy) (n + 1)
        else return 0

getFullMove :: Board -> (Int, Int) -> IO Int
getFullMove board (x, y) = do
    r2 <- getMove board (x, y) (0,  1) 0
    r4 <- getMove board (x, y) (-1, 0) 0
    r6 <- getMove board (x, y) ( 1, 0) 0
    r8 <- getMove board (x, y) (0, -1) 0
    return $ 1 + r2 + r4 + r6 + r8

printBoard :: Board -> (Int, Int) -> IO ()
printBoard board (w, h) =
    forM_ [0 .. w + 1] $ \i -> do
        forM_ [0 .. h + 1] $ \j -> do
            r <- readArray board (i, j)
            putStr $ show r
        putStr "\n"

main :: IO ()
main = do
    [w,h] <- map read . words <$> getLine
    n <- readLn :: IO Int
    ts <- mapM (\_ -> map (read :: String -> Int) . words <$> getLine) [1..n]

    let list = permutations ts
    s <- forM list $ \ls -> do
        -- 得点とボードの初期化
        score <- newIORef 0
        board <- newArray ((0, 0),(w + 1, h + 1)) 0 :: IO Board
        forM_ [1 .. w] $ \i ->
            forM_ [1 .. h] $ \j ->
                writeArray board (i, j) 1
        -- 計算
        forM_ ls $ \s -> do
            r <- getFullMove board (s !! 0, s !! 1)
            modifyIORef score (+ r)
        -- printBoard board (w, h)
        readIORef score
    print $ maximum s
