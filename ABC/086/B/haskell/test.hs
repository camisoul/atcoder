import Data.List

main :: IO ()
main = do
     a <- read . delete ' ' <$> getLine :: IO Int
     putStrLn $ case find (\x -> x * x == a) [1..317] of
                    (Just _) -> "Yes"
                    Nothing  -> "No"
