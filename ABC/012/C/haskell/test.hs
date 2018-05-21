main :: IO ()
main = do
    n <- readLn
    let m = 2025 - n :: Int
    mapM_ putStrLn [show x ++ " x " ++ show y | x <- [1..9], y <- [m `div` x], m `mod` x == 0 && y < 10]
