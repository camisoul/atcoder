import Control.Monad

main :: IO ()
main = do
    ts <- replicateM 3 $ do
        [s,e] <- map read . words <$> getLine :: IO [Int]
        return $ s * e `div` 10
    print $ sum ts
