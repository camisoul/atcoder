import Control.Monad

main :: IO ()
main = do
    [l,h] <- map read . words <$> getLine :: IO [Int]
    n <- readLn :: IO Int
    as <- replicateM n readLn
    putStr $ unlines $ map (show . excercise l h) as
    where
        excercise l h a
            | a < l = l - a
            | a > h = -1
            | otherwise = 0
