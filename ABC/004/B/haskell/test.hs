import Control.Monad

main :: IO ()
main = replicateM 4 getLine >>= putStr . unlines . reverse . map reverse
