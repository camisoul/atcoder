import Control.Monad

main :: IO ()
main = do
    xs <- replicateM 3 readLn :: IO [Int]
    mapM_ (print . (\x -> length (filter (> x) xs) + 1)) xs
