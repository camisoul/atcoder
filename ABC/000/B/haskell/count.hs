import System.Environment (getArgs)

bounds :: Int -> Double
bounds n = foldl (\r i -> r + logBase 2 (realToFrac i)) 0 [1..n]

main :: IO ()
main = do
    args <- map read <$> getArgs :: IO [Int]
    putStr $ unlines $ map (\r -> show r ++ ":" ++ (show . bounds $ r)) args
