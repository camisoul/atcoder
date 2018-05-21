import Data.List

main :: IO ()
main = putStr =<< unlines . map reverse . transpose . tail . lines <$> getContents
