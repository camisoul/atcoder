import Data.Char

main :: IO ()
main = putStrLn =<< map (toUpper . head) . words <$> getLine
