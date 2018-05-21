import Control.Monad
import Data.Array.IO

data Tile = Number Int | FLOOR | WALL deriving Eq
type Maze = IOArray (Int, Int) Tile

instance Show Tile where
    show FLOOR = " ."
    show WALL  = " #"
    show (Number n) = show n

writeDistance :: Maze -> Int -> Int -> Int -> Int -> Int -> IO ()
writeDistance maze x y w h n
    | x < 1 = return ()
    | y < 1 = return ()
    | x > w = return ()
    | y > h = return ()
    | otherwise = do
        t <- readArray maze (x, y)
        case t of
            Number v -> when (v > n) $ write4Direction n
            FLOOR    -> write4Direction n
            _        -> return ()
    where
        write4Direction m = do
            writeArray maze (x, y) (Number m)
            writeDistance maze (x + 0) (y - 1) w h (m + 1)
            writeDistance maze (x + 1) (y + 0) w h (m + 1)
            writeDistance maze (x + 0) (y + 1) w h (m + 1)
            writeDistance maze (x - 1) (y + 0) w h (m + 1)
            return ()

main :: IO ()
main = do
    [r,c]    <- map read . words <$> getLine :: IO [Int]
    [sx, sy] <- map read . words <$> getLine :: IO [Int]
    [gx, gy] <- map read . words <$> getLine :: IO [Int]
    maze <- newArray ((1,1),(r,c)) FLOOR
    forM_ [1..r] $ \x -> do
        line <- getLine
        forM_ [1..c] $ \y ->
            case line !! (y - 1) of
                '.'     -> writeArray maze (x, y) FLOOR
                '#'     -> writeArray maze (x, y) WALL
                _       -> return ()
    writeDistance maze sx sy r c 0
    print =<< readArray maze (gx, gy)

--     printMaze maze r c
--
-- instance Show Tile where
--     show FLOOR = " ."
--     show WALL  = " #"
--     show (Number n)
--         | n < 10    = " " ++ show n
--         | otherwise = show n
--
-- printMaze :: Maze -> Int -> Int -> IO ()
-- printMaze maze width height =
--     forM_ [1..width] $ \x -> do
--         forM_ [1..height] $ \y -> do
--             t <- readArray maze (x, y)
--             putStr $ show t
--         putStrLn ""
