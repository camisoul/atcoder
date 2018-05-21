import Data.List

main :: IO ()
main = do
    ss <- getLine
    putStrLn $ concatMap (\(x:ys) -> x : show (length (x:ys))) (group ss)

