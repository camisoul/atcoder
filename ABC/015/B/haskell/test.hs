import Data.List

main :: IO ()
main = do
    n <- readLn :: IO Int
    as <- map read . words <$> getLine :: IO [Double]
    let bs = filter (/= 0) as
    print (ceiling $ sum bs / genericLength bs :: Int)
