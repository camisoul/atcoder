import Control.Monad

reverseLR :: String -> [Int] -> String
reverseLR ss [l,r] =
    let left   = take (l - 1) ss
        right  = drop r ss
        middle = drop (l - 1) $ take r ss
    in left ++ reverse middle ++ right
reverseLR ss _ = ss

main :: IO ()
main = do
    s <- getLine
    n <- readLn
    lr <- replicateM n $ map read . words <$> getLine
    putStrLn $ foldl reverseLR s lr
