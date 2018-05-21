solve :: Int -> String -> [String]
solve 0 s = [reverse s]
solve n s = do
    c <- "abc"
    solve (n - 1) (c:s)

main :: IO ()
main = do
    n <- readLn
    putStr $ unlines $ solve n ""
