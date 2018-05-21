import Data.List

main :: IO ()
main = do
    n <- readLn :: IO Int
    r <- mapM (\_ -> readLn :: IO Int) [1..n]
    print $ (sortBy (flip compare) . nub) r !! 1
